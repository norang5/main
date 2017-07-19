package com.shoes.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shoes.dao.EditDAO;
import com.shoes.model.EditBean;
import com.shoes.model.FileBean;

@Controller
public class EditController{

	@Autowired
	private EditDAO dao;

	@Resource(name = "messageSource")
	private MessageSource messageSource;

	// 게시판 쓰기
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String dispBbsWrite(@RequestParam(value = "idx", defaultValue = "0") int idx, Model model){
		System.out.println("display view BBS write");

		if(idx > 0){
			EditBean object = dao.getSelectOne(idx);
			model.addAttribute("object", object);
		}

		return "edit/edit";
	}

	@RequestMapping(value = "/file_upload_depricate", method = RequestMethod.POST)
	public String procFileUpload(FileBean fileBean, HttpServletRequest request, Model model){

		HttpSession session = request.getSession();
		//String root_path = session.getServletContext().getRealPath("/"); // 웹서비스
																			// root
																			// 경로
		String root_path = "C:/workspaces/spring/shoes_shop/src/main/webapp/";
		String attach_path = "resources/files/attach/";

		MultipartFile upload = fileBean.getUpload();
		String filename = "";
		String CKEditorFuncNum = "";
		if(upload != null){
			filename = upload.getOriginalFilename();
			fileBean.setFilename(filename);
			CKEditorFuncNum = fileBean.getCKEditorFuncNum();
			try{
				File file = new File(root_path + attach_path + filename);
				System.out.printf(root_path + attach_path + filename);
				upload.transferTo(file);
			}catch(IOException e){
				e.printStackTrace();
			}
		}

		String file_path = request.getContextPath() + "/" + attach_path + filename;
		model.addAttribute("file_path", file_path);
		model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);

		return "edit/file_upload";
	}

}