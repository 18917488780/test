package com.bb.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.bb.pojo.Addr;
import com.bb.pojo.Gwc;
import com.bb.pojo.User;
import com.bb.service.DubboOrderService;
import com.bb.util.UserThreadLocal;
@Controller
@RequestMapping("/order")
public class OrderController {
	@Reference(timeout = 3000, check = false)
	private DubboOrderService orderService;
	@RequestMapping("/saveAddr")
	@ResponseBody
	public void saveAddr(Addr addr) {
		User user = UserThreadLocal.get();
		Integer id = user.getId();
		addr.setUserId(id);
		addr.setName(user.getUsername());
		orderService.saveAddr(addr);
	}
	@RequestMapping("/saveAdd")
	@ResponseBody
	public void saveAdd(Addr addr) {
		User user = UserThreadLocal.get();
		Integer id = user.getId();
		addr.setUserId(id);
		orderService.saveAddr(addr);
	}
	@RequestMapping("/addOrder")
	@ResponseBody
	public String saveOrder(Integer... array) {
		Integer id = UserThreadLocal.get().getId();
		return orderService.saveOrder(array, id);
	}
}








