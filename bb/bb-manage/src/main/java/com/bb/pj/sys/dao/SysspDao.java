package com.bb.pj.sys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.bb.pj.sys.entity.Syslog;
import com.bb.pj.sys.entity.Syssp;

@Mapper
public interface SysspDao {
	
	List<Syssp> findPageOBjects(@Param("username")String username,
			@Param("startIndex")Integer startIndex,
			@Param("pageSize")Integer pageSize);
	int getRowCount(@Param("username")String username);
	
	int findkucun(@Param("id")Integer id );
	
	 void updateSp(@Param("spid")Integer spid,@Param("num")Integer num); 
	 //修改订单信息
	
	@Delete("delete from tang_05 where id=#{id}")
	void deleteById(Integer id);
}
