package com.bb.aspect;
import java.sql.SQLException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import com.bb.vo.SysResult;
@RestControllerAdvice
public class SysResultAspect {
	@ExceptionHandler({RuntimeException.class,SQLException.class})
	public SysResult sysResultFail(Exception e) {
		e.printStackTrace();
		return SysResult.fail();
	}
}






