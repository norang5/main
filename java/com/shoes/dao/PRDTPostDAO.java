package com.shoes.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoes.model.CategoryBean;
import com.shoes.model.DeliveryBean;
import com.shoes.model.PRDTPostBean;
import com.shoes.model.PRDTSTBean;
import com.shoes.model.PrdtSizeTbBean;


@Repository
public class PRDTPostDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<PRDTSTBean> getSTList(){
		List<PRDTSTBean> STList = sqlSession.selectList("getSTList");
		return STList;
	}
	
	public List<DeliveryBean> getDLVRList(){
		List<DeliveryBean> DLVRlist = sqlSession.selectList("getDLVRList");
		return DLVRlist;
	}

	public void insertPRDTPost(PRDTPostBean prdtPostBean){
		System.out.println("4번");
		sqlSession.insert("newPRDTPost", prdtPostBean);
		System.out.println("5번");
	}
	
	public void updatePRDTPost(PRDTPostBean Bean){
		
	}
	
	public void deletePRDTPost(String num){
		
	}
}
