package com.shoes.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoes.model.PRDTBean;
import com.shoes.model.PRDTCommentBean;
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
	

	public void insertCommentInfo(PRDTCommentBean prdtCommentBean){
		sqlSession.insert("addComment", prdtCommentBean);
	}
	
}

