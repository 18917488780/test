package com.bb.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import lombok.Data;
import lombok.experimental.Accessors;
@Data
@Accessors(chain = true)
@TableName("tang_gwc")
public class Gwc implements Serializable{
	private static final long serialVersionUID = -4433708281698206063L;
	@TableId
	private Integer id;
	@TableId
	private Integer userId;
	private Integer num;
	private String img;
	private String str1;
	private Double tree;
}
