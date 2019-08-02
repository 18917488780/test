package com.bb.pj.sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.bb.pj.common.vo.JsonResult;
import com.bb.pj.common.vo.PageObject;
import com.bb.pj.sys.entity.SysKc;
import com.bb.pojo.Item;
import com.bb.sys.service.SysKcService;


@Controller
@RequestMapping("/kc/")
public class SysKcController {
	
	@Autowired
	private SysKcService sysKcService;
	
	//库存页面呈现
	@RequestMapping("doKcListUI")
	public String doRoleListUI(){
		return "sys/kc_list";
	}
	//查询页面方法
	@RequestMapping("doFindPageObjects")
	@ResponseBody
	public JsonResult doFindPageObjects(
			String name,Integer pageCurrent){
		PageObject<SysKc> pageObject=
				sysKcService.findPageObjects(name,pageCurrent);
		return new JsonResult(pageObject);
	}
	//删除操作
	@ResponseBody
	@RequestMapping("doDeleteObject")
	public JsonResult doDeleteObject(Integer id) {
		sysKcService.deleteObject(id);
		return new JsonResult("delete OK");
	}
	//添加页面呈现
	@RequestMapping("doKcEditUI")
	public String doKcEditUI(){
		return "sys/kc_edit";
	}
	
	//添加保存操作
	@RequestMapping("doSaveObject")
	@ResponseBody
	public JsonResult doSaveObject(SysKc entity){
		sysKcService.saveObject(entity);
		return new JsonResult("save ok");    
	}
	
	@RequestMapping("doUpdateObject")
	@ResponseBody
	public JsonResult doUpdateObject(Item entity){
		sysKcService.updateObject(entity);
		return new JsonResult("save ok");    
	}
	
	@RequestMapping("doRecover")
	@ResponseBody
	public JsonResult doRecover(Integer id){
		Item item = sysKcService.doRecover(id);
		return new JsonResult(item);    
	}
	
	
	
}
