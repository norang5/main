package com.shoes.model;

// 중고상품 상태 테이블의 Bean
public class UsedStTbBean{
	private String USED_ST_GRADE_PK;

	@Override
	public String toString(){
		return "UsedStTbBean [USED_ST_GRADE_PK=" + USED_ST_GRADE_PK + "]";
	}

	public String getUSED_ST_GRADE_PK(){
		return USED_ST_GRADE_PK;
	}

	public void setUSED_ST_GRADE_PK(String uSED_ST_GRADE_PK){
		USED_ST_GRADE_PK = uSED_ST_GRADE_PK;
	}
}
