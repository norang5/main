package com.shoes.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoes.model.PRDTBean;
import com.shoes.model.PRDTCommentBean;
import com.shoes.model.PRDTCommonBean;
import com.shoes.model.PRDTPostBean;


@Repository
public class StoreDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	public List<PRDTBean> getPRDTInfo(){
		
		List<PRDTBean> prdtInfolist = sqlSession.selectList("getPRDTINfo");
		
		System.out.println("DAO +" + prdtInfolist);
		return prdtInfolist;
	}
	
	
	public PRDTCommonBean getCommonInfo(){
		PRDTCommonBean commonInfo = sqlSession.selectOne("getCommonINfo");
		System.out.println("DAO +" + commonInfo);
		return commonInfo;
	}
	
	
	public List<PRDTCommonBean> getCommonInfoList(){
		 List<PRDTCommonBean> commonInfo = sqlSession.selectList("getCommonINfoList");
		System.out.println("DAO +" + commonInfo);
		
		return commonInfo;
	}
	
	public PRDTPostBean getPostInfo(){
		PRDTPostBean postInfo = sqlSession.selectOne("getPostINfo");
		System.out.println("DAO +" +postInfo);
		return postInfo;
	}
	
	public List<PRDTPostBean> getPostInfoList(){
		 List<PRDTPostBean> postInfo = sqlSession.selectList("getPostINfoList");
		System.out.println("DAO +" + postInfo);
		
		return postInfo;
	}

	public void insertCommentInfo(PRDTCommentBean prdtCommentBean){
		sqlSession.insert("addComment", prdtCommentBean);
	}
	
}

