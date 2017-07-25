package com.shoes.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes.dao.PRDTPostDAO;
import com.shoes.model.DeliveryBean;
import com.shoes.model.PRDTPostBean;
import com.shoes.model.PRDTSTBean;


@Controller
public class PRDTPostController {

	@Autowired
	private PRDTPostDAO prdtPostDAO;
	
	@ModelAttribute   // ModelAttribute는 항상 RequestMapping된 메서드보다 먼저 실행된다. 메서드명은 자유롭게 지어도 되며, 보통 폼백킹이라고 지어준다.
	   public PRDTPostBean formBack(){   // 즉, 여기서 생성한 MemberVO를 디스패쳐서블릿 객체로 반환하고,
		return new PRDTPostBean();      // 디스패쳐 서블릿에선 클라이언트로부터 날아온 form 데이타를 commandName과 path에 따라 이 MemberVO와 매칭하여,
	   }   
	
	
	@ModelAttribute("POST_ST")
	protected List<String> STData() {
		
		List<String> STList = new ArrayList<String>();
		List<PRDTSTBean> beanList=prdtPostDAO.getSTList();	
		
		for(int i=0; i<beanList.size(); i++){
			STList.add(beanList.get(i).getPRDT_ST_NM_PK());
		}
		return STList;
	}
	

	@ModelAttribute("POST_DLVR")
	protected List<String> sizeData() {
		
		List<String> DLVRlist = new ArrayList<String>();
		List<DeliveryBean> beanList=prdtPostDAO.getDLVRList();	
		
		for(int i=0; i<beanList.size(); i++){
			DLVRlist.add(beanList.get(i).getDLVR_CHRG_NM_PK());
		}
		return DLVRlist;
	}
	
	
	@RequestMapping(value = "/post", method = RequestMethod.GET)
	public String addPostPage(){
		return "admin/add_post";
	}
	
	
	@RequestMapping(value = "/post", method = RequestMethod.POST)
	public String submit(PRDTPostBean prdtPostBean){

	
		prdtPostDAO.insertPRDTPost(prdtPostBean);
		
		System.out.println("본문내용\n"+prdtPostBean.getPP_BODY());
		
		return "redirect:/addprdtdone";
	}
	
}





