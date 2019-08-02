package com.bb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping("/{path}")
	public String index(@PathVariable String path) {
		return path;
	}
	@RequestMapping("/zhuce")
	public String zhuce() {
		return "zhuce_list";
	}
	@RequestMapping("/denglu")
	public String denglu() {
		return "denglu_list";
	}
}
