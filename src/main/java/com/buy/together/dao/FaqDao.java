package com.buy.together.dao;

import java.util.List;

import com.buy.together.domain.Board;

public interface FaqDao {

	public List<Board> listAll()throws Exception;
	
}
