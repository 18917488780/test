package com.bb.sys.service;

import java.util.List;

import com.bb.pj.common.vo.PageObject;
import com.bb.pj.sys.entity.Syslog;
import com.bb.pj.sys.entity.Syssp;
import com.bb.pojo.Item;

public interface SysspService {
	PageObject<Syssp> findPageObjects(
			String username,Integer pageCurrent);
	
	  void updateSp(Integer spid,Integer num,
			  String wuliugs,String danhao, Integer
	  id);

	List<Item> findItems();
	 
}
