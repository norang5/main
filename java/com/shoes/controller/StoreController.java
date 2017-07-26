package com.shoes.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes.dao.PRDTDAO;
import com.shoes.dao.StoreDAO;
import com.shoes.model.PRDTBean;
import com.shoes.model.PRDTCommentBean;
import com.shoes.model.PRDTCommonBean;
import com.shoes.model.PRDTPostBean;
import com.shoes.model.PrdtSizeTbBean;



@Controller
public class StoreController {

	
	@Autowired
	private StoreDAO storeDao;
	
	@Autowired
	private PRDTDAO prdtDao;

	
	@RequestMapping("store")
	public String goToStore() {
		return "store/storeMain";
	}
	@RequestMapping(value = "/nmd", method = RequestMethod.GET)
	public String goToCategory() {
		return "store/storeDetail";
	}
	
	@ModelAttribute("PRDTCommentBean")   // ModelAttribute는 항상 RequestMapping된 메서드보다 먼저 실행된다. 메서드명은 자유롭게 지어도 되며, 보통 폼백킹이라고 지어준다.
	   public PRDTCommentBean formbacking(){   // 즉, 여기서 생성한 MemberVO를 디스패쳐서블릿 객체로 반환하고,
		System.out.println("formbacking");
		return new PRDTCommentBean();      // 디스패쳐 서블릿에선 클라이언트로부터 날아온 form 데이타를 commandName과 path에 따라 이 MemberVO와 매칭하여,
	   }   
	
	@ModelAttribute("PRDTBean")   // ModelAttribute는 항상 RequestMapping된 메서드보다 먼저 실행된다. 메서드명은 자유롭게 지어도 되며, 보통 폼백킹이라고 지어준다.
	   public PRDTBean formbacking2(){   // 즉, 여기서 생성한 MemberVO를 디스패쳐서블릿 객체로 반환하고,
		System.out.println("formbacking2");
		return new PRDTBean();      // 디스패쳐 서블릿에선 클라이언트로부터 날아온 form 데이타를 commandName과 path에 따라 이 MemberVO와 매칭하여,
	   }   
	
	@RequestMapping("orderdone")
	public String orderDone() {
		return "store/order_done";
	}
	
	
	 /*PRDT_TB에서 불러와야할 정보*/
	
	@ModelAttribute("PRDT_PRICE")
	protected int prdtPriceDAta() {
		List<PRDTBean> bean=storeDao.getPRDTInfo();
		System.out.println("prdtpriceData: " + bean);
		return bean.get(1).getPRDT_PRICE();
	}
	
	
	@ModelAttribute("PRDT_COL")
	protected List<String> colorData() {
		List<PRDTBean> beanList=storeDao.getPRDTInfo();
		List<String> colorList = new ArrayList<String>();		
		for(int i=0; i<beanList.size(); i++){
			colorList.add(beanList.get(i).getPRDT_COLOR());
		}
		return colorList;
	}
	
	
	@ModelAttribute("PRDT_SIZE")
	protected List<String> sizeData() {
		List<PRDTBean> beanList=storeDao.getPRDTInfo();
		List<String> sizeList = new ArrayList<String>();		
		for(int i=0; i<beanList.size(); i++){
			sizeList.add(beanList.get(i).getPRDT_SIZE_PK());
		}
		return sizeList;
	}

	
	/*PRDT_POST_TB에서 불러와야할 정보*/
	
	@ModelAttribute("POST_ST")
	protected String postSTData() {
		PRDTPostBean bean=storeDao.getPostInfo();
		System.out.println("prdtNameData: " + bean);
		return bean.getPRDT_ST_NM_PK();
	}
	
	@ModelAttribute("POST_BODY")
	protected String postBodyData() {
		PRDTPostBean bean=storeDao.getPostInfo();
		System.out.println("prdtNameData: " + bean);
		return bean.getPP_BODY();
	}
	
	@ModelAttribute("POST_DLVR")
	protected String postDLVRData() {
		PRDTPostBean bean=storeDao.getPostInfo();
		System.out.println("prdtNameData: " + bean);
		return bean.getDLVR_CHRG_NM_PK();
	}
	
	@ModelAttribute("POST_MILE")
	protected int postMILEData() {
		PRDTPostBean bean=storeDao.getPostInfo();
		System.out.println("prdtNameData: " + bean);
		return bean.getPP_SAVING_MILEAGE_PERCENT();
	}
	
	@ModelAttribute("POST_NAME_List")
	protected List<String> postNameList() {
		List<PRDTPostBean> bean=storeDao.getPostInfoList();
		List<String> postNameList = new ArrayList<String>();
		System.out.println("postNameData: " + bean);
		
		for(int i=0; i<bean.size(); i++){
			postNameList.add(bean.get(i).getPP_TITLE());
		}
			return postNameList;
	}
	
	/*PRDT_COMMON_INFO_TB에서 불러와야할 정보*/
	
	@ModelAttribute("Common_CATEGORY")
	protected String prdtCategoryData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		System.out.println("prdtNameData: " + bean);
		return bean.getPRDT_CTG_NM();
	}
	
	
	@ModelAttribute("Common_NAME")
	protected String prdtNameData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		System.out.println("prdtNameData: " + bean);
		return bean.getPCI_PRDT_NAME();
	}
	
	@ModelAttribute("Common_NAME_List")
	protected List<String> prdtNameList() {
		List<PRDTCommonBean> bean=storeDao.getCommonInfoList();
		List<String> prdtNameList = new ArrayList<String>();
		System.out.println("prdtNameData: " + bean);
		
		for(int i=0; i<bean.size(); i++){
			prdtNameList.add(bean.get(i).getPCI_PRDT_NAME());
		}
			return prdtNameList;
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

	/*PRDT_COMMET_TB에서 불러와야할 정보*/
	
	@ModelAttribute("REVIEW_FOOT")
	protected Object footData(){
			List<String> foot = new ArrayList<String>();
			foot.add("발볼 넓음");
			foot.add("발볼 좁음");
			foot.add("발등 높음");
		return foot;
		}
	
	
/*	 상품주문시 식별번호 불러오기 
	protected int getCD_PK() {
		PRDTBean bean=prdtDao.getCD_PK();
		System.out.println("CD_PKData: " + bean);
		return bean.getPRDT_CD_PK();
	}
	*/
	
	@RequestMapping(value = "/nmd", method = RequestMethod.POST)
	public String submit(PRDTBean prdtBean){

		System.out.println("2번"+prdtBean);
	
		PRDTBean bean= prdtDao.insertOrder(prdtBean);
		System.out.println("CD_PKData: " + bean);
		
		int CD = bean.getPRDT_CD_PK();
		
		System.out.println("3번"+CD);
		
		return "store/order_done";
	}


	@RequestMapping("store_category")
	public String goToStorecategory() {
		return "store/store_category";
	}
}
