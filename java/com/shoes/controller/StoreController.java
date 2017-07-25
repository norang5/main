package com.shoes.controller;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes.dao.StoreDAO;
import com.shoes.model.CategoryBean;
import com.shoes.model.PRDTCommentBean;
import com.shoes.model.PRDTCommonBean;



@Controller
public class StoreController {

	
	@Autowired
	private StoreDAO storeDao;

	@RequestMapping(value = "/nmd", method = RequestMethod.GET)
	public String goToStore() {
		return "store/storeDetail";
	}
	
	@ModelAttribute("PRDTCommentBean")   // ModelAttribute는 항상 RequestMapping된 메서드보다 먼저 실행된다. 메서드명은 자유롭게 지어도 되며, 보통 폼백킹이라고 지어준다.
	   public PRDTCommentBean formbacking(){   // 즉, 여기서 생성한 MemberVO를 디스패쳐서블릿 객체로 반환하고,
		System.out.println("formbacking");
		return new PRDTCommentBean();      // 디스패쳐 서블릿에선 클라이언트로부터 날아온 form 데이타를 commandName과 path에 따라 이 MemberVO와 매칭하여,
	   }   
	
	@RequestMapping("orderdone")
	public String orderDone() {
		return "store/order_done";
	}
	
	@ModelAttribute("Common_NAME")
	protected String prdtNameData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		System.out.println("prdtNameData: " + bean);
		return bean.getPCI_PRDT_NAME();
	}
	
	@ModelAttribute("Common_Mat")
	protected String materialData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		System.out.println("materialData: " + bean);
		return bean.getPCI_MATERIAL();
	}
	
	@ModelAttribute("Common_Con")
	protected String manufactContryData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		System.out.println("manufactContryData: " + bean);
		return bean.getPCI_MANUFACT_COUNTRY();
	}
	
	@ModelAttribute("Common_Mau")
	protected String manufacturerData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		System.out.println("manufacturerData: " + bean);
		return bean.getPCI_MANUFACTURER();
	}	
	
	@ModelAttribute("Common_Imp")
	protected String importerData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		System.out.println("importerData: " + bean);
		return bean.getPCI_IMPORTER();
	}
	
	@ModelAttribute("Common_Qua")
	protected String qualityGuaranteeData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		System.out.println("qualityGuaranteeData: " + bean);
		return bean.getPCI_QUALITY_GUARANTEE();
	}
	
	@ModelAttribute("Common_ATT")
	protected String requireAttentionData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		System.out.println("requireAttentionData: " + bean);
		return bean.getPCI_REQUIRE_ATTENTION();
	}
	
	@ModelAttribute("Common_AS")
	protected String asInfoData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		System.out.println("asInfoData: " + bean);
		return bean.getPCI_AS_MAN_PHONE();
	}

	
	@ModelAttribute("REVIEW_FOOT")
	protected Object footData(){
			List<String> foot = new ArrayList<String>();
			foot.add("발볼 넓음");
			foot.add("발볼 좁음");
			foot.add("발등 높음");
		return foot;
		}
	
	
	
	@RequestMapping(value = "/nmd", method = RequestMethod.POST)
	public String submit(PRDTCommentBean prdtCommetBean){

		System.out.println("2번");
		
		storeDao.insertCommentInfo(prdtCommetBean);
		
		System.out.println("3번");
		
		return "done";
	}
}
