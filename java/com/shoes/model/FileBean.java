package com.shoes.model;

import org.springframework.web.multipart.MultipartFile;

/* CKEditor와 FileUploadController가 통신하기 위해 데이터와 저장경로 및 식별번호를 담아 주고받는 Bean 객체  */
// 변수명은 절대 변경하지 말 것.
// CKEditor가 javascript내에서 지정한 변수로서, 우리가 직접 js파일 찾아가며 바꾸지 않는 이상 기본이름 그대로 써야함.
public class FileBean{
	private String attach_path;		// 서버에 저장할 경로 -> 서버에 저장된 경로
	private MultipartFile upload;	// 클라이언트로부터 받아온 파일 데이터(내부적으로 바이너리 형식으로 가지고 있다)
	private String filename;		// 서버에서 저장하기 위해 바꾼 파일명
	private String CKEditorFuncNum;	// CKEditor에서 업로드하는 이미지에 부여하는 일련번호.
	// CKEditorFuncNum – anonymous function reference number used to pass the URL of a file to CKEditor (a random number).
	
	public String getAttach_path(){
		return attach_path;
	}
	public void setAttach_path(String attach_path){
		this.attach_path = attach_path;
	}
	public MultipartFile getUpload(){
		return upload;
	}
	public void setUpload(MultipartFile upload){
		this.upload = upload;
	}
	public String getFilename(){
		return filename;
	}
	public void setFilename(String filename){
		this.filename = filename;
	}
	public String getCKEditorFuncNum(){
		return CKEditorFuncNum;
	}
	public void setCKEditorFuncNum(String cKEditorFuncNum){
		CKEditorFuncNum = cKEditorFuncNum;
	}
	
	@Override
	public String toString(){
		return "FileBean [attach_path=" + attach_path + ", upload=" + upload + ", filename=" + filename
				+ ", CKEditorFuncNum=" + CKEditorFuncNum + "]";
	}
}
