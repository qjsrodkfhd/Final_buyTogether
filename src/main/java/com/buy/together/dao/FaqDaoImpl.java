package com.buy.together.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.buy.together.domain.Board;

public class FaqDaoImpl implements FaqDao {
	
	@Inject
	private SqlSession sql;

	@Override
	public List<Board> listAll() throws Exception {
		
		return null;
	}

}
