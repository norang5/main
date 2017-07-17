package com.shoes.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

@Repository
public class UsedTradeDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
}
