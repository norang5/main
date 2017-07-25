package com.shoes.model;

import java.sql.Date;

// 중고거래 게시글 테이블의 빈
public class UsedTradePostTbBean{
	private int UTP_SQ_PK;			// 게시글 식별번호(Sequence)
	private String UTP_TITLE;		// 제목
	private String UTP_BODY;		// 본문
	private Date UTP_REPORTING_DT;	// 작성일
	private Date UTP_FIN_MODIF_DT;	// 최종수정일
	private int UTP_CNT;			// 조회수
	private String USED_TRADE_ST_PK;	// 거래상태(판매중/판매완료 등등)
	private String DISTRICT_PK;			// 거래지역
	private String PRDT_SIZE_PK;		// 신발 사이즈
	private String USED_ST_GRADE_PK;	// 판매품의 상태등급(최상/B급/사용감 있음/준수)
	private String MEM_EMAIL_PK;	// 작성자 이메일
	private int UTP_NOTIFY_NUMBER;	// 이 게시글이 신고당한 횟수
	
	public int getUTP_NOTIFY_NUMBER(){
		return UTP_NOTIFY_NUMBER;
	}

	public void setUTP_NOTIFY_NUMBER(int uTP_NOTIFY_NUMBER){
		UTP_NOTIFY_NUMBER = uTP_NOTIFY_NUMBER;
	}

	public int getUTP_SQ_PK(){
		return UTP_SQ_PK;
	}

	public void setUTP_SQ_PK(int uTP_SQ_PK){
		UTP_SQ_PK = uTP_SQ_PK;
	}

	public String getUTP_TITLE(){
		return UTP_TITLE;
	}

	public void setUTP_TITLE(String uTP_TITLE){
		UTP_TITLE = uTP_TITLE;
	}

	public String getUTP_BODY(){
		return UTP_BODY;
	}

	public void setUTP_BODY(String uTP_BODY){
		UTP_BODY = uTP_BODY;
	}

	public Date getUTP_REPORTING_DT(){
		return UTP_REPORTING_DT;
	}

	public void setUTP_REPORTING_DT(Date uTP_REPORTING_DT){
		UTP_REPORTING_DT = uTP_REPORTING_DT;
	}

	public Date getUTP_FIN_MODIF_DT(){
		return UTP_FIN_MODIF_DT;
	}

	public void setUTP_FIN_MODIF_DT(Date uTP_FIN_MODIF_DT){
		UTP_FIN_MODIF_DT = uTP_FIN_MODIF_DT;
	}

	public String getMEM_EMAIL_PK(){
		return MEM_EMAIL_PK;
	}

	public void setMEM_EMAIL_PK(String mEM_EMAIL_PK){
		MEM_EMAIL_PK = mEM_EMAIL_PK;
	}

	public int getUTP_CNT(){
		return UTP_CNT;
	}

	public void setUTP_CNT(int uTP_CNT){
		UTP_CNT = uTP_CNT;
	}

	public String getUSED_TRADE_ST_PK(){
		return USED_TRADE_ST_PK;
	}

	public void setUSED_TRADE_ST_PK(String uSED_TRADE_ST_PK){
		USED_TRADE_ST_PK = uSED_TRADE_ST_PK;
	}

	public String getDISTRICT_PK(){
		return DISTRICT_PK;
	}

	public void setDISTRICT_PK(String dISTRICT_PK){
		DISTRICT_PK = dISTRICT_PK;
	}

	public String getPRDT_SIZE_PK(){
		return PRDT_SIZE_PK;
	}

	public void setPRDT_SIZE_PK(String pRDT_SIZE_PK){
		PRDT_SIZE_PK = pRDT_SIZE_PK;
	}

	public String getUSED_ST_GRADE_PK(){
		return USED_ST_GRADE_PK;
	}

	public void setUSED_ST_GRADE_PK(String uSED_ST_GRADE_PK){
		USED_ST_GRADE_PK = uSED_ST_GRADE_PK;
	}

	@Override
	public String toString(){
		return "UsedTradePostTbBean [UTP_SQ_PK=" + UTP_SQ_PK + ", UTP_TITLE=" + UTP_TITLE + ", UTP_BODY=" + UTP_BODY
				+ ", UTP_REPORTING_DT=" + UTP_REPORTING_DT + ", UTP_FIN_MODIF_DT=" + UTP_FIN_MODIF_DT + ", UTP_CNT="
				+ UTP_CNT + ", USED_TRADE_ST_PK=" + USED_TRADE_ST_PK + ", DISTRICT_PK=" + DISTRICT_PK
				+ ", PRDT_SIZE_PK=" + PRDT_SIZE_PK + ", USED_ST_GRADE_PK=" + USED_ST_GRADE_PK + ", MEM_EMAIL_PK="
				+ MEM_EMAIL_PK + ", UTP_NOTIFY_NUMBER=" + UTP_NOTIFY_NUMBER + "]";
	}
}
