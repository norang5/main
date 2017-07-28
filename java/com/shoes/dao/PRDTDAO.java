package com.shoes.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoes.model.CategoryBean;
import com.shoes.model.PRDTBean;
import com.shoes.model.PRDTCommonBean;
import com.shoes.model.PrdtSizeTbBean;

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
		return categoryList;
	}
	
	public List<PrdtSizeTbBean> getSizeList(){
		List<PrdtSizeTbBean> sizelist = sqlSession.selectList("getPrdtSizeList");
		return sizelist;
	}
	
	public List<PRDTCommonBean> getprdtNameList(){
		List<PRDTCommonBean>list = sqlSession.selectList("getPrdtNameList");
		return list;
	}
	
	
	
	
/*	
	public PRDTBean getCD_PK(){
		PRDTBean bean = sqlSession.selectOne("getCD_PK");
		return bean;
	}*/
	
	public PRDTBean insertOrder(PRDTBean prdtBean){
		
		System.out.println("6번");
		
		PRDTBean bean = sqlSession.selectOne("getCD_PK", prdtBean);
		
		System.out.println("7번");
		return bean;
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

