package com.bb.pj.sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bb.pj.common.vo.JsonResult;
import com.bb.pj.common.vo.PageObject;
import com.bb.pj.sys.entity.Syslog;
import com.bb.sys.service.SysLogService;

@Controller
@RequestMapping("/log/")
public class SysLogController {
	@Autowired
	private SysLogService sys;
	@RequestMapping("doDeleteObjects")
	@ResponseBody
	public JsonResult doDeleteObjects(Integer... ids) {
		int rows = sys.deleteObjects(ids);
		
		return new JsonResult("rows="+rows);
	}
	@RequestMapping("doLogListUI")
	public String doLog() {
		return "sys/log_list";
	}
	
	@RequestMapping("doFindPageObject")
	@ResponseBody
	public JsonResult doFindPageObjects(
			String username,Integer pageCurrent){
		PageObject<Syslog> pageObject = sys.findPageObjects(username,pageCurrent);
		return new JsonResult(pageObject);
	}
}
