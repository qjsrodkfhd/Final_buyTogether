package com.buy.together.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.buy.together.dao.BuyTogetherDao;


@Service
public class BuyTogetherServiceImpl implements BuyTogetherService {

	@Inject
	private BuyTogetherDao dao;
	
}
