package com.example.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.*")
public class MiniProject01Application {

	public static void main(String[] args) {
		SpringApplication.run(MiniProject01Application.class, args);
	}

}
