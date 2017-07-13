package com.shoes.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoes.model.TestBatisBean;

@Repository
public class TestBatisDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
/*	 관리자 자료실 검색 레코드 수(myBatis) 
	public int getListCount3(String find_name, String find_field) throws SQLException{
		int count=0;
		if(find_field.equals("bbs_subject")){//검색어가 자료실 제목 인경우
			count=this.sqlSession.selectOne("abbsfind_cnt1",find_name);
		}else if(find_field.equals("bbs_content")){//검색어가 자료실 내용인 경우
			count=this.sqlSession.selectOne("abbsfind_cnt2",find_name);	
		}
		return count;
	}	*/
	
	public List getList(){
		List<TestBatisBean> list = sqlSession.selectList("testBatisList");
		return list;
	}
}
