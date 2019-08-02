package com.bb.redis;
import java.lang.reflect.Method;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import com.bb.ano.Cache_Add;
import com.bb.ano.Cache_Find;
import com.bb.ano.Cache_Update;
import com.bb.enu.KEY_ENUM;
import com.bb.util.ObjectMapperUtil;
import redis.clients.jedis.JedisCluster;
@Component
@Aspect
public class RedisAspect {
	@Autowired(required = false)
	private JedisCluster jedis;
	@Around("@annotation(cache)")
	public Object around(ProceedingJoinPoint jp,Cache_Find cache) {
		String key = getKey(jp, cache);
		String value = jedis.get(key);
		Object result = null;
		if(StringUtils.isEmpty(value)) {
			try {
				result = jp.proceed();
			} catch (Throwable e) {
				e.printStackTrace();
			}
			value = ObjectMapperUtil.toJson(result);
			int seconds = cache.seconds();
			if(seconds == 0)
				jedis.set(key, value);
			else
				jedis.setex(key, seconds, value);
			System.out.println("查询数据库");
		}else {
			Class<?> targetClass = getClass(jp);
			result = ObjectMapperUtil.toObject(value, targetClass);
			System.out.println("查询redis");
		}
		return result;
	}
	
	@Around("@annotation(cache)")
	public Object around(ProceedingJoinPoint jp,Cache_Update cache) {
		try {
			jp.proceed();
			Object[] args = jp.getArgs();
			Object o1 = args[0];
			@SuppressWarnings("rawtypes")
			Class c = o1.getClass();
			long id = getId(o1, c);
			String className = c.getName();
			String key = className + "_" + id;
			jedis.set(key, ObjectMapperUtil.toJson(o1));
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return null;
 	}
	@Around("@annotation(cache)")
	public Object around(ProceedingJoinPoint jp,Cache_Add cache) {
		try {
			jp.proceed();
			Object[] args = jp.getArgs();
			Object o1 = args[0];
			Class c = o1.getClass();
			long id = getId(o1, c);
			String className = c.getName();
			String key = className + "_" + id;
			jedis.set(key, ObjectMapperUtil.toJson(o1));
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return null;
 	}
	public String getKey(ProceedingJoinPoint jp, Cache_Find cache) {
		String key = null;
		KEY_ENUM key_Type = cache.key_Type();
		if(key_Type.equals(KEY_ENUM.EMPTY)) 
			return key;
		key = jp.getSignature().getName();
		return key + jp.getArgs()[0];
	}
	public Class<?> getClass(ProceedingJoinPoint jp) {
		MethodSignature signature = (MethodSignature)jp.getSignature();
		System.out.println(signature);
		return signature.getReturnType();
	}
	public long getId(Object arg, Class c) throws Exception {
		Method[] methods = c.getMethods();
		Method m = null;
		for(Method method : methods) {
			String name = method.getName().toLowerCase();
			if(name.contains("id") && name.contains("get")) {
				m = method;
				break;
			}
		}
		return (long)m.invoke(arg);
	}
}











