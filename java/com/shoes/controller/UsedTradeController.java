package com.shoes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes.dao.UsedTradeDAO;

@Controller
public class UsedTradeController{
	
	@Autowired
	private UsedTradeDAO dao;
	
	@RequestMapping("usedStore")
	public String goToUsedStore() {
		return "usedStore/usedStoreMain";
	}
	
	@RequestMapping(value="usedStorePostWrite", method=RequestMethod.GET)
	public void usedStorePostWriteGet(){
		
	}
	
	@RequestMapping(value="usedStorePostWrite", method=RequestMethod.POST)
	public void usedStorePostWritePost(){
		
	}
}
