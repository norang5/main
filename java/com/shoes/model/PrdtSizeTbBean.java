package com.shoes.model;

// 치수 테이블의 빈
public class PrdtSizeTbBean{
	private String PRDT_SIZE_PK;

	@Override
	public String toString(){
		return "PrdtSizeTbBean [PRDT_SIZE_PK=" + PRDT_SIZE_PK + "]";
	}

	public String getPRDT_SIZE_PK(){
		return PRDT_SIZE_PK;
	}

	public void setPRDT_SIZE_PK(String pRDT_SIZE_PK){
		PRDT_SIZE_PK = pRDT_SIZE_PK;
	}

	
}
