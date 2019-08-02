package com.bb.webController;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.bb.pojo.Item;
import com.bb.sys.service.SysspService;
import com.fasterxml.jackson.databind.util.JSONPObject;

@Controller
@RequestMapping("/web")
public class JSONPController {
	@Autowired
	private SysspService sp;
	@RequestMapping("/item")
	@ResponseBody
	public JSONPObject findItems(String callback){
		List<Item> value = sp.findItems();
		return new JSONPObject(callback, value);
	}
}
