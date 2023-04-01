package com.example.cicdspringbootapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class CiCdSpringbootAppApplication {

	@GetMapping("/")
	public String welcome(){
		return "GGG";
	}
	public static void main(String[] args) {
		SpringApplication.run(CiCdSpringbootAppApplication.class, args);
	}

}
