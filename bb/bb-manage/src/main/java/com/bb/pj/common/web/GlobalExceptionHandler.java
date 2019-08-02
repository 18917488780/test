package com.bb.pj.common.web;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bb.pj.common.vo.JsonResult;

/**
 * 此注解修饰全局异常处理类
 * @author Administrator
 *
 */
@ControllerAdvice
public class GlobalExceptionHandler {
	@ExceptionHandler(RuntimeException.class)
    @ResponseBody
	public JsonResult doHandleRuntimeException(
			RuntimeException e){
    	e.printStackTrace();//也可以写日志
		return new JsonResult(e);//封装异常信息
	}
}
