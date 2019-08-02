package com.bb.pj.sys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.bb.pj.sys.entity.SysRole;
import com.bb.pj.sys.vo.CheckBox;
import com.bb.pj.sys.vo.SysRoleMenuVo;
@Mapper
public interface SysRoleDao {
	List<SysRole> findPageObjects(
            @Param("name")String name,
			@Param("startIndex")Integer startIndex,
			@Param("pageSize")Integer pageSize);
	/**
	 * 查询记录总数
	 * @return
	 */
	int getRowCount(@Param("name")String name);
	int deleteObject(Integer id);
	int insertObject(SysRole entity);
	
	SysRoleMenuVo findObjectById(Integer id);
	int updateObject(SysRole entity);
	List<CheckBox> findObjects();

}

