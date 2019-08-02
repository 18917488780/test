package com.bb.util;
import java.io.IOException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
public class ObjectMapperUtil {
	private final static ObjectMapper mapper = new ObjectMapper();
	public static String toJson(Object target) {
		String result;
		try {
			result = mapper.writeValueAsString(target);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return result;
	}
	public static <T>T toObject(String json, Class<T> targetClass) {
		T result;
		try {
			result = mapper.readValue(json,targetClass);
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return result;
	}
}
