package com.dxm.insuranceSpring.aspectj;

import java.lang.annotation.*;

/**
 * 自定义一个注解：是为了检查权限
 * @author Administrator
 *
 */
@Target(ElementType.METHOD)  //@Target表示这个注解只能给函数使用
@Retention(RetentionPolicy.RUNTIME)//@Retention表示注解内容需要包含的Class字节码里，属于运行时需要的
@Documented  
public @interface Logaspect {   //@interface用于定义一个注解。
    
	//定义变量
    /** 要执行的具体操作比如：添加用户 **/  
    String operationName() default "";
}