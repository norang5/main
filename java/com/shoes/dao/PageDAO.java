package com.shoes.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

// 페이징 처리를 하기 위한 DAO
// 자세한 사항은 아래 주소를 참조
// http://addio3305.tistory.com/89
public class PageDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public Map selectPagingList(String queryId, Object params){
		System.out.println("queryId: " + queryId);
		
		Map<String, Object> map = (Map<String, Object>)params;
		
		// 페이징에 필요한 기능을 가지고 있는 전자정부 프레임워크의 클래스
		PaginationInfo paginationInfo = null;
		
		// 예상치 못한 상황으로 현재 페이지 번호가 없을 경우에 대비한 코드.
		if(map.containsKey("currentPageNo") == false || StringUtils.isEmpty((CharSequence)map.get("currentPageNo")) == true){
			// 특정한 값이 안들어올 경우 현재 페이지를 1로 설정
			map.put("currentPageNo","1");
		}
		
		paginationInfo = new PaginationInfo();
		
		// 예상치 못한 상황으로 한 페이지에 출력할 게시글 수, 정보가 없을 경우에 대비한코드.
		if(map.containsKey("currentPageNo") == false || StringUtils.isEmpty((CharSequence)map.get("PAGE_ROW")) == true){
			// 특정한 값이 안들어올 경우 한 페이지에 15개 게시글 출력
			paginationInfo.setRecordCountPerPage(15);
		}else{
			// 특정한 값이 들어올 경우 한 페이지에 그만한 게시글 출력
			paginationInfo.setRecordCountPerPage(Integer.parseInt(map.get("PAGE_ROW").toString()));
		}
		
		// 한번에 보여줄 페이지의 갯수 설정. [이전]1~10[다음] 식으로 나올 때 1~10의 10개를 설정한 것이다.
		paginationInfo.setPageSize(10);
		
		// 시작과 끝 값을 계산해서 파라미터에 추가하고 쿼리 실행.
		int start = paginationInfo.getFirstRecordIndex();
		int end = start + paginationInfo.getRecordCountPerPage();
		
		map.put("START", start + 1);
		map.put("END", end);
		
		params = map;
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		List<Map<String, Object>> list = sqlSessionTemplate.selectList(queryId, params);
		
		// 조회된 결과값이 없으면, 그에 해당하는 결과를 화면에 표시하도록 TOTAL_COUNT 추가
		if(list.size() == 0){
			map = new HashMap<String, Object>();
			map.put("TOTAL_COUNT", 0);
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
}
