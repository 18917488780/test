package com.bb.pj.sys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.bb.pj.sys.entity.SysKc;
import com.bb.pj.sys.entity.SysRole;


@Mapper
public interface SysKcDao {

	//显示页面
	List<SysKc> findPageObjects(
            @Param("name")String name,
			@Param("startIndex")Integer startIndex,
			@Param("pageSize")Integer pageSize);
	
	/**
	 * 查询记录总数
	 * @return
	 */
	int getRowCount(@Param("name")String name);
	
	/**删除操作*/
	int deleteObject(Integer id);
	
	/**添加商品操作*/
	int insertObject(SysKc entity);
	
}
