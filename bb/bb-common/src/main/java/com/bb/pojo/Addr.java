package com.bb.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import lombok.Data;
import lombok.experimental.Accessors;
@TableName("biao_addre")
@Data
@Accessors(chain = true)
public class Addr implements Serializable {
	private static final long serialVersionUID = -3174682574554915593L;
	@TableId
	private Integer userId;
	private String province;
	private String city;
	private String area;
	private String code;
	private String address;
	private String name;
	private String phone;
}
