package com.bb.pj.sys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.bb.pj.sys.entity.Syslog;

@Mapper
public interface SysLogDao {
	@Delete("delete from sys_logs where id=#{id}")
	int deleteObject(Integer id);
	
	int deleteObjects(@Param("ids")Integer...
		ids);
	
	int getRowCount(@Param("username")String username);
	
	List<Syslog> findPageOBjects(@Param("username")String username,
			@Param("startIndex")Integer startIndex,
			@Param("pageSize")Integer pageSize);

	void insertObject(Syslog log);
}
