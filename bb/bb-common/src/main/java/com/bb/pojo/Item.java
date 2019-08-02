package com.bb.pojo;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
@TableName("tang_01")
public class Item implements Serializable {
	private static final long serialVersionUID = -7848368525588209440L;
	@TableId
	private Integer id;
	private String name;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private String str1;
	private String str2;
	private Double tree1;
	private Integer tree2;
	private Double tree3;
	private Double tree4;
	private String str3;
	private String str4;
	private String str5;
	private String str6;
	private String str7;
	private Integer num;
	private Date createdTime;
}
