package com.shoes.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StoreController {

	@RequestMapping("nmd")
	public String goToStore() {
		return "store/storeDetail";
	}
	

	@RequestMapping("orderdone")
	public String orderDone() {
		return "store/order_done";
	}
	
	
	
}
