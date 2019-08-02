package com.bb.intercept;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import com.bb.pojo.User;
import com.bb.util.ObjectMapperUtil;
import com.bb.util.UserThreadLocal;
import redis.clients.jedis.JedisCluster;
// HandlerInterceptor 拦截器接口
/*
 * spring4的版本, HandlerInterceptor必须重写三个方法
 * spring5的版本, HandlerInterceptor都有默认值
 */
@Component
public class UserInterceptor implements HandlerInterceptor{
	/**
	 * Boolean:
	 * 	true:表示放行
	 * 	false:表示拦截    一般配合重定向使用
	 * 业务实现步骤
	 * 	1.获取用户Cookie中的token消息
	 * 	2.校验数据是否有效
	 * 	3.校验redis中是否有数据
	 *  如果上述操作准确无误, 返回true
	 *  否则return false 重定向到登录界面
	 */
	@Autowired(required = false)
	private JedisCluster jedis;
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Cookie[] cookies = request.getCookies();
		String token = null;
		if(cookies.length != 0) 
			for(Cookie c : cookies) {
				if("BB_TICKET".equals(c.getName())) {
					token = c.getValue();
					break;
				}
			}
		if(!StringUtils.isEmpty(token)) {
			String userJSON = jedis.get(token);
			if(!StringUtils.isEmpty(userJSON)) {
				User user = ObjectMapperUtil.toObject(userJSON, User.class);
				//方法一: 将用户信息存到request域中
				request.setAttribute("BB_USER", user);
				//方法二: 使用ThreadLocal
				UserThreadLocal.set(user);
				return true;
			}
		}
		response.sendRedirect("/denglu_list.html");
		return false;
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		UserThreadLocal.remove();
	}
}









