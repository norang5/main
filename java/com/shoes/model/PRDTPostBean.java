package com.shoes.model;

public class PRDTPostBean {
	
	int PP_SQ_PK;		
	
	String PP_TITLE;			
	String PRDT_ST_NM_PK;					//FK
	String PP_BODY;					
	String DLVR_CHRG_NM_PK;				//FK
	int PP_SAVING_MILEAGE_PERCENT;	
	String MEM_EMAIL_PK;	 			//FK	
	String PP_REPORTING_DT;			
	String PP_FIN_MODIF_DT;		
	int PCI_SQ_PK;								 //FK
	
public int getPP_SQ_PK() {
		return PP_SQ_PK;
	}
	public void setPP_SQ_PK(int pP_SQ_PK) {
		PP_SQ_PK = pP_SQ_PK;
	}
	public String getPP_TITLE() {
		return PP_TITLE;
	}
	public void setPP_TITLE(String pP_TITLE) {
		PP_TITLE = pP_TITLE;
	}
	public String getPRDT_ST_NM_PK() {
		return PRDT_ST_NM_PK;
	}
	public void setPRDT_ST_NM_PK(String pRDT_ST_NM_PK) {
		PRDT_ST_NM_PK = pRDT_ST_NM_PK;
	}
	public String getPP_BODY() {
		return PP_BODY;
	}
	public void setPP_BODY(String pP_BODY) {
		PP_BODY = pP_BODY;
	}
	public String getDLVR_CHRG_NM_PK() {
		return DLVR_CHRG_NM_PK;
	}
	public void setDLVR_CHRG_NM_PK(String dLVR_CHRG_NM_PK) {
		DLVR_CHRG_NM_PK = dLVR_CHRG_NM_PK;
	}
	public int getPP_SAVING_MILEAGE_PERCENT() {
		return PP_SAVING_MILEAGE_PERCENT;
	}
	public void setPP_SAVING_MILEAGE_PERCENT(int pP_SAVING_MILEAGE_PERCENT) {
		PP_SAVING_MILEAGE_PERCENT = pP_SAVING_MILEAGE_PERCENT;
	}
	public String getMEM_EMAIL_PK() {
		return MEM_EMAIL_PK;
	}
	public void setMEM_EMAIL_PK(String mEM_EMAIL_PK) {
		MEM_EMAIL_PK = mEM_EMAIL_PK;
	}
	public String getPP_REPORTING_DT() {
		return PP_REPORTING_DT;
	}
	public void setPP_REPORTING_DT(String pP_REPORTING_DT) {
		PP_REPORTING_DT = pP_REPORTING_DT;
	}
	public String getPP_FIN_MODIF_DT() {
		return PP_FIN_MODIF_DT;
	}
	public void setPP_FIN_MODIF_DT(String pP_FIN_MODIF_DT) {
		PP_FIN_MODIF_DT = pP_FIN_MODIF_DT;
	}
	public int getPCI_SQ_PK() {
		return PCI_SQ_PK;
	}
	public void setPCI_SQ_PK(int pCI_SQ_PK) {
		PCI_SQ_PK = pCI_SQ_PK;
	}
	
	@Override
	public String toString() {
		return "PRDTPostBean [PP_SQ_PK=" + PP_SQ_PK + ", PP_TITLE=" + PP_TITLE + ", PRDT_ST_NM_PK=" + PRDT_ST_NM_PK
				+ ", PP_BODY=" + PP_BODY + ", DLVR_CHRG_NM_PK=" + DLVR_CHRG_NM_PK + ", PP_SAVING_MILEAGE_PERCENT="
				+ PP_SAVING_MILEAGE_PERCENT + ", MEM_EMAIL_PK=" + MEM_EMAIL_PK + ", PP_REPORTING_DT=" + PP_REPORTING_DT
				+ ", PP_FIN_MODIF_DT=" + PP_FIN_MODIF_DT + ", PCI_SQ_PK=" + PCI_SQ_PK + "]";
	}
		
}
