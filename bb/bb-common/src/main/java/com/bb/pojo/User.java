package com.bb.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
@TableName("bb_user")
public class User implements Serializable{
	private static final long serialVersionUID = -5501094224842778575L;
	@TableId(type = IdType.AUTO)
	private Integer id;
	private String username;
	private String password;
	private Double money;
}
