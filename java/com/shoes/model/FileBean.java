package com.shoes.model;

import org.springframework.web.multipart.MultipartFile;

/**/
public class FileBean{
	private String attach_path;		// 서버에 저장할 경로 -> 서버에 저장된 경로
	private MultipartFile upload;	// 클라이언트로부터 받아온 파일 데이터(내부적으로 바이너리 형식으로 가지고 있다)
	private String filename;		// 클라이언트가 업로드한 원본 파일명 -> 서버에서 저장하기 위해 바꾼 파일명
	private String CKEditorFuncNum;	// CKEditor에서 업로드하는 이미지에 부여하는 일련번호.

	public String getAttach_path(){
		return this.attach_path;
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
		return this.filename;
	}

	public void setFilename(String filename){
		this.filename = filename;
	}

	public String getCKEditorFuncNum(){
		return this.CKEditorFuncNum;
	}

	public void setCKEditorFuncNum(String CKEditorFuncNum){
		this.CKEditorFuncNum = CKEditorFuncNum;
	}
}
