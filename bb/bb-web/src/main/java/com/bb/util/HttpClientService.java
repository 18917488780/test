package com.bb.util;
import java.io.IOException;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
@Service
public class HttpClientService {
	@Autowired
	private CloseableHttpClient httpClient;
	@Autowired
	private RequestConfig requestConfig;
	
	public String doGet(String url, Map<String, String> params, String charSet) {
		//校验字符集
		if(StringUtils.isEmpty(charSet))
			charSet = "UTF-8";
		//校验参数是否为空
		if(params != null) {
			url += "?";
			//遍历map集合
			for(Entry<String, String> param : params.entrySet()) {
				String key = param.getKey();
				String value = param.getValue();
				url += (key + "=" + value + "&");
			}
			url = url.substring(0, url.length() - 1); //截去最后的"&"
		}
		//发起get请求
		HttpGet get = new HttpGet(url);
		get.setConfig(requestConfig);
		String result = null;
		try {
			CloseableHttpResponse response = httpClient.execute(get);
			if(response.getStatusLine().getStatusCode() == 200)
				result = EntityUtils.toString(response.getEntity(), charSet);
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return result;
	}
	
	public String doGet(String url, Map<String, String> params) {
		return doGet(url, params, null);
	}
	
	public String doGet(String url) {
		return doGet(url, null, null);
	}
}








