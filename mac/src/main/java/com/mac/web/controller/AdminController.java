package com.mac.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mac.web.domain.Command;
import com.mac.web.domain.Customer;

@SessionAttributes("loginUser")
@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired Command cmd;
	@Autowired Customer custom;

	@RequestMapping(value="/custMana",method=RequestMethod.GET)
	public String custMana() {
		logger.info("어드민 컨트롤러 custMana() =============================");
		custom.setCustomPass("1");
		return "admin/custMana";
	}
	
	@RequestMapping(value="/addItem",method=RequestMethod.GET)
	public String addItem() {
		logger.info("어드민 컨트롤러 addItem()===============================");
		return "admin/addItem";
	}
	
	@RequestMapping(value="/itemList",method=RequestMethod.GET)
	public String itemList() {
		
		logger.info("어드민 컨트롤러 itemList()===============================");
		return "admin/itemList";
	}
	
}

