package com.bb.service;

import java.util.List;

import com.bb.pojo.Gwc;

//定义中立的第三方接口
public interface DubboCartService {

	int addCart(Gwc cart);

	List<Gwc> showCart(Integer id);

	int delete(Gwc cart);

	void updateNum(Gwc cart);

	Gwc selectById(Integer userid, Integer id);

}
