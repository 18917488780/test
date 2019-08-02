package com.bb.pj.common.vo;

import java.util.List;

/**
 * 负责封装业务层当前页记录以及分页信息
 * @author Administrator
 *
 * @param <T>
 */
public class PageObject<T> {
	private static final long serialVersionUID = 6780580291247550747L;//类泛型
    /**当前页的页码值*/
	private Integer pageCurrent=1;
    /**页面大小*/
    private Integer pageSize=3;
    /**总行数(通过查询获得)*/
    private Integer rowCount=0; 
    /**总页数(通过计算获得)*/
    private Integer pageCount=0;
    /**当前页记录*/
    private List<T> records;
	public Integer getPageCurrent() {
		return pageCurrent;
	}
	public void setPageCurrent(Integer pageCurrent) {
		this.pageCurrent = pageCurrent;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getRowCount() {
		return rowCount;
	}
	public void setRowCount(Integer rowCount) {
		this.rowCount = rowCount;
	}
	
	public Integer getPageCount() {
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
	   this.pageCount = pageCount;
	}
	public List<T> getRecords() {
		return records;
	}
	public void setRecords(List<T> records) {
		this.records = records;
	} 
}
