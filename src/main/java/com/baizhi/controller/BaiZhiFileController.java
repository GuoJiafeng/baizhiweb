package com.baizhi.controller;

import java.io.File;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.baizhi.entity.BaiZhiFile;
import com.baizhi.entity.BaiZhiUser;
import com.baizhi.service.BaiZhiFileService;

@Controller
@RequestMapping("/file")
public class BaiZhiFileController {
	@Autowired
	private BaiZhiFileService service;
	
	public BaiZhiFileService getService() {
		return service;
	}

	public void setService(BaiZhiFileService service) {
		this.service = service;
	}
	@RequestMapping("toupload")
	public String toupload(){
		return "/upload";
	}
	@RequestMapping("upload")
	public String upload(HttpSession session,MultipartFile file,BaiZhiFile bfile){
		BaiZhiUser user=(BaiZhiUser) session.getAttribute("user");
		String filename=file.getOriginalFilename();
		String url=session.getServletContext().getRealPath("file");
		File newFile=new File(url,filename);
		try {
			file.transferTo(newFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		bfile.setFilename(filename);
		bfile.setFileurl(url+"/"+filename);
		bfile.setUserid(user.getId());
		bfile.setId(UUID.randomUUID().toString());
		bfile.setUploadtime(new Date());
		service.insert(bfile);
		return "/main";
	}
}
