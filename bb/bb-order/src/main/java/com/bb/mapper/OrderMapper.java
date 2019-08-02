package com.bb.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.bb.pojo.Order;

@Mapper
public interface OrderMapper {
	@Insert("insert into order1 values(#{id},#{goodName},#{goodId},#{price},#{number},#{buyerName},#{buyerId},"
			+ "#{buyerAddr},#{state},null,null,null,#{createdTime})")
	void saveOrder(Order order);
	
}
