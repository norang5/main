package com.shoes.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoes.model.JoinBean;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sst;
	
	public void join(JoinBean joinBean){
		sst.insert("join",joinBean);
	}
	
}// class MemberDAO{}