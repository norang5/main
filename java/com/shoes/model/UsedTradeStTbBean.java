package com.shoes.model;

// 중고거래 상태 테이블의 빈
public class UsedTradeStTbBean{
	private String USED_TRADE_ST_PK;

	@Override
	public String toString(){
		return "UsedTradeStTbBean [USED_TRADE_ST_PK=" + USED_TRADE_ST_PK + "]";
	}

	public String getUSED_TRADE_ST_PK(){
		return USED_TRADE_ST_PK;
	}

	public void setUSED_TRADE_ST_PK(String uSED_TRADE_ST_PK){
		USED_TRADE_ST_PK = uSED_TRADE_ST_PK;
	}
}
