package com.bb;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//容器启动时不要加载数据源相关配置
/*
 * 前台不需要数据源,访问后台即可.但是继承的聚合项目jt中有数据源,MySQL依赖,所以需要加注解不让启动数据源
 */
@SpringBootApplication
public class SpringBootRun {
	
	public static void main(String[] args) {
		
		SpringApplication.run(SpringBootRun.class,args);
	}
}
