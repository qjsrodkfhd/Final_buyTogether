package com.buy.together.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BuyTogetherImpl implements BuyTogetherDao {
	
	private static final String namespace="com.buy.together.mapper.BuyTogetherMapper";
	
	@Inject
	private SqlSession sqlSession;

}
