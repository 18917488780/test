package com.bb.pj.sys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.bb.pj.sys.entity.SysRole;
import com.bb.pj.sys.entity.SysUser;
import com.bb.pj.sys.vo.SysUserDeptVo;
@Mapper
public interface SysUserDao {
	int insertObject(SysRole entity);
	List<SysUserDeptVo> findPageObjects(
			@Param("username") String username,
			@Param("startIndex")Integer startIndex,
			@Param("pageSize")Integer pageSize);
	
	int getRowCount(@Param("username") String username);
	int validById(
			@Param("id")Integer id,
			@Param("valid")Integer valid,
			@Param("modifiedUser")String modifiedUser);
	/**
	 * 负责将用户信息写入到数据库
	 * @param entity
	 * @return
	 */
	int insertObject(SysUser entity);



	/**
	 * 负责将用户与角色的关系数据写入到数据库
	 * @param userId 用户id
	 * @param roleIds 多个角色id
	 * @return
	 */
	int insertObjects(
			@Param("userId")Integer userId,
			@Param("roleIds")Integer[]roleIds);
	SysUserDeptVo findObjectById(Integer id);
	int updateObject(SysUser entity);
	@Select("select * from sys_users  where username=#{username}")
	SysUser findUserByUserName(String username);
}
