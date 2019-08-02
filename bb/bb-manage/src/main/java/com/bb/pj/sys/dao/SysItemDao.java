package com.bb.pj.sys.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.bb.pojo.Item;
@Mapper
public interface SysItemDao extends BaseMapper<Item>{
	@Select("select * from tang_02 where id = #{id}")
	List<Map<String, Object>> showList1(Integer id);
	@Select("select * from tang_03 where id = #{id}")
	List<Map<String, Object>> showList2(Integer id);
	@Select("select * from tang_04 where id = #{id}")
	List<Map<String, Object>> showList3(Integer id);
	
}
