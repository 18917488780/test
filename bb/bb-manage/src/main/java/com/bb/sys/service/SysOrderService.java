package com.bb.sys.service;

import java.util.List;

import com.bb.pj.common.vo.PageObject;
import com.bb.pj.sys.entity.Order;

public interface SysOrderService {
	//根据订单id修改发货状态sendType
	//public Integer byUpdateId(Integer id);
	//根据订单状态查询所有订单信息
	public int insertObjects(Integer...ids);
	public PageObject<Order> findPages(String nickname,Integer pageCurrent);
}
