package com.bb.service;

import com.bb.pojo.User;

//定义中立的第三方接口
public interface DubboUserService {
	String userExist(String username);

	void zhuce(User user);

	String remote(User user);

	String deng(User user);

	User query(String token);
}
