package com.bb.pj.sys.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.bb.pj.sys.dao.SysItemDao;
import com.bb.pojo.Item;


@Controller
@RequestMapping("/item")
public class ItemController {
	@Autowired
	private SysItemDao item;
	@RequestMapping("/show")
	@ResponseBody
	public Item show(Integer id) {
		return item.selectById(id);
	}
	@RequestMapping("/list1")
	@ResponseBody
	public List<Map<String, Object>> showList1(Integer id) {
		return item.showList1(id);
	}
	@RequestMapping("/list2")
	@ResponseBody
	public List<Map<String, Object>> showList2(Integer id) {
		return item.showList2(id);
	}
	@RequestMapping("/list3")
	@ResponseBody
	public List<Map<String, Object>> showList3(Integer id) {
		return item.showList3(id);
	}
}
