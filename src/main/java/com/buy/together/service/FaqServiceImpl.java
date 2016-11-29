package com.buy.together.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.buy.together.dao.FaqDao;
import com.buy.together.domain.Board;

@Service
public class FaqServiceImpl implements FaqService {

	@Inject
	private FaqDao dao;
	
	@Override
	public Board read() throws Exception {
		
		return null;
		
	}

}
