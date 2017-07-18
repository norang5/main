package com.shoes.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.dao.UsedTradeDAO;
import com.shoes.model.DistrictTbBean;
import com.shoes.model.PRDTCommonBean;
import com.shoes.model.PrdtSizeTbBean;
import com.shoes.model.UsedStTbBean;
import com.shoes.model.UsedTradePostTbBean;
import com.shoes.model.UsedTradeStTbBean;

@Controller
public class UsedTradeController{
	
	@Autowired
	private UsedTradeDAO usedDAO;
	
	@ModelAttribute								// ModelAttribute는 항상 RequestMapping된 메서드보다 먼저 실행된다. 메서드명은 자유롭게 지어도 되며, 보통 폼백킹이라고 지어준다.
	public UsedTradePostTbBean formBacking(){	// 즉, 여기서 생성한 MemberVO를 디스패쳐서블릿 객체로 반환하고,
		return new UsedTradePostTbBean();			// 디스패쳐 서블릿에선 클라이언트로부터 날아온 form 데이타를 commandName과 path에 따라 이 MemberVO와 매칭하여,
	}   
	
	
	// 중고장터로 이동
	@RequestMapping("usedStore")
	public String goToUsedStore() {
		return "usedStore/usedStoreMain";
	}
	
	// 중고거래글 작성 페이지로 이동
	@RequestMapping(value="/used_post_write", method=RequestMethod.GET)
	public ModelAndView usedStorePostWriteGet(){
		ModelAndView mav = new ModelAndView();
		
		// 1. 현재 세션의 이메일(작성자) 받아오기
		String email = "abc@naver.com";
		
		// 2. 치수 분류표 받아오기
		List<PrdtSizeTbBean> prdtSizeList = usedDAO.getPrdtSizeList();
		
		// 3. 지역 분류표 받아오기
		List<DistrictTbBean> districtList = usedDAO.getDistrictList();
		
		// 4. 중고거래 상태 분류표 받아오기
		List<UsedTradeStTbBean> usedTradeStList = usedDAO.getUsedTradeStList();
		
		// 5. 중고상품 상태 분류표 받아오기
		List<UsedStTbBean> usedStList = usedDAO.getUsedStList();
		
		mav.addObject("prdtSizeList", prdtSizeList);
		mav.addObject("districtList", districtList);
		mav.addObject("usedTradeStList", usedTradeStList);
		mav.addObject("usedStList", usedStList);
		
		mav.setViewName("usedStore/used_post_write");
		
		System.out.println(email);
		System.out.println(prdtSizeList);
		System.out.println(districtList);
		System.out.println(usedTradeStList);
		System.out.println(usedStList);
		
		return mav;
	}
	
	// 클라이언트 쪽에서 중고거래글 작성후에, 그 데이터를 서버로 전송할때.
	@RequestMapping(value="/used_post_write", method=RequestMethod.POST)
	public String usedStorePostWritePost(@ModelAttribute UsedTradePostTbBean usedTradePostTbBean){
		
		System.out.println(usedTradePostTbBean);
		
		return "redirect:/main";
	}
}
