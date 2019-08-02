package com.bb.service;

import com.bb.pojo.Addr;

public interface DubboOrderService {

	void saveAddr(Addr addr);

	String saveOrder(Integer[] array, Integer id);
	
}

