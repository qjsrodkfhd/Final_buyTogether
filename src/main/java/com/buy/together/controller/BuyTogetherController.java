package com.buy.together.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.buy.together.service.BuyTogetherService;

@RestController
@RequestMapping("")
public class BuyTogetherController {

	private static final Logger logger = LoggerFactory.getLogger(BuyTogetherController.class);
	
	@Inject
	private BuyTogetherService service;
	
}