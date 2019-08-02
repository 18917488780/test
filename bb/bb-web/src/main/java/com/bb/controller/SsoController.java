package com.bb.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.dubbo.config.annotation.Reference;
import com.bb.pojo.User;
import com.bb.service.DubboUserService;
import com.bb.vo.SysResult;

import redis.clients.jedis.JedisCluster;
@Controller
@RequestMapping("/sso")
public class SsoController {
	@Reference(timeout = 3000, check = false)
	private DubboUserService userService;
	@Autowired
	private JedisCluster jedis;
	@RequestMapping("/userExist")
	@ResponseBody
	public String userExist(String username) {
		return userService.userExist(username);
	}
	@RequestMapping("/zhuce")
	@ResponseBody
	public SysResult zhuce(User user) {
		userService.zhuce(user);
		return SysResult.success();
	}
	@RequestMapping("/remote")
	@ResponseBody
	public String remote(User user) {
		return userService.remote(user);
	}
	@RequestMapping("/query/{token}")
	@ResponseBody
	public User query(@PathVariable String token) {
		return userService.query(token);
	}
	@RequestMapping("/deng")
	@ResponseBody
	public SysResult deng(User user, HttpServletResponse response) {
		String token = userService.deng(user);
		Cookie cookie = new Cookie("BB_TICKET", token);
		cookie.setMaxAge(3600 * 7 *24);
		cookie.setPath("/");
		cookie.setDomain("bb.com");
		response.addCookie(cookie);
		return SysResult.success();
	}
	@RequestMapping("/exit")
	public String exit(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();
		if(cookies.length > 0)
			for (Cookie cookie : cookies) {
				if("BB_TICKET".equals(cookie.getName())) {
					String token = cookie.getValue();
					if(!StringUtils.isEmpty(token)) {
						jedis.del(token);
					}
					cookie.setMaxAge(0);
					cookie.setDomain("bb.com");
					cookie.setPath("/");
					response.addCookie(cookie);
					break;
				}
			}
		return "redirect:/";
	}
}








