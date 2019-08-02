package com.bb.sys.service;

import java.util.List;
import java.util.Map;

import com.bb.pj.common.vo.Node;
import com.bb.pj.sys.entity.SysMenu;


public interface SysMenuService {
	List<Map<String,Object>> findObjects();

	List<Node> findZtreeMenuNodes();

	int saveObject(SysMenu entity);

	int updateObject(SysMenu entity);
}
