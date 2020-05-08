package com.dxm.insuranceSpring;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@MapperScan("com.dxm.insuranceSpring")
@ComponentScan("com.dxm.insuranceSpring")
public class InsuranceSpringApplication {

	public static void main(String[] args) {
		SpringApplication.run(InsuranceSpringApplication.class, args);
	
	}
}
