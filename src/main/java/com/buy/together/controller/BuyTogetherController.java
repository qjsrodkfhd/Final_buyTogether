package com.buy.together.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.buy.together.service.BuyTogetherService;

@Controller
@RequestMapping("")
public class BuyTogetherController {

	private static final Logger logger = LoggerFactory.getLogger(BuyTogetherController.class);
	
	@Inject
	private BuyTogetherService service;
	
	public void create(){
		
	}
	
	
}