package com.shoes.model;

public class PRDTCommentBean {
	
	int PDCMM_SQ_PK;
	String PDCMM_BODY;
	int PDCMM_LOVE;
	String PDCMM_IMG_PATH;
	String MEM_EMAIL_PK;
	String PDCMM_FIN_MODIF_DT;
	int PP_SQ_PK;
	
	
	public int getPP_SQ_PK() {
		return PP_SQ_PK;
	}
	public void setPP_SQ_PK(int pP_SQ_PK) {
		PP_SQ_PK = pP_SQ_PK;
	}
	public int getPDCMM_SQ_PK() {
		return PDCMM_SQ_PK;
	}
	public void setPDCMM_SQ_PK(int pDCMM_SQ_PK) {
		PDCMM_SQ_PK = pDCMM_SQ_PK;
	}


	
	public String getPDCMM_FIN_MODIF_DT() {
		return PDCMM_FIN_MODIF_DT;
	}
	public void setPDCMM_FIN_MODIF_DT(String pDCMM_FIN_MODIF_DT) {
		PDCMM_FIN_MODIF_DT = pDCMM_FIN_MODIF_DT;
	}
	public String getMEM_EMAIL_PK() {
		return MEM_EMAIL_PK;
	}
	public void setMEM_EMAIL_PK(String mEM_EMAIL_PK) {
		MEM_EMAIL_PK = mEM_EMAIL_PK;
	}
	public String getPDCMM_BODY() {
		return PDCMM_BODY;
	}
	public void setPDCMM_BODY(String pDCMM_BODY) {
		PDCMM_BODY = pDCMM_BODY;
	}
	public int getPDCMM_LOVE() {
		return PDCMM_LOVE;
	}
	public void setPDCMM_LOVE(int pDCMM_LOVE) {
		PDCMM_LOVE = pDCMM_LOVE;
	}
	public String getPDCMM_IMG_PATH() {
		return PDCMM_IMG_PATH;
	}
	public void setPDCMM_IMG_PATH(String pDCMM_IMG_PATH) {
		PDCMM_IMG_PATH = pDCMM_IMG_PATH;
	}
	
	@Override
	public String toString() {
		return "PRDTCommentBean [PDCMM_SQ_PK=" + PDCMM_SQ_PK + ", PDCMM_BODY=" + PDCMM_BODY + ", PDCMM_LOVE="
				+ PDCMM_LOVE + ", PDCMM_IMG_PATH=" + PDCMM_IMG_PATH + ", MEM_EMAIL_PK=" + MEM_EMAIL_PK
				+ ", PDCMM_FIN_MODIF_DT=" + PDCMM_FIN_MODIF_DT + ", PP_SQ_PK=" + PP_SQ_PK + "]";
	}

}
