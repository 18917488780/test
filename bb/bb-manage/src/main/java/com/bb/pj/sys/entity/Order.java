package com.bb.pj.sys.entity;

import java.util.Date;

import lombok.Data;
import lombok.ToString;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class Order {
	private String id;//订单id
	private Integer goodId;//商品id
	private String goodName;//商品名
	private Integer buyerId;//用户id
	private Integer price;//单价
	private Integer number;//商品数量
	private String buyerName;//用户名
	private String	buyerAddr;//客户地址
	private Integer state;//发货状态
	private String company;//物流
	private String	trackNumber;//快递单号
	private Integer stateType ;//订单提交状态码
}

