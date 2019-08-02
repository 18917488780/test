package com.bb.pj.sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bb.pj.common.vo.JsonResult;
import com.bb.pj.common.vo.PageObject;
import com.bb.pj.sys.entity.Syssp;
import com.bb.sys.service.SysspService;

@Controller
@RequestMapping("/sp/")
public class SpController {
	@Autowired
	private SysspService sys;
	@RequestMapping("dospListUI")
	public String doLog() {
		return "sys/sp_list";
	}
	@RequestMapping("doFindPageObject")
	@ResponseBody
	public JsonResult doFindPageObjects(
			String username,Integer pageCurrent){
		PageObject<Syssp> pageObject = sys.findPageObjects(username,pageCurrent);
		return new JsonResult(pageObject);
	}
	
	
	  @RequestMapping("doUpdateSp")
	  
	  @ResponseBody public JsonResult doUpdateSp( Integer spid,Integer num,String
	  wuliugs,String danhao, Integer id){
		  System.out.println(spid);
	   sys.updateSp( spid, num,
	  wuliugs, danhao,id);
	  System.out.println("wuliugs:"+wuliugs+"danhao:"+danhao);
	  return new JsonResult("提交成功"); }
	 
}
