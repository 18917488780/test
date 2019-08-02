package com.bb.ano;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import com.bb.enu.KEY_ENUM;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface Cache_Find {
	String key() default "";
	KEY_ENUM key_Type() default KEY_ENUM.AUTO;
	int seconds() default 0;
}
