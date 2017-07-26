package com.shoes.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.dao.MemberDAO;
import com.shoes.dao.UsedTradeDAO;
import com.shoes.model.DistrictTbBean;
import com.shoes.model.PrdtSizeTbBean;
import com.shoes.model.UsedStTbBean;
import com.shoes.model.UsedTradePostTbBean;
import com.shoes.model.UsedTradeStTbBean;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;


@Controller
public class UsedTradeController{

	@Autowired
	private UsedTradeDAO usedDAO;
	
	@Autowired
	private MemberDAO memberDAO;
	
	
	// 중고장터로 이동
	@RequestMapping("usedStore")
	public ModelAndView goToUsedStore(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		String currentPageNo = request.getParameter("currentPageNo");
		String PAGE_ROW = request.getParameter("PAGE_ROW");
		
		System.out.println("요청받은 페이지 번호: " + currentPageNo);
		System.out.println("요청받은 한 페이지에 표시할 게시글수: " + PAGE_ROW);
		
		Map<String, Object> commandMap = new HashMap<String, Object>();
		commandMap.put("currentPageNo", currentPageNo);
		commandMap.put("PAGE_ROW", PAGE_ROW);
		
		Map<String, Object> resultMap = usedDAO.selectUsedTradePostTbList(commandMap);
		mav.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
		
		
		// DB로부터 특정 범위의 중고거래글을 불러온다.
		List<Map<String, Object>> usedTradePostTbBeanList = (List<Map<String, Object>>)resultMap.get("result");
		
		
		// 불러온 거래글들 각각에 정규식을 적용해 첫번째 이미지만 따로 빼낸다.
		Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");
		Matcher match = null;
		
		String body = "";
		String mainImg = "";
		List<String> mainImgList = new ArrayList<String>();
		
		
		HashMap<String, Object> hashBean = null;
		UsedTradePostTbBean postBean = null;
		Iterator it = usedTradePostTbBeanList.iterator();
		while(it.hasNext()){
			hashBean = (HashMap<String, Object>)it.next();
			
			int totalCount = ((BigDecimal)hashBean.get("TOTAL_COUNT")).intValue();
			
			if(totalCount != 0){
				body = (String)hashBean.get("UTP_BODY");
				System.out.println("hashBean: " + hashBean);
				System.out.println("body: " + body);
				
				match = pattern.matcher(body);
				
				if(match.find()){	// 본문에 이미지 태그가 있다면,
					mainImg = match.group(1);	// 글 내용 중에 첫번째 이미지 태그를 뽑아옴.
					mainImgList.add(mainImg);
				}else{
					StringBuilder builder = new StringBuilder();
					builder.append(request.getContextPath());
					builder.append("/resources/image/noimg_green.png");
					mainImgList.add(builder.toString());
				}
				
				System.out.println("body: " + body);
				System.out.println("mainImg: " + mainImg);
			}
		}
		
		mav.addObject("mainImgList", mainImgList);
		mav.addObject("usedTradePostTbBeanList", usedTradePostTbBeanList);
		
		//mav.setViewName("usedStore/usedStoreMainMasonry");
		mav.setViewName("usedStore/usedStoreMain");
		
		return mav;
	}
	
