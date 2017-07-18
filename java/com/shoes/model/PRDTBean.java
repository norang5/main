package com.shoes.model;

import java.util.List;

public class PRDTBean {

	int PRDT_CD_PK;
	String PRDT_COLOR;
	int PRDT_PRICE;
	int PRDT_AMT;
	int PCI_SQ_PK;
	String PRDT_SIZE_PK;
/*    private List<PRDTBean> PRDTList;

	public List<PRDTBean> getPRDTList() {
		return PRDTList;
	}
	public void setPRDTList(List<PRDTBean> pRDTList) {
		PRDTList = pRDTList;
	}*/
	public int getPRDT_CD_PK() {
		return PRDT_CD_PK;
	}
	public void setPRDT_CD_PK(int pRDT_CD_PK) {
		PRDT_CD_PK = pRDT_CD_PK;
	}
	public String getPRDT_COLOR() {
		return PRDT_COLOR;
	}
	public void setPRDT_COLOR(String pRDT_COLOR) {
		PRDT_COLOR = pRDT_COLOR;
	}
	public int getPRDT_PRICE() {
		return PRDT_PRICE;
	}
	public void setPRDT_PRICE(int pRDT_PRICE) {
		PRDT_PRICE = pRDT_PRICE;
	}
	public int getPRDT_AMT() {
		return PRDT_AMT;
	}
	public void setPRDT_AMT(int pRDT_AMT) {
		PRDT_AMT = pRDT_AMT;
	}
	public int getPCI_SQ_PK() {
		return PCI_SQ_PK;
	}
	public void setPCI_SQ_PK(int pCI_SQ_PK) {
		PCI_SQ_PK = pCI_SQ_PK;
	}
	public String getPRDT_SIZE_PK() {
		return PRDT_SIZE_PK;
	}
	public void setPRDT_SIZE_PK(String pRDT_SIZE_PK) {
		PRDT_SIZE_PK = pRDT_SIZE_PK;
	}
	
}
