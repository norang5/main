package com.shoes.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.dao.PRDTDAO;
import com.shoes.dao.UsedTradeDAO;
import com.shoes.model.CategoryBean;
import com.shoes.model.PRDTBean;
import com.shoes.model.PRDTCommonBean;
import com.shoes.model.PrdtSizeTbBean;


@Controller
public class addPRDTController{

	@Autowired
	private PRDTDAO prdtDao;
	
	@Autowired
	private UsedTradeDAO usedDAO;
	
	@ModelAttribute   // ModelAttribute는 항상 RequestMapping된 메서드보다 먼저 실행된다. 메서드명은 자유롭게 지어도 되며, 보통 폼백킹이라고 지어준다.
	   public PRDTCommonBean formBacking1(){   // 즉, 여기서 생성한 MemberVO를 디스패쳐서블릿 객체로 반환하고,
		return new PRDTCommonBean();      // 디스패쳐 서블릿에선 클라이언트로부터 날아온 form 데이타를 commandName과 path에 따라 이 MemberVO와 매칭하여,
	   }   
	
	@ModelAttribute   // ModelAttribute는 항상 RequestMapping된 메서드보다 먼저 실행된다. 메서드명은 자유롭게 지어도 되며, 보통 폼백킹이라고 지어준다.
	   public PRDTBean formBacking2(){   // 즉, 여기서 생성한 MemberVO를 디스패쳐서블릿 객체로 반환하고,
	      return new PRDTBean();      // 디스패쳐 서블릿에선 클라이언트로부터 날아온 form 데이타를 commandName과 path에 따라 이 MemberVO와 매칭하여,
	   }   
	
	@ModelAttribute("PRDT_CTG")
	protected List<String> categoryData() {
		
		List<String> categoryList = new ArrayList<String>();
		List<CategoryBean> beanList=prdtDao.getCategoryList();	
		
		for(int i=0; i<beanList.size(); i++){
		   categoryList.add(beanList.get(i).getPRDT_CTG_NM());
		}
		return categoryList;
	}
	

	@ModelAttribute("PRDT_SIZE")
	protected List<String> sizeData() {
		
		List<String> sizeList = new ArrayList<String>();
	
		List<PrdtSizeTbBean> beanList=prdtDao.getSizeList();
	
		for(int i=0; i<beanList.size(); i++){
		   sizeList.add(beanList.get(i).getPRDT_SIZE_PK());
		}
	
		return sizeList;
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String addPRDTCommon(){
		return "admin/add_prdt_common";
	}
	
	@RequestMapping(value="/admin", method=RequestMethod.POST)
	public String submit(PRDTCommonBean prdtCommonBean){

		System.out.println("2번");
		prdtDao.insertPRDTCommon(prdtCommonBean);
		System.out.println("3번");
		return "redirect:/addprdt";
	}

	@RequestMapping(value = "/addprdt", method = RequestMethod.GET)
	public ModelAndView addPrdtGet(){
		ModelAndView mav = new ModelAndView();

		List<PrdtSizeTbBean> prdtSizeList = usedDAO.getPrdtSizeList();

		mav.addObject("prdtSizeList", prdtSizeList);

		mav.setViewName("admin/add_prdt");

		System.out.println(prdtSizeList);
		
		return mav;
	}
	

	@RequestMapping(value="/addprdt", method=RequestMethod.POST)
	public String submit(PRDTBean prdtInfo){
     
		System.out.println("넘어옴1");
		System.out.println();
		
		List<PRDTBean> prdtBeanList = prdtInfo.getPRDTList();
		
		PRDTBean prdtBean=null;
		
		for(int i=0; i<prdtBeanList.size(); i++){
			
			prdtBean=prdtBeanList.get(i);
			prdtDao.insertPRDT(prdtBean);
		}
		
		System.out.println("넘어옴2");
		
		return "redirect:/addprdtdone";
	}

	@RequestMapping(value = "/addprdtdone", method = RequestMethod.GET)
	public String addPRDTDone(){
		return "admin/add_prdt_done";
	}
	
	
}





