package com.shoes.model;

// 지역 테이블의 빈
public class DistrictTbBean{
	private String DISTRICT_PK;

	@Override
	public String toString(){
		return "DistrictTbBean [DISTRICT_PK=" + DISTRICT_PK + "]";
	}

	public String getDISTRICT_PK(){
		return DISTRICT_PK;
	}

	public void setDISTRICT_PK(String dISTRICT_PK){
		DISTRICT_PK = dISTRICT_PK;
	}
}
