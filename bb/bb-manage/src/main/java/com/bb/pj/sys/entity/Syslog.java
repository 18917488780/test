package com.bb.pj.sys.entity;
/**
 * 借助此对象封装用户的行为信息
 */
import java.io.Serializable;
import java.util.Date;

import lombok.Data;
@Data
public class Syslog implements Serializable {
	private Integer id;
	//用户名
	private String username;
	//用户操作
	private String operation;
	//请求方法
	private String method;
	//请求参数
	private String params;
	//执行时长(毫秒)
	private Long time;
	//IP地址
	private String ip;
	//创建时间
	private Date createdTime;
	
}
