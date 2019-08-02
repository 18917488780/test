package com.bb.pj.sys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bb.pj.sys.entity.Order;


@Mapper
public interface SysOrderDao {
	
	//public Integer byUpdateId(Integer id);
	//添加订单信息到订单池
	public int insertObject(Order entity);
	
	//根据订单状态查询所有订单信息
	/*
	 * @Select("select * from product") List<Order> findAll();
	 */
	List<Order> findAllByIds(@Param("ids")Integer...ids);
	
	//做分页查询
	public List<Order> findPages(@Param("nickName")String nickname,
			@Param("startIndex")Integer startIndex,
			@Param("pageSize")Integer pageSize);
	
	//查询所有记录数
	public int getRowCount(@Param("nickName")String nickname);
	void updateOrder(@Param("id")Integer id,@Param("wuliugs")String wuliugs,
			 @Param("danhao")String danhao);
	
	
	public void updateZT(@Param("ids")Integer... ids);
}
