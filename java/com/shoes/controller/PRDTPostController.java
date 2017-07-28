package com.shoes.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes.dao.PRDTDAO;
import com.shoes.dao.PRDTPostDAO;
import com.shoes.model.DeliveryBean;
import com.shoes.model.PRDTCommonBean;
import com.shoes.model.PRDTPostBean;
import com.shoes.model.PRDTSTBean;


@Controller
public class PRDTPostController {

	@Autowired
	private PRDTPostDAO prdtPostDAO;
	
	@Autowired
	private PRDTDAO prdtDAO;
	
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
	
	
	@RequestMapping(value = "/addPost", method = RequestMethod.GET)
	public String addPostPage(Model model){
		
		List<String> prdtlist = new ArrayList<String>();
		
		List<PRDTCommonBean> beanList=prdtDAO.getprdtNameList();
	
		for(int i=0; i<beanList.size(); i++){
			String name = beanList.get(i).getPCI_PRDT_NAME();
			int num = beanList.get(i).getPCI_SQ_PK();
			System.out.println("뽑아온 넘값"+num);		
			String postNum = prdtPostDAO.getPostNum(num);
			System.out.println("포스트 넘버 :" +postNum);
			if(postNum==null){
					prdtlist.add(name);
			}else{System.out.println("판매글이 존재합니다");
			
			}
		}
		
		model.addAttribute("prdtlist", prdtlist);
		
		return "admin/add_post";
	}
	
	
	
	@RequestMapping(value = "/addPost", method = RequestMethod.POST)
    public String submit(PRDTPostBean prdtPostBean, HttpSession session){

        // 1. 작성자 정보를 알아냅니다. 만약 비회원의 요청이라면 팅겨냅니다.
        String MEM_EMAIL_PK = (String)session.getAttribute("userEmail");
        if(MEM_EMAIL_PK == null || MEM_EMAIL_PK.equals("")){
            return "redirect:/main";
        }
        
        // 2. 회원등급을 알아냅니다. 이 과정에서 DB에 등록되지 않는 유저라면 팅겨냅니다.
        // -- 이 기능은 관리자 등급을 어디서 부여할지 확정한 이후에 다루는게 좋겠습니다.

        prdtPostBean.setMEM_EMAIL_PK(MEM_EMAIL_PK);
        
 
        
        System.out.println("본문내용\n"+prdtPostBean.getPP_BODY());

		String name = prdtPostBean.getPCI_PRDT_NAME();
			
		System.out.println("상품이름"+name);
			
		int PCINum = prdtPostDAO.getPCINum(name);
		
		System.out.println("뽑아온 키값"+PCINum);		
			
		 prdtPostBean.setPCI_SQ_PK(PCINum);

		 prdtPostDAO.insertPRDTPost(prdtPostBean);
		
		return "redirect:/addprdtdone";
	}
	
}





