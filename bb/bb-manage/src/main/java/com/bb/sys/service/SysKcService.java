package com.bb.sys.service;

import com.bb.pj.common.vo.PageObject;
import com.bb.pj.sys.entity.SysKc;
import com.bb.pojo.Item;



public interface SysKcService {
	/**页面显示操作*/
	PageObject<SysKc> findPageObjects(
			String name,Integer pageCurrent);
	/**删除操作*/
	int  deleteObject(Integer id);

	/**添加操作*/
	int saveObject(SysKc entity);

	Item doRecover(Integer id);
	
	int updateObject(Item entity);
}
