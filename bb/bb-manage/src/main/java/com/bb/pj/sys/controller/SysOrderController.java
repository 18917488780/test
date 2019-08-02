package com.bb.pj.sys.controller;

import java.lang.reflect.Array;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bb.pj.common.vo.JsonResult;
import com.bb.sys.service.SysOrderService;

@Controller
@RequestMapping("/order")
public class SysOrderController {
	@Autowired
	private SysOrderService sysOrderService;

	/*
	 * @RequestMapping("/updateOrderById")
	 * 
	 * @ResponseBody
	 */
	/*
	 * public JsonResult byUpdateId(Integer id) { //sysOrderService.byUpdateId(id);
	 * return new JsonResult("updayte ok");
	 * 
	 * }
	 */
	@RequestMapping("/doInsertObjects")
	@ResponseBody
	public JsonResult doInsertObjects(Integer...ids) {
		int rows = sysOrderService.insertObjects(ids);
		return new JsonResult(rows+"个订单已保存");
	}
	@RequestMapping("/doFindPageObjects")
	@ResponseBody
	public JsonResult doFindPages(String nickname,Integer pageCurrent) {
		return new JsonResult(sysOrderService.findPages(nickname, pageCurrent));
	}
	
	@RequestMapping("/doOrderListUI")
	public String doOrderListUI() {
		return "sys/order_list";
	}
	
}
