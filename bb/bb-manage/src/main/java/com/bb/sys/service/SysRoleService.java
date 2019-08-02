package com.bb.sys.service;

import java.util.List;

import com.bb.pj.common.vo.PageObject;
import com.bb.pj.sys.entity.SysRole;
import com.bb.pj.sys.vo.CheckBox;
import com.bb.pj.sys.vo.SysRoleMenuVo;

public interface SysRoleService {
	 PageObject<SysRole> findPageObjects(
			 String name,Integer pageCurrent);

	int deleteObject(Integer id);

	int saveObject(SysRole entity, Integer[] menuIds);

	SysRoleMenuVo findObjectById(Integer id);

	int updateObject(SysRole entity, Integer[] menuIds);

	List<CheckBox> findObjects();
	 
	 
}

