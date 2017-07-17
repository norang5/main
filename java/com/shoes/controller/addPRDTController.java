package com.shoes.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.dao.PRDTDAO;
import com.shoes.model.PRDTCommonBean;

@Controller
public class addPRDTController {

	@Autowired
	private PRDTDAO prdtDao;
	
	@RequestMapping("/list")
	public ModelAndView process(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("selectList");
		//System.out.println("===> process() 호출");
		/*
		List<PRDTCommonBean> list 
					= prdtDao.getPRDTList();
		
		
		mav.addObject("list", list);
		*/
		return mav;
	}
	
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String addPRDT(){
		System.out.println("1번");
		return "admin/addPRDT";
	}
	
	@ModelAttribute   // ModelAttribute는 항상 RequestMapping된 메서드보다 먼저 실행된다. 메서드명은 자유롭게 지어도 되며, 보통 폼백킹이라고 지어준다.
	   public PRDTCommonBean formBacking(){   // 즉, 여기서 생성한 MemberVO를 디스패쳐서블릿 객체로 반환하고,
	      return new PRDTCommonBean();      // 디스패쳐 서블릿에선 클라이언트로부터 날아온 form 데이타를 commandName과 path에 따라 이 MemberVO와 매칭하여,
	   }   
	
	
	@RequestMapping(value="/admin", method=RequestMethod.POST)
	public String submit(PRDTCommonBean pRDTCommonBean){
		//System.out.println("===>submit() 호출");
		//System.out.println("id:"+memberVO.getId());
		//System.out.println("pw:"+memberVO.getPasswd());
		//System.out.println("name:"+memberVO.getName());
		System.out.println("2번");
		prdtDao.insertPRDT(pRDTCommonBean);
		System.out.println("3번");
		return "redirect:/list";
	}/*
	
	@RequestMapping("/detail")
	public ModelAndView detailProcess(@RequestParam("id") String id){
		//System.out.println("id = "+id);
		ModelAndView mav = new ModelAndView();
		
		PRDTVO member = PRDTDao.getMember(id);
		
		mav.addObject("member", member);
		mav.setViewName("selectDetail");
		
		return mav;
	}
	*/
	/*@RequestMapping(value="/update.do", method=RequestMethod.GET)
	public ModelAndView form(@RequestParam("id") String id){
		ModelAndView mav = new ModelAndView();
		
		PRDTVO member 
				= PRDTDao.getMember(id);
		
		mav.addObject("member", member);
		mav.setViewName("updateForm");
		
		return mav;
	}
	*/
/*	@RequestMapping(value="/update.do", method=RequestMethod.POST)
	public String updateProcess(MemberVO member){
		
		memberDao.updateMember(member);
		
		return "redirect:/list.do";
	}
	
	@RequestMapping(value="/delete.do", method=RequestMethod.GET)
	public String deleteForm(){
		
		return "deleteForm";
	}
	
	@RequestMapping(value="/delete.do", method=RequestMethod.POST)
	public String deleteProcess(String id){
		
		memberDao.deleteMember(id);
		
		return "redirect:/list.do";
	}*/
}






