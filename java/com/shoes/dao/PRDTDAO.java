package com.shoes.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoes.model.CategoryBean;
import com.shoes.model.PRDTBean;
import com.shoes.model.PRDTCommonBean;

@Repository
public class PRDTDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public void insertPRDTCommon(PRDTCommonBean prdtCommonBean){
		System.out.println("4번");
		sqlSession.insert("addPRDTCommon", prdtCommonBean);
		System.out.println("5번");
	}

	public List<CategoryBean> getCategoryList(){
		List<CategoryBean> categoryList = sqlSession.selectList("getCategoryList");
		System.out.println("출력"+categoryList);
		return categoryList;
	}
	
	public List<CategoryBean> getSizeList(){
		List<CategoryBean> sizelist = sqlSession.selectList("getCategoryList");
		return sizelist;
	}
	
	
	public void insertPRDT(PRDTBean prdtBean){
		System.out.println("6번");
		
		sqlSession.insert("addPRDT", prdtBean);
		System.out.println("7번");
	}
	
	public void updatePRDT(PRDTCommonBean member){
		
	}
	public void deletePRDT(String id){
		
	}
}

