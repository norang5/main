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
	
	// 신규 중고거래 게시글을 DB에 등록하기
	public void insertUsedTradePostTb(UsedTradePostTbBean bean){
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
	public java.sql.Date getUsedTradePostTbCurrentServerTime(int UTP_SQ_PK){
		return sqlSessionTemplate.selectOne("getUsedTradePostTbCurrentServerTime", UTP_SQ_PK);
	}
	
	// USED_TRADE_POST_TB로부터 USED_SQ_PK와 일치하는 레코드 받아오기
	public UsedTradePostTbBean getUsedTradePostTb(int UTP_SQ_PK){
		return sqlSessionTemplate.selectOne("getUsedTradePostTb", UTP_SQ_PK);
	}
	
	// USED_TRADE_POST_TB로부터 USED_SQ_PK와 일치하는 레코드의 MEM_EMAIL만 받아오기
	public String getUsedTradePostTbMemEmailPk(int UTP_SQ_PK){
		return sqlSessionTemplate.selectOne("getUsedTradePostTbMemEmailPk", UTP_SQ_PK);
	}
	
	// USED_TRADE_POST_TB로부터 USED_SQ_PK와 일치하는 레코드의 UTP_CNT(조회수)만 받아오기
	public int getUsedTradePostTbUtpCnt(int UTP_SQ_PK){
		return sqlSessionTemplate.selectOne("getUsedTradePostTbUtpCnt", UTP_SQ_PK);
	}
	
	
} // class UsedTradeDAO{}
