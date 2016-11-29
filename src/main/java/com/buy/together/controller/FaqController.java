package com.buy.together.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.buy.together.service.FaqService;

@Controller
@RequestMapping("/customerCenter/*")
public class FaqController {
	
	private static final Logger logger = LoggerFactory.getLogger(FaqController.class);
	
	@Inject
	private FaqService service;
	
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq(Model model){
		
		logger.info("여기는 faqController 부분입니다.");
		
		return "customerCenter/faq";
	}
}
