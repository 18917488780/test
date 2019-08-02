package com.bb.pj.sys.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.bb.pj.common.vo.Node;
import com.bb.pj.sys.entity.SysMenu;
@Mapper
public interface SysMenuDao {
	/*
	 * 查询所有菜单信息 
	 * 1.一行菜单信息映射为一个map对象(key为字段名) 
	 * 2.多行记录会对应多个map,然后将map存在List集合中
	 */
	@Select("select c.*,p.name parentName" + 
			" from sys_menus c left join sys_menus p" + 
			" on c.parentId=p.id ")
	List<Map<String,Object>> findObjects();
	
	@Select("select id,name,parentId from sys_menus")
			
	List<Node> findZtreeMenuNodes();
	int insertObject(SysMenu entity);
	
	int updateObject(SysMenu entity);

	List<Integer> findMenuIdsByRoleIds(
			@Param("roleIds")Integer[] roleIds);
	List<String> findPermissions(
			@Param("menuIds")
			Integer[] menuIds);
}
