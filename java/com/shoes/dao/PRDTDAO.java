package com.shoes.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;

import com.shoes.model.PRDTCommonBean;

@Repository
public class PRDTDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insertPRDT(PRDTCommonBean member){
		
		sqlSession.insert("addPRDT", member);
	}
	
	public void updatePRDT(PRDTCommonBean member){
		
	}
	public void deletePRDT(String id){
		
	}
}

