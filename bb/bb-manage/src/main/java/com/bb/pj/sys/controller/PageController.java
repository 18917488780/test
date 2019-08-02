package com.bb.pj.sys.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bb.pj.common.vo.EasyUI_Image;
import com.bb.sys.service.FileService;
@Controller
@RequestMapping("/")
public class PageController {
	@RequestMapping("doIndexUI")
	public String doIndexUI() {
		
		return "starter";
	}
	@RequestMapping("doPageUI")
	public String doPageUI(){
		 return "common/page";
	 }
	@RequestMapping("doLoginUI")
	public String doLoginUI(){
			return "login";
	}
	@Autowired
	private FileService fileService;
	@RequestMapping("/pic/upload")
	@ResponseBody
	public EasyUI_Image fileUpload(MultipartFile uploadFile) {
		return fileService.fileUpload(uploadFile);
	}
}
