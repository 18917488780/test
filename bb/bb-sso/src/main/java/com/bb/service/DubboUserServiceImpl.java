package com.bb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;

import com.alibaba.dubbo.config.annotation.Service;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.bb.dao.UserMapper;
import com.bb.pojo.User;
import com.bb.util.ObjectMapperUtil;

import redis.clients.jedis.JedisCluster;

@Service(timeout = 3000)
public class DubboUserServiceImpl implements DubboUserService{
	@Autowired
	private UserMapper userMapper;
	@Autowired(required = false)
	private JedisCluster jedis;
	@Override
	public String userExist(String username) {
		QueryWrapper<User> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("username", username);
		int count = userMapper.selectCount(queryWrapper);
		if(count > 0)
			return "用户名已存在";
		return "请输入密码";
	}
	@Override
	public void zhuce(User user) {
		String pwd = DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
		user.setMoney(10000d).setPassword(pwd);
		userMapper.insert(user);
	}
	@Override
	public String remote(User user) {
		String pwd = DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
		user.setPassword(pwd);
		QueryWrapper<User> queryWrapper = new QueryWrapper<>(user);
		Integer count = userMapper.selectCount(queryWrapper);
		if(count == 1)
			return "请登录";
		return "用户名或密码输入错误";
	}
	@Override
	public String deng(User user) {
		String pwd = DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
		user.setPassword(pwd);
		QueryWrapper<User> queryWrapper = new QueryWrapper<>(user);
		User userDB = userMapper.selectOne(queryWrapper);
		String token = null;
		if(userDB != null) {
			userDB.setPassword("**********");
			String tokenTemp = "BB_TICKET" + System.currentTimeMillis() + user.getUsername();
			tokenTemp = DigestUtils.md5DigestAsHex(tokenTemp.getBytes());
			jedis.setex(tokenTemp, 3600 * 7 *24, ObjectMapperUtil.toJson(userDB));
			token = tokenTemp;
		}
		return token;
	}
	@Override
	public User query(String token) {
		String json = jedis.get(token);
		return ObjectMapperUtil.toObject(json, User.class);
	}

}