	// 중고거래글 작성 페이지로 이동(CKEditor)
	// 파라미터로 게시글 번호가 넘어온다면 DB에서 받아와서 함께 전송해주고(수정),
	// 파라미터로 아무값도 안넘어온다면 그대로 글 작성 페이지로 연결해준다.(새로 글쓰기)
	@RequestMapping(value = "/used_post_write_ck", method = RequestMethod.GET)
	public ModelAndView usedStroePostWriteCKGet(@RequestParam(value = "UTP_SQ_PK", defaultValue = "0") int UTP_SQ_PK, HttpSession session){
		ModelAndView mav = new ModelAndView();
		
		// 1. 현재 세션의 이메일(작성자) 받아오기
		String email = (String)session.getAttribute("userEmail");

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
		
		if(UTP_SQ_PK > 0){
			System.out.println("게시글 수정 요청. 클라이언트로부터 넘어온 UTP_SQ_PK: " + UTP_SQ_PK);
			
			// 현재 세션의 mem_email과 요청글의 mem_email이 일치하는지 검사
			String dbMemEmail = usedDAO.getUsedTradePostTbMemEmailPk(UTP_SQ_PK);
			String sessionMemEmail = (String)session.getAttribute("user_email");
			//String sessionMemEmail = "testemail@test.com";
			
			if(dbMemEmail.equals(sessionMemEmail) == false){
				// 일치하지 않는다면 수정자의 권한 검사
				String sessionGradeStPk = memberDAO.getMemberTbGradeStPk(sessionMemEmail);
				switch(sessionGradeStPk){
					case "운영자":
						// 운영자나 관리자라면 로그를 띄우고 통과
						System.out.println(
								sessionGradeStPk + " 등급의 " + sessionMemEmail + " 유저가 "
							+	UTP_SQ_PK + "번 글을 수정합니다."		);
						break;
					case "관리자":
						System.out.println(
								sessionGradeStPk + " 등급의 " + sessionMemEmail + " 유저가 "
							+	UTP_SQ_PK + "번 글을 수정합니다."		);
						break;
					default:
					// 운영자도 아니면서 남의 글을 수정하려 했다면, 로그를 남기고 신규글 작성으로 전환
						System.out.println(
								sessionGradeStPk + " 등급의 " + sessionMemEmail + " 유저가 "
							+	UTP_SQ_PK + "번 글의 수정을 시도했습니다."		);
						UTP_SQ_PK = 0;
						break;
					}
			}else{
				// 작성자와 수정자가 일치한다면 통과
			}
			
			UsedTradePostTbBean bean = usedDAO.getUsedTradePostTb(UTP_SQ_PK);
			mav.addObject("orginalPost", bean);
		}
		
		mav.setViewName("usedStore/used_post_write_ck");
		
		return mav;
	}
	
