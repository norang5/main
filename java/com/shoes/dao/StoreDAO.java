package com.shoes.dao;

import java.util.ArrayList;
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
	

	public List<PRDTBean> getPRDTInfo(int num){
		
		List<PRDTBean> prdtInfolist = sqlSession.selectList("getPRDTINfo", num);
		System.out.println("DAO +" + prdtInfolist);
		return prdtInfolist;
	}
	
	
	public PRDTCommonBean getCommonInfo(String name){
		PRDTCommonBean commonInfo = sqlSession.selectOne("getCommonINfo", name);
		System.out.println("DAO +" + commonInfo);
		return commonInfo;
	}
	
	
	public List<PRDTCommonBean> getCommonInfoList(){
		 List<PRDTCommonBean> commonInfo = sqlSession.selectList("getCommonINfoList");
		System.out.println("DAO +" + commonInfo);
		
		return commonInfo;
	}
	
	public PRDTPostBean getPostInfo(int num){
		PRDTPostBean postInfo = sqlSession.selectOne("getPostINfo", num);
		System.out.println("DAO +" +postInfo);
		return postInfo;
	}
	
	public List<PRDTPostBean> getPostInfoList(){
		 List<PRDTPostBean> postInfo = sqlSession.selectList("getPostINfoList");
		System.out.println("DAO +" + postInfo);
		
		return postInfo;
	}

	
	public List<PRDTCommonBean> getCommonCategoryList(String category){
		
		System.out.println("DAO 전달값"+category);
		List<PRDTCommonBean> categorylist = sqlSession.selectList("getCommonCategoryList", category);
		
		System.out.println("DAO +" +categorylist);
		return categorylist;
	}

	
	
	public List<PRDTPostBean>getPostTitleList(List<Integer> PCISQList){
		
		System.out.println("DAO 전달값"+PCISQList);
		List<PRDTPostBean> list = new ArrayList<PRDTPostBean>();
		
		for(int i=0; i<PCISQList.size(); i++){
			list.add(sqlSession.selectOne("getPostTitleList", PCISQList.get(i)));
		}
		
		System.out.println("DAO +" +list);
		
		return list;
	}
	
	
public List<Integer> getPriceList(List<Integer> PCISQList){
		
		System.out.println("DAO 전달값"+PCISQList);
		List<Integer> list = new ArrayList<Integer>();
		
		for(int i=0; i<PCISQList.size(); i++){
			list.add(sqlSession.selectOne("getPriceList", PCISQList.get(i)));
		}
		
		System.out.println("DAO +" +list);
		
		return list;
	}
	
	
	
	
	public List<PRDTCommentBean> getcommentList(){
		 List<PRDTCommentBean> commentList = sqlSession.selectList("getCommentList");
		System.out.println("DAO +" + commentList);
		
		return commentList;
	}

	
	
	public void insertCommentInfo(PRDTCommentBean prdtCommentBean){
		sqlSession.insert("addComment", prdtCommentBean);
	}

}

