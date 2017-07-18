package com.shoes.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoes.model.DistrictTbBean;
import com.shoes.model.PrdtSizeTbBean;
import com.shoes.model.UsedStTbBean;
import com.shoes.model.UsedTradePostTbBean;
import com.shoes.model.UsedTradeStTbBean;

// 중고장터와 관련된 DB작업 처리
@Repository
public class UsedTradeDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 중고거래 게시글을 DB에 등록하기
	public void insertUsedTradePost(UsedTradePostTbBean bean){
		
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
	
	
} // class UsedTradeDAO{}
