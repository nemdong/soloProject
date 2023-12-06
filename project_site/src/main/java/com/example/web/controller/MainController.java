package com.example.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/home")
	public String home() {
		return "store/home";
	}
	
	@GetMapping("store/login-form")
	public String login() {
		return "store/user/login-form";
	}
}
