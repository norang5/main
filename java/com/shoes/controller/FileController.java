package com.shoes.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/* 파일 업로드를 담당하는 컨트롤러
 * pom.xml에서 다음의 의존성 추가가 필요하다.
 * 
 * <!-- 파일 업로드를 위한 fileupload 라이브러리 -->
 *		<dependency>
 *			<groupId>commons-fileupload</groupId>
 *			<artifactId>commons-fileupload</artifactId>
 *			<version>1.3.1</version>
 *		</dependency>
 * 
 * */

@Controller
public class FileController{
	
	// 파일 업로드 예제코드. 마음껏 쓰십시오.(CKEditor)
	@RequestMapping("/fileuploadex.action")
	public ModelAndView upload(
			@RequestParam("number") String number,
			@RequestParam("file") MultipartFile file,
			HttpServletRequest request
	){
			ModelAndView mav = new ModelAndView();
			
			// 참고, String filePath=request.getSession().getServletContext().getRealPath("upload");
			// 절대경로 : String filePath = "c:\\data\\" + file.getOriginalFilename();
			
			// 파일을 실제 서버에 저장
			// 웹서비스 root 경로
			String root_path = request.getSession().getServletContext().getRealPath("/");
			String attach_path = "resources/upload/";
			String filename = file.getOriginalFilename();
			
			System.out.println("root_path: " + root_path);
			System.out.println("attach_path: " + attach_path);
			System.out.println("filename: " + filename);
			
			File f = new File(root_path + attach_path + filename);
			try{
				file.transferTo(f);
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
			mav.setViewName("file/filelist");
			mav.addObject("number", number);
			mav.addObject("filename", filename);
			
			return mav;
	}
} // class FileController{}
