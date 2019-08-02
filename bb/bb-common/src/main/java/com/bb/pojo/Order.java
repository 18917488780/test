package com.bb.pojo;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;
import lombok.experimental.Accessors;
@Data
@Accessors(chain = true)
public class Order implements Serializable {
	private static final long serialVersionUID = 2969786997372620950L;
	private String id;
	private String goodName;
	private Integer goodId;
	private Double price;
	private Integer number;
	private String buyerName;
	private Integer buyerId;
	private String buyerAddr;
	private Integer state;
	private String company;
	private String trackNumber;
	private Integer stateType;
	private Date createdTime;
}
