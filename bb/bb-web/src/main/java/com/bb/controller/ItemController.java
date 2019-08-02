package com.bb.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bb.service.ItemService;
@Controller
@RequestMapping("/item")
public class ItemController {
	@Autowired
	private ItemService itemService;
	@RequestMapping("/show")
	public String show(Integer id, Model model) {
		List<Object> item = itemService.show(id);
		model.addAttribute("sp1", item.get(0));
		model.addAttribute("list1", item.get(1));
		model.addAttribute("list2", item.get(2));
		model.addAttribute("list3", item.get(3));
		return "spym4";
	}
}