	// 클라이언트 쪽에서 중고거래글 작성후에, 그 데이터를 서버로 전송할때.(CKEditor)
	@RequestMapping(value = "/used_post_write_ck", method = RequestMethod.POST)
	public ModelAndView usedStroePostWritePEGet(UsedTradePostTbBean usedPostBean, HttpServletRequest request, HttpSession session){
		System.out.println("전송받음 " + usedPostBean);
		/*
		 	전송받음 UsedTradePostTbBean [
		 		UTP_SQ_PK=0,
		 		UTP_TITLE=제목,
		 		UTP_BODY=본문<img alt="" src="/shoes_shop/resources/upload/background.png" style="height:338px; width:481px" />,
		 		UTP_REPORTING_DT=null,
		 		UTP_FIN_MODIF_DT=null,
		 		MEM_EMAIL_PK=null,
		 		UTP_CNT=0,
		 		USED_TRADE_ST_PK=예약중,
		 		DISTRICT_PK=강원,
		 		PRDT_SIZE_PK=210,
		 		USED_ST_GRADE_PK=B급,
		 		PRDT_CD_PK=0,
		 		UTP_NOTIFY_NUMBER=0
		 	]
		*/
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect: usedStore");
		
		String dbMemEmail = usedDAO.getUsedTradePostTbMemEmailPk(usedPostBean.getUTP_SQ_PK());
		String sessionMemEmail = (String)session.getAttribute("userEmail");
		
		// 1. 작성자가 누구인지 아래 로직으로 판별
		// 신규 글이라면 MEM_EMAIL_PK에 현재 세션의 MEM_EMAIL_PK 저장.
		if(usedPostBean.getUTP_SQ_PK() == 0){
			usedPostBean.setMEM_EMAIL_PK(sessionMemEmail);
		}else{
		// 게시글 수정 요청이라면 작성자와 수정자가 일치하는지 검사
			if(dbMemEmail.equals(sessionMemEmail) == false){
			// 일치하지 않는다면 수정자의 권한 검사
				String sessionGradeStPk = memberDAO.getMemberTbGradeStPk(sessionMemEmail);
				switch(sessionGradeStPk){
					case "운영자":
					// 운영자나 관리자라면 로그를 띄우고 기존 작성자의 이름으로 저장.
						System.out.println(
								sessionGradeStPk + " 등급의 " + sessionMemEmail + " 유저가 "
							+	usedPostBean.getUTP_SQ_PK() + "번 글을 수정합니다."		);
						usedPostBean.setMEM_EMAIL_PK(dbMemEmail);
						break;
					case "관리자":
						System.out.println(
								sessionGradeStPk + " 등급의 " + sessionMemEmail + " 유저가 "
							+	usedPostBean.getUTP_SQ_PK() + "번 글을 수정합니다."		);
						usedPostBean.setMEM_EMAIL_PK(dbMemEmail);
						break;
					default:
					// 운영자도 아니면서 남의 글을 수정하려 했다면, 로그를 남기고 신규글 작성으로 전환
						System.out.println(
								sessionGradeStPk + " 등급의 " + sessionMemEmail + " 유저가 "
							+	usedPostBean.getUTP_SQ_PK() + "번 글의 수정을 시도했습니다."		);
							usedPostBean.setUTP_SQ_PK(0);
						usedPostBean.setMEM_EMAIL_PK(sessionMemEmail);
						break;
				}
			}else{
			// 작성자와 수정자가 일치한다면 MEM_EMAIL_PK에 현재 세션의 MEM_EMAIL_PK 저장.
				usedPostBean.setMEM_EMAIL_PK(sessionMemEmail);
			}
		}
						
		// 2. 제목이 비어있다면 "무제" 라고 추가.
		if(usedPostBean.getUTP_TITLE().equals("") || usedPostBean.getUTP_TITLE() == null){
			usedPostBean.setUTP_TITLE("무제");
		}
		
		// 3. 본문이 비어있다면 "내용없음" 이라고 추가.
		if(usedPostBean.getUTP_BODY().equals("") || usedPostBean.getUTP_BODY() == null){
			usedPostBean.setUTP_BODY("내용없음");
		}
		
		// 4. 신규글이라면 작성일과 최종수정일을 서버의 현재시간으로 설정.
		//		기존 게시글의 수정 요청이라면 작성일을 DB에 저장된 값으로 저장하고, 최종수정일은 서버의 현재시간으로 설정.
		java.sql.Date currentServerTime = new java.sql.Date(new java.util.Date().getTime());
		if(usedPostBean.getUTP_SQ_PK() == 0){
			usedPostBean.setUTP_REPORTING_DT(currentServerTime);
			usedPostBean.setUTP_FIN_MODIF_DT(currentServerTime);
		}else{
			usedPostBean.setUTP_REPORTING_DT(usedDAO.getUsedTradePostTbUtpReportingDt(usedPostBean.getUTP_SQ_PK()));
			usedPostBean.setUTP_FIN_MODIF_DT(currentServerTime);
		}
		
		// 5. 신규글이라면 신고횟수를 0으로 설정.
		//		기존 게시글의 수정 요청이라면 DB에 저장된 값을 불러와서 저장.
		if(usedPostBean.getUTP_SQ_PK() == 0){
			usedPostBean.setUTP_NOTIFY_NUMBER(0);
		}else{
			usedPostBean.setUTP_NOTIFY_NUMBER(usedDAO.getUsedTradePostTbUtpNotifyNumber(usedPostBean.getUTP_SQ_PK()));
		}
		
		// 6. 현재 세션으로부터 MEM_EMAIL_PK를 얻어와 저장. 로그인 기능이 완성되면 주석을 풀 것.
		usedPostBean.setMEM_EMAIL_PK(sessionMemEmail);
		
		// 7. UTP_SQ_PK가 0이 아니라면(새로 작성된 글이 아니라면) DB로부터 기존 조회수를 불러와 갱신.
		if(usedPostBean.getUTP_SQ_PK() != 0){
			usedPostBean.setUTP_CNT(usedDAO.getUsedTradePostTbUtpCnt(usedPostBean.getUTP_SQ_PK()));
		}
		
		System.out.println("저장직전 " + usedPostBean);
		
		// 7. UTP_SQ_PK가 0이면(새로 작성된 글이면) USED_TRADE_POST_TB에 저장.
		//	0이 아니면(게시글 수정 요청이면) USED_TRADE_POST_TB에 업데이트.
		if(usedPostBean.getUTP_SQ_PK() == 0){
			usedDAO.insertUsedTradePostTb(usedPostBean);
		}else{
			usedDAO.updateUsedTradePostTb(usedPostBean);
		}
		
		return mav;
	}
	
	// 게시글 클릭시 상세화면 보여주기
	@RequestMapping("/detail")
	public ModelAndView usedPostDetailView(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("usedStore/used_post_detail_view");
		return mav;
	}
}
