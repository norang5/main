package com.shoes.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.dao.UsedTradeDAO;
import com.shoes.model.DistrictTbBean;
import com.shoes.model.FileBean;
import com.shoes.model.PrdtSizeTbBean;
import com.shoes.model.UsedStTbBean;
import com.shoes.model.UsedTradePostTbBean;
import com.shoes.model.UsedTradeStTbBean;

@Controller
public class UsedTradeController{

	@Autowired
	private UsedTradeDAO usedDAO;

	// 중고장터로 이동
	@RequestMapping("usedStore")
	public String goToUsedStore(){
		return "usedStore/usedStoreMain";
	}

	// 중고거래글 작성 페이지로 이동(SmartEditor)
	@RequestMapping(value = "/used_post_write_se", method = RequestMethod.GET)
	public ModelAndView usedStorePostWriteSeGet(){
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

	// 클라이언트 쪽에서 중고거래글 작성후에, 그 데이터를 서버로 전송할때.(SmartEditor)
	@RequestMapping(value = "/used_post_write_se", method = RequestMethod.POST)
	public String usedStorePostWriteSePost(@ModelAttribute UsedTradePostTbBean usedTradePostTbBean,
			HttpServletRequest request){
		System.out.println(usedTradePostTbBean);

		String imgSavePath = request.getRealPath("usedStore");

		return "redirect:/main";
	}

	// 중고거래글 작성 페이지로 이동(CKEditor)
	// 파라미터로 게시글 번호가 넘어온다면 DB에서 받아와서 함께 전송해주고(수정),
	// 파라미터로 아무값도 안넘어온다면 그대로 글 작성 페이지로 연결해준다.(새로 글쓰기)
	@RequestMapping(value = "/used_post_write_ck", method = RequestMethod.GET)
	public void usedStroePostWriteCKGet(@RequestParam(value = "idx", defaultValue = "0") int idx, Model model){
		System.out.println("중고상품 판매글 작성 페이지로 이동");
		if(idx > 0){
			
		}
		
		return "";
	}
	
	// 클라이언트 쪽에서 중고거래글 작성후에, 그 데이터를 서버로 전송할때.(CKEditor)
	@RequestMapping(value = "/used_post_write_ck", method = RequestMethod.POST)
	public void usedStroePostWritePEGet(){
		
	}
}
