package com.bb.pj.sys.util;

import java.util.List;

import com.bb.pj.common.vo.PageObject;
import com.bb.pj.sys.entity.Syslog;

public class PageUtil {
	private static int pageSize=3;
	public static int getPageSize() {
		return pageSize;
	}
	public static int getStartIndex(Integer pageCurrent) {
		return (pageCurrent-1)*pageSize;
	}
	public static  <T>PageObject<T> f(Integer pageCurrent,
			Integer	pageSize,Integer rowCount,
			List<T> records){
		 PageObject<T> pageObject=new PageObject<>();
		  //4.2)封装数据
		  pageObject.setPageCurrent(pageCurrent);
		  pageObject.setPageSize(pageSize);
		  pageObject.setRowCount(rowCount);
		  pageObject.setRecords(records);
       pageObject.setPageCount((rowCount-1)/pageSize+1);
		  //5.返回封装结果
		  return pageObject;
	}

}
