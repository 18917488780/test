package com.bb.pj.sys.entity;

import java.io.Serializable;

import lombok.Data;

@Data
public class Syssp implements Serializable {
	private static final long serialVersionUID = 5124830200917154440L;
	Integer id;
	String name;
	Integer num;
	Double price;
	Double totalprice;
	Integer nu;
	Integer spid;
}
