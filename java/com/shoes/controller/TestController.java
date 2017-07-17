package com.shoes.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes.dao.PRDTDAO;
import com.shoes.dao.TestBatisDAO;
import com.shoes.model.ABean;
import com.shoes.model.PRDTCommonBean;

@Controller
public class TestController{
	
	@Autowired
	private TestBatisDAO testBatisDao;
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@RequestMapping("test")
	public void test(){
		//List<TestBatisBean> list = testBatisDao.getList();
		
		//Iterator it = list.iterator();
		//while(it.hasNext()){
			//System.out.println(it.next());
		//}
	}
	
	@RequestMapping("2f")
	public void f2(){
		//HBean name = test2Dao.selectOne("2f");
		//System.out.println(name);
	}

	
	@Autowired
	private PRDTDAO PRDTDao;
	
	
/*	@RequestMapping("addPRDTDAO")
	public void addPRDT("addPRDT"){
		request.getParameter
		
	}*/
	/*public void viewPRDT(){
		List<PRDTCommonBean>list =PRDTDao.getPRDTCommonList(); 
			System.out.println(list);
	}*/
	
	@RequestMapping(value="testajax", method=RequestMethod.GET)
	public void testajax(HttpServletResponse response, HttpServletRequest request){
		System.out.println("아젝스");
		try{
			System.out.println(request.getParameter("a"));
			response.setCharacterEncoding("utf-8");
			response.getWriter().print("응답이에요~~~");
			
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	
	@RequestMapping("test2")
	public void test2(){
		ABean a = sqlSessionTemplate.selectOne("dj");
		System.out.println(a);
	}
}
