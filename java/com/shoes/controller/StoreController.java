package com.shoes.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shoes.dao.StoreDAO;
import com.shoes.model.PRDTCommonBean;



@Controller
public class StoreController {

	@Autowired
	private StoreDAO storeDao;

	@RequestMapping("nmd")
	public String goToStore() {
		return "store/storeDetail";
	}
	

	@RequestMapping("orderdone")
	public String orderDone() {
		return "store/order_done";
	}
	
	@ModelAttribute("Common_NAME")
	protected String prdtNameData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		return bean.getPCI_PRDT_NAME();
	}
	
	@ModelAttribute("Common_Mat")
	protected String materialData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		return bean.getPCI_MATERIAL();
	}
	
	@ModelAttribute("Common_Con")
	protected String manufactContryData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		return bean.getPCI_MANUFACT_COUNTRY();
	}
	
	@ModelAttribute("Common_Mau")
	protected String manufacturerData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		return bean.getPCI_MANUFACTURER();
	}	
	
	@ModelAttribute("Common_Imp")
	protected String importerData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		return bean.getPCI_IMPORTER();
	}
	
	@ModelAttribute("Common_Qua")
	protected String qualityGuaranteeData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		return bean.getPCI_QUALITY_GUARANTEE();
	}
	
	@ModelAttribute("Common_ATT")
	protected String requireAttentionData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		return bean.getPCI_REQUIRE_ATTENTION();
	}
	
	@ModelAttribute("Common_AS")
	protected String asInfoData() {
		PRDTCommonBean bean=storeDao.getCommonInfo();
		return bean.getPCI_AS_MAN_PHONE();
	}
}
