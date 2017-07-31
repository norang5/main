package com.shoes.controller;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	

/*	 상품주문시 식별번호 불러오기 
	protected int getCD_PK() {
		PRDTBean bean=prdtDao.getCD_PK();
		System.out.println("CD_PKData: " + bean);
		return bean.getPRDT_CD_PK();
	}
	*/
	
	
	@RequestMapping("store")
	public String goToStore() {
		return "store/storeMain";
	}
	
	@RequestMapping("store_category")
	public String goToStorecategory(@RequestParam("category") String category, Model model,HttpServletRequest request) {
		
		System.out.println("컨트롤러 : "+category);
		
		List<PRDTCommonBean> categoryPrdtList=storeDao.getCommonCategoryList(category);
		List<Integer> PCISQList = new ArrayList<Integer>();
		
		for(int i=0; i<categoryPrdtList.size(); i++){
			PCISQList.add(categoryPrdtList.get(i).getPCI_SQ_PK());
		}
	
		List<PRDTPostBean> postTitleList=storeDao.getPostTitleList(PCISQList);
		List<Integer> priceList=storeDao.getPriceList(PCISQList);
		
		
		// 이미지 뽑아오기 기능
		Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");
		Matcher match = null;
		String body ="";
		String mainImg ="";
		List<String> mainImgList = new ArrayList<String>();
		System.out.println(postTitleList);
		if(postTitleList!=null){
			for(int i=0; i<postTitleList.size(); i++){
				if(postTitleList.get(i)!=null){
					   	body= postTitleList.get(i).getPP_BODY();
					
						System.out.println("body: " + body);
						
						match = pattern.matcher(body);
						
						if(match.find()){	// 본문에 이미지 태그가 있다면,
							mainImg = match.group(1);	// 글 내용 중에 첫번째 이미지 태그를 뽑아옴.
							mainImgList.add(mainImg);
							
						}else{
							
							StringBuilder builder = new StringBuilder();
							builder.append(request.getContextPath());
							builder.append("/resources/image/noImage.png");
							mainImgList.add(builder.toString());
						}
						
						System.out.println("mainImg: " + mainImg);
				}else{
					StringBuilder builder = new StringBuilder();
					builder.append(request.getContextPath());
					builder.append("/resources/image/noImage.png");
					mainImgList.add(builder.toString());
					
					System.out.println("상품목록없음");
				}
			}
		}else{
			System.out.println("상품목록없음");
		}
		
	
		System.out.println("prdtNameData: " + categoryPrdtList);
		System.out.println("postTitleList: " + postTitleList);
		System.out.println("priceList: " + priceList);
		System.out.println("mainImgList: " + mainImgList);
		
        model.addAttribute("categoryPrdtList", categoryPrdtList);
        model.addAttribute("postTitleList", postTitleList);
        model.addAttribute("priceList", priceList);
        model.addAttribute("mainImgList", mainImgList);
        
		return "store/store_category";
	}
	
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String goToCategory(@RequestParam("name") String name, Model model, HttpServletRequest request){
	
		System.out.println("상세페이지 들옴"+name);
		
		PRDTCommonBean commonInfo = storeDao.getCommonInfo(name);

		System.out.println("Data: "+commonInfo);
		
		int PCI_SQ_PK = commonInfo.getPCI_SQ_PK();
		
		
		//포스트 정보 가져오기 
		PRDTPostBean postInfo = storeDao.getPostInfo(PCI_SQ_PK);
		System.out.println("Data: " + postInfo);
		
		int PP_SQ_PK = postInfo.getPP_SQ_PK();
		System.out.println("피피에스큐피케이: " + PP_SQ_PK);
	
		
		//상품정보 가져오기 
		
		List<PRDTBean> prdtInfo=storeDao.getPRDTInfo(PCI_SQ_PK);
		System.out.println("Data: " + prdtInfo);
		
		List<String> prdtColorInfo = new ArrayList<String>();
		
		for(int i=0; i<prdtInfo.size(); i++){
			
				prdtColorInfo.add(prdtInfo.get(i).getPRDT_COLOR());
				
		}
		
		List<String> prdtSizeInfo = new ArrayList<String>();
		
		for(int i=0; i<prdtInfo.size(); i++){
			
			prdtSizeInfo.add(prdtInfo.get(i).getPRDT_SIZE_PK());
				
		}
			
			System.out.println("Data: " + prdtColorInfo);
		
		
		//코멘트 리스트 받아오기
		List<PRDTCommentBean> commentList = storeDao.getcommentList(PP_SQ_PK);
		System.out.println("코멘트리스트"+commentList);
	

		// 이미지 뽑아오기 기능
		Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");
		Matcher match = null;
		String body ="";
		String mainImg ="";

		body=postInfo.getPP_BODY();
		System.out.println("body: " + body);
		match = pattern.matcher(body);
		
		if(match.find()){	// 본문에 이미지 태그가 있다면,
			mainImg = match.group(1);	// 글 내용 중에 첫번째 이미지 태그를 뽑아옴.
			
		}else{
			
			StringBuilder builder = new StringBuilder();
			builder.append(request.getContextPath());
			builder.append("/resources/image/noImage.png");
			mainImg=builder.toString();
		}
		
		
        model.addAttribute("commonInfo", commonInfo);
        model.addAttribute("postInfo", postInfo);
        model.addAttribute("prdtInfo", prdtInfo);
        model.addAttribute("prdtColorInfo", prdtColorInfo);
        model.addAttribute("prdtSizeInfo", prdtSizeInfo);
        model.addAttribute("commentList", commentList);
        model.addAttribute("PP_SQ_PK", PP_SQ_PK);
        model.addAttribute("mainImg", mainImg);
        
        
        
		return "store/storeDetail";
	}
	
	
	@RequestMapping("danawa")
	public String goTodanawa() {
		return "store/danawa";
	}
	
	
	@RequestMapping(value = "/buy_review", method = RequestMethod.GET)
	public String newReview(@RequestParam("PP_SQ_PK") int PP_SQ_PK,Model model){

		    System.out.println("바이리뷰 겟"+PP_SQ_PK);
			List<String> foot = new ArrayList<String>();
			foot.add("발볼 넓음");
			foot.add("발볼 좁음");
			foot.add("발등 높음");

			List<String> sizeList = new ArrayList<String>();
		
			List<PrdtSizeTbBean> beanList=prdtDao.getSizeList();
		
			for(int i=0; i<beanList.size(); i++){
			   sizeList.add(beanList.get(i).getPRDT_SIZE_PK());
			}
		
			model.addAttribute("footType", foot);
	        model.addAttribute("allSizeList", sizeList);
	        model.addAttribute("PP_SQ_PK", PP_SQ_PK);
		
	        return "store/buy_review";
	}
	
	@RequestMapping(value = "/buy_review", method = RequestMethod.POST)
	public String submitReview(PRDTCommentBean prdtCommentBean){

		System.out.println("바이리뷰 포스트"+prdtCommentBean);
		System.out.println(prdtCommentBean.getMEM_EMAIL_PK());
		storeDao.insertCommentInfo(prdtCommentBean);
		
		return  "redirect:/store";
	}

	
	@RequestMapping(value = "/product", method = RequestMethod.POST)
	public String submit(PRDTBean prdtBean){

		System.out.println("프로덕트 포스트"+prdtBean);
	
		PRDTBean bean= prdtDao.insertOrder(prdtBean);
		System.out.println("CD_PKData: " + bean);
		
		int CD = bean.getPRDT_CD_PK();
		
		System.out.println("3번"+CD);
		
		return "redirect:/orderdone";
	}

	
	@RequestMapping("orderdone")
	public String orderDone() {
		return "store/order_done";
	}
	
}
