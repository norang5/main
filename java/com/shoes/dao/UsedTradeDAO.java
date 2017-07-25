package com.shoes.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.shoes.model.DistrictTbBean;
import com.shoes.model.PrdtSizeTbBean;
import com.shoes.model.UsedStTbBean;
import com.shoes.model.UsedTradePostTbBean;
import com.shoes.model.UsedTradeStTbBean;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

// 중고장터와 관련된 DB작업 처리
@Repository
public class UsedTradeDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 신규 중고거래 게시글을 DB에 등록하기
	public void insertUsedTradePostTb(UsedTradePostTbBean bean){
		System.out.println("\n저장하기 직전의 빈객체\n" + bean);
		sqlSessionTemplate.insert("insertUsedTradePostTb", bean);
		
	}
	
	// DB상의 기존 중고거래 게시글을 갱신하기
	public void updateUsedTradePostTb(UsedTradePostTbBean bean){
		sqlSessionTemplate.update("updateUsedTradePostTb", bean);
	}
	
	// PRDT_SIZE_TB로부터 치수목록 받아오기
	public List<PrdtSizeTbBean> getPrdtSizeList(){
		List<PrdtSizeTbBean> list = sqlSessionTemplate.selectList("getPrdtSizeList");
		return list;
	}
	
	// DISTRICT_TB로부터 지역 목록 받아오기
	public List<DistrictTbBean> getDistrictList(){
		List<DistrictTbBean> list = sqlSessionTemplate.selectList("getDistrictList");
		return list;
	}
	
	// USED_TRADE_ST_TB로부터 중고거래 상태 받아오기
	public List<UsedTradeStTbBean> getUsedTradeStList(){
		List<UsedTradeStTbBean> list = sqlSessionTemplate.selectList("getUsedTradeStList");
		return list;
	}
	
	// USED_ST_TB로부터 중고상품 상태 받아오기
	public List<UsedStTbBean> getUsedStList(){
		List<UsedStTbBean> list = sqlSessionTemplate.selectList("getUsedStList");
		return list;
	}
	
	// USED_TRADE_POST_TB로부터 USED_SQ_PK와 일치하는 작성일 받아오기
	public java.sql.Date getUsedTradePostTbUtpReportingDt(int UTP_SQ_PK){
		return sqlSessionTemplate.selectOne("getUsedTradePostTbUtpReportingDt", UTP_SQ_PK);
	}
	
	// USED_TRADE_POST_TB로부터 USED_SQ_PK와 일치하는 레코드 받아오기
	public UsedTradePostTbBean getUsedTradePostTb(int UTP_SQ_PK){
		return sqlSessionTemplate.selectOne("getUsedTradePostTb", UTP_SQ_PK);
	}
	
	public int getUsedTradePostTbUtpNotifyNumber(int UTP_SQ_PK){
		return sqlSessionTemplate.selectOne("getUsedTradePostTbUtpNotifyNumber", UTP_SQ_PK);
	}
	
	// USED_TRADE_POST_TB로부터 USED_SQ_PK와 일치하는 레코드의 MEM_EMAIL만 받아오기
	public String getUsedTradePostTbMemEmailPk(int UTP_SQ_PK){
		return sqlSessionTemplate.selectOne("getUsedTradePostTbMemEmailPk", UTP_SQ_PK);
	}
	
	// USED_TRADE_POST_TB로부터 USED_SQ_PK와 일치하는 레코드의 UTP_CNT(조회수)만 받아오기
	public int getUsedTradePostTbUtpCnt(int UTP_SQ_PK){
		return sqlSessionTemplate.selectOne("getUsedTradePostTbUtpCnt", UTP_SQ_PK);
	}
	
	// USED_TRADE_POST_TB로부터 특정범위의 레코드 받아오기
	public List<UsedTradePostTbBean> getUsedTradePostTbList(int startrow, int endrow){
		HashMap<String,Integer> map = new HashMap<String,Integer>();
		map.put("startrow", startrow);
		map.put("endrow", endrow);
		return sqlSessionTemplate.selectList("getUsedTradePostTbList", map);
	}
		
	// USED_TRADE_POST_TB로부터 특정범위의 정보를 Map에 담아 레코드 받아오기
	public Map<String, Object> selectUsedTradePostTbList(Map<String, Object> map){
		return (Map<String, Object>) selectPagingList("selectUsedTradePostTbList", map);
	}
	
	// 전자정부 프레임워크에서 제공하는 PaginationInfo 클래스를 활용해 페이지 범위를 계산하는 메소드.
	public Map selectPagingList(String queryId, Object params){
		Map<String,Object> map = (Map<String,Object>)params;
		PaginationInfo paginationInfo = null;
		
		if(map.containsKey("currentPageNo") == false || StringUtils.isEmpty(map.get("currentPageNo")) == true)
			map.put("currentPageNo","1");
		
		paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(Integer.parseInt(map.get("currentPageNo").toString()));
		if(map.containsKey("PAGE_ROW") == false || StringUtils.isEmpty(map.get("PAGE_ROW")) == true){
			paginationInfo.setRecordCountPerPage(15);
		}else{
			paginationInfo.setRecordCountPerPage(Integer.parseInt(map.get("PAGE_ROW").toString()));
		}
		paginationInfo.setPageSize(10);
		
		int start = paginationInfo.getFirstRecordIndex();
		int end = start + paginationInfo.getRecordCountPerPage();
		map.put("START",start+1);
		map.put("END",end);
		
		params = map;
		
		Map<String,Object> returnMap = new HashMap<String,Object>();
		
		// DB에 쿼리 요청
		List<Map<String,Object>> list = sqlSessionTemplate.selectList(queryId,params);
		
		if(list.size() == 0){
			map = new HashMap<String,Object>();
			map.put("TOTAL_COUNT",0);  
			list.add(map);
			
			if(paginationInfo != null){
				paginationInfo.setTotalRecordCount(0);
				returnMap.put("paginationInfo", paginationInfo);
			}
		}else{
			if(paginationInfo != null){
				paginationInfo.setTotalRecordCount(Integer.parseInt(list.get(0).get("TOTAL_COUNT").toString()));
				returnMap.put("paginationInfo", paginationInfo);
			}
		}
		returnMap.put("result", list);
		return returnMap;
	}
	
} // class UsedTradeDAO{}




















