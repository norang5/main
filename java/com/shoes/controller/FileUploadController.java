package com.shoes.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.model.FileBean;
/* 파일 업로드를 담당하는 컨트롤러
 * pom.xml에서 다음의 의존성 추가가 필요하다.
  
		<!-- 파일 업로드를 위한 fileupload 라이브러리 -->
 		<dependency>
 			<groupId>commons-fileupload</groupId>
 			<artifactId>commons-fileupload</artifactId>
 			<version>1.3.1</version>
 		</dependency>
 
 		<dependency>
 			<groupId>commons-io</groupId>
 			<artifactId>commons-io</artifactId>
 			<version>2.4</version>
 		</dependency>
  
 */
@Controller
public class FileUploadController{
	// 파일 업로드 예제코드. 마음껏 쓰십시오.(CKEditor)
		public static final int sizeLimit = 3 * 1024 * 1024;
	
		@RequestMapping("/file_upload")
		public ModelAndView upload(FileBean fileBean, HttpServletRequest request){
				ModelAndView mav = new ModelAndView();
				mav.setViewName("fileupload/file_upload_success");
				
				// 파일을 실제 서버에 저장
				// 웹서비스 root 경로
				/*
				StringBuilder builder = new StringBuilder();
				builder.append("C:");			builder.append(File.separator);
				builder.append("workspaces");	builder.append(File.separator);
				builder.append("spring");		builder.append(File.separator);
				builder.append("shoes_shop");	builder.append(File.separator);
				builder.append("src");			builder.append(File.separator);
				builder.append("main");			builder.append(File.separator);
				builder.append("webapp");		builder.append(File.separator);
				String rootPath = builder.toString();
				*/
				
				MultipartFile file = fileBean.getUpload();
				
				if(file.getSize() > sizeLimit){
					System.out.println("## 용량이 너무 큽니다. 3메가 이하로 해주세요.");
					mav.setViewName("fileupload/file_upload_fail");
					return mav;
				}
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy_MM_dd_hhmmss");
				Calendar c = Calendar.getInstance(TimeZone.getTimeZone("Asiz/Seoul"));
				
				String rootPath = "C:/workspaces/spring/shoes_shop/src/main/webapp";
				String savePath = "/resources/upload/";
				String fileName = file.getOriginalFilename();
				
				// 업로드 폴더가 없으면 해당 폴더 생성
				new File(rootPath + savePath + File.separator).mkdir();
				
				// 파일이름과 확장자 분리
				String getFileName[] = fileName.split("\\.");
				
				// 파일 이름 설정 = 원본파일명_년원일분초.확장자
				String fileReName = getFileName[0] + "_" + sdf.format(c.getTime()) + "." + getFileName[1];
				
				System.out.println("rootPath: " + rootPath);
				System.out.println("savePath: " + savePath);
				System.out.println("fileName: " + fileName);
				System.out.println("fileReName: " + fileReName);
				
				/*
				String rootPath = request.getSession().getServletContext().getRealPath("/");를 썼을때,
				
				서버에서 Serve modules without publishing에 체크 안 하면,
				rootPath: C:/workspaces/spring/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/shoes_shop/
				
				서버에서 Serve modules without publishing에 체크하면,
				rootPath: C:/workspaces/spring/shoes_shop/target/m2e-wtp/web-resources/
				
				둘다 원하는 경로는 아니기에 그냥 직접 써주었다.
				String rootPath = "C:/workspaces/spring/shoes_shop/src/main/webapp";
				
				savePath: /resources/upload/
				fileName: background.png
				*/
				
				
				
				File saveFile = new File(rootPath + savePath + fileReName);
				try{
					fileBean.getUpload().transferTo(saveFile);
				}catch(Exception e){
					System.out.println(e.getMessage());
				}
				
				mav.addObject("CKEditorFuncNum", fileBean.getCKEditorFuncNum());
				mav.addObject("attach_path", request.getContextPath() + savePath + fileReName);
				
				return mav;
		}
}
