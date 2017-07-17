package com.shoes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("main")
	public String goToMain() {
		return "main";
	}
	
	@RequestMapping("info")
	public String goToInfo() {
		return "info/infoMain";
	}
	
	@RequestMapping("store")
	public String goToStore() {
		return "store/storeMain";
	}
	
	
}
