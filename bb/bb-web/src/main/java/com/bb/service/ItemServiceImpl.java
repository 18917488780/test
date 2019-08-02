package com.bb.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bb.pojo.Item;
import com.bb.util.HttpClientService;
import com.bb.util.ObjectMapperUtil;
@Service
public class ItemServiceImpl implements ItemService{
	@Autowired
	private HttpClientService http;
	@Override
	public List<Object> show(Integer id) {
		HashMap<String, String> map = new HashMap<>();
		map.put("id", String.valueOf(id));
		String url = "http://manages.bb.com/item/show";
		String url1 = "http://manages.bb.com/item/list1";
		String url2 = "http://manages.bb.com/item/list2";
		String url3 = "http://manages.bb.com/item/list3";
		String json = http.doGet(url, map);
		String json1 = http.doGet(url1, map);
		String json2 = http.doGet(url2, map);
		String json3 = http.doGet(url3, map);
		List<Object> list = new ArrayList<>();
		list.add(ObjectMapperUtil.toObject(json, Item.class));
		list.add(ObjectMapperUtil.toObject(json1, List.class));
		list.add(ObjectMapperUtil.toObject(json2, List.class));
		list.add(ObjectMapperUtil.toObject(json3, List.class));
		return list;
	}


}
