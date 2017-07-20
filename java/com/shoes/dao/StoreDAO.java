package com.shoes.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoes.model.PRDTCommonBean;



@Repository
public class StoreDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	public PRDTCommonBean getCommonInfo(){
		PRDTCommonBean commonInfo = sqlSession.selectOne("getCommonINfo");
		System.out.println("DAO +" + commonInfo);
		return commonInfo;
	}
	
}

