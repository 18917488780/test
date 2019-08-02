package com.bb.controller;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.bb.pojo.Gwc;
import com.bb.pojo.Item;
import com.bb.pojo.User;
import com.bb.service.DubboCartService;
import com.bb.service.ItemService;
import com.bb.util.HttpClientService;
import com.bb.util.ObjectMapperUtil;
import com.bb.util.UserThreadLocal;
import com.bb.vo.SysResult;
@Controller
@RequestMapping("/cart")
public class CartController {
	@Reference(timeout = 3000,check = false)
	private DubboCartService cartService;
	@Autowired
	private HttpClientService http;
	@RequestMapping("/addCart")
	@ResponseBody
	public SysResult addCart(Gwc cart) {
		HashMap<String, String> map = new HashMap<>();
		map.put("id", String.valueOf(cart.getId()));
		String url = "http://manages.bb.com/item/show";
		String json = http.doGet(url, map);
		Item item = ObjectMapperUtil.toObject(json, Item.class);
		User user = UserThreadLocal.get();
		cart.setUserId(user.getId());
		cart.setImg(item.getImg1());
		cart.setTree(item.getTree1());
		cart.setStr1(item.getStr1());
		int rows = cartService.addCart(cart);
		if(rows > 0)
			return SysResult.success("添加成功");
		return SysResult.fail();
	}
	@RequestMapping("/showCart")
	public String showCart(Model model) {
		User user = UserThreadLocal.get();
		List<Gwc> list = cartService.showCart(user.getId());
		model.addAttribute("list", list);
		return "gwc_list";
	}
	@RequestMapping("/delete")
	public String delectCart(Gwc cart) {
		User user = UserThreadLocal.get();
		cart.setUserId(user.getId());
		cartService.delete(cart);
		return "redirect:/cart/showCart";
	}
	@RequestMapping("/perdelete")
	public String perdeleteCart(Integer... array) {
		User user = UserThreadLocal.get();
		for(int i = 0; i < array.length; i++) {
			Gwc cart = new Gwc().setId(array[i]).setUserId(user.getId());
			cartService.delete(cart);
		}
		return "redirect:/cart/showCart";
	}
	@RequestMapping("/updateNum/{id}/{num}")
	@ResponseBody
	public void updateNum(Gwc cart) {
		User user = UserThreadLocal.get();
		cart.setUserId(user.getId());
		cartService.updateNum(cart);
	}
	@RequestMapping("/payList")
	public String payList(Model model,Integer... array) {
		User user = UserThreadLocal.get();
		List<Gwc> list=new ArrayList<>();
		for(int i=0;i<array.length;i++) {
			Gwc cart=cartService.selectById(user.getId(),array[i]);
			list.add(cart);
		}
		model.addAttribute("gwc",list);
		return "/paykk_list";
	}
}








