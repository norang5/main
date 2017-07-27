package com.shoes.model;

public class UtpCommentTbBean{
	private int UTPC_SQ_PK;
	private String MEM_EMAIL_PK;
	private int UTP_SQ_PK;
	private String UTPC_BODY;
	private java.sql.Date  UTPC_REPORTING_DT;
	private java.sql.Date UTPC_FIN_MODIF_DT;
	private int UTPC_SQ_PK_FK;
	private int UTPC_NOTIFY_NUMBER;
	
	public int getUTPC_SQ_PK(){
		return UTPC_SQ_PK;
	}
	
	public void setUTPC_SQ_PK(int uTPC_SQ_PK){
		UTPC_SQ_PK = uTPC_SQ_PK;
	}
	
	public String getMEM_EMAIL_PK(){
		return MEM_EMAIL_PK;
	}
	
	public void setMEM_EMAIL_PK(String mEM_EMAIL_PK){
		MEM_EMAIL_PK = mEM_EMAIL_PK;
	}
	
	public int getUTP_SQ_PK(){
		return UTP_SQ_PK;
	}
	
	public void setUTP_SQ_PK(int uTP_SQ_PK){
		UTP_SQ_PK = uTP_SQ_PK;
	}
	
	public String getUTPC_BODY(){
		return UTPC_BODY;
	}
	
	public void setUTPC_BODY(String uTPC_BODY){
		UTPC_BODY = uTPC_BODY;
	}
	
	public java.sql.Date getUTPC_REPORTING_DT(){
		return UTPC_REPORTING_DT;
	}
	
	public void setUTPC_REPORTING_DT(java.sql.Date uTPC_REPORTING_DT){
		UTPC_REPORTING_DT = uTPC_REPORTING_DT;
	}
	
	public java.sql.Date getUTPC_FIN_MODIF_DT(){
		return UTPC_FIN_MODIF_DT;
	}
	
	public void setUTPC_FIN_MODIF_DT(java.sql.Date uTPC_FIN_MODIF_DT){
		UTPC_FIN_MODIF_DT = uTPC_FIN_MODIF_DT;
	}
	
	public int getUTPC_SQ_PK_FK(){
		return UTPC_SQ_PK_FK;
	}
	
	public void setUTPC_SQ_PK_FK(int uTPC_SQ_PK_FK){
		UTPC_SQ_PK_FK = uTPC_SQ_PK_FK;
	}
	
	public int getUTPC_NOTIFY_NUMBER(){
		return UTPC_NOTIFY_NUMBER;
	}
	
	public void setUTPC_NOTIFY_NUMBER(int uTPC_NOTIFY_NUMBER){
		UTPC_NOTIFY_NUMBER = uTPC_NOTIFY_NUMBER;
	}
	
	@Override
	public String toString(){
		return "UtpCommentTbBean [UTPC_SQ_PK=" + UTPC_SQ_PK + ", MEM_EMAIL_PK=" + MEM_EMAIL_PK + ", UTP_SQ_PK="
				+ UTP_SQ_PK + ", UTPC_BODY=" + UTPC_BODY + ", UTPC_REPORTING_DT=" + UTPC_REPORTING_DT
				+ ", UTPC_FIN_MODIF_DT=" + UTPC_FIN_MODIF_DT + ", UTPC_SQ_PK_FK=" + UTPC_SQ_PK_FK
				+ ", UTPC_NOTIFY_NUMBER=" + UTPC_NOTIFY_NUMBER + "]";
	}
}

