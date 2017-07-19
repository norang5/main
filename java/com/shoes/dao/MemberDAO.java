package com.shoes.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoes.model.JoinBean;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sst;
	
	// MEMBER_TB에 새로운 회원 저장하기
	public void join(JoinBean joinBean){
		sst.insert("join",joinBean);
	}
	
	// MEMBER_TB로부터 이메일과 일치하는 레코드의, 권한 등급만 받아오기
	public String getMemberTbGradeStPk(String MEM_EMAIL_PK){
		return sst.selectOne("getGradeStPk");
	}
}// class MemberDAO{}