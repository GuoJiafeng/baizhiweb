package com.baizhi.controller;

import java.io.*;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.baizhi.service.BaiZhiPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.baizhi.entity.BaiZhiFile;
import com.baizhi.entity.BaiZhiUser;
import com.baizhi.service.BaiZhiFileService;

@Controller
@RequestMapping("/file")
public class BaiZhiFileController {
	@Autowired
	private BaiZhiFileService service;
	@Autowired
	private BaiZhiPageService baiZhiPageService;

	public BaiZhiFileService getService() {
		return service;
	}

	public void setService(BaiZhiFileService service) {
		this.service = service;
	}


	@RequestMapping("toabout")
	public String toabout(HttpServletRequest request){
		String status = (String) request.getSession().getAttribute("languageStatus");
		if(status == null){
			status = "0";
		}
		String content = baiZhiPageService.queryContentByPageNameAndStatus("about.jsp", status);
		String[] contents = content.split("_");
		request.setAttribute("contents",contents);
		return "/about";
	}


	@RequestMapping("tohow")
	public String tohow(HttpServletRequest request){
		String status = (String) request.getSession().getAttribute("languageStatus");
		if(status == null){
			status = "0";
		}
		String content = baiZhiPageService.queryContentByPageNameAndStatus("how.jsp", status);
		String[] contents = content.split("_");
		request.setAttribute("contents",contents);
		return "/how";
	}


	@RequestMapping("toupload")
	public String toupload(HttpServletRequest request){
		String status = (String) request.getSession().getAttribute("languageStatus");
		if(status == null){
			status = "0";
		}
		String content = baiZhiPageService.queryContentByPageNameAndStatus("upload.jsp", status);
		String[] contents = content.split("_");
		request.setAttribute("contents",contents);
		return "/about";
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
	/**
	 * 文件下载
	 * @Description:
	 * @param fileName
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/download")
	public String downloadFile(@RequestParam("fileName") String fileName,
							   HttpServletRequest request, HttpServletResponse response) {
		if (fileName != null) {
			String realPath = request.getServletContext().getRealPath("WEB-INF/File/");
			File file = new File(realPath, fileName);
			if (file.exists()) {
				response.setContentType("application/force-download");// 设置强制下载不打开
				response.addHeader("Content-Disposition", "attachment;fileName=" + fileName);// 设置文件名
				byte[] buffer = new byte[1024];
				FileInputStream fis = null;
				BufferedInputStream bis = null;
				try {
					fis = new FileInputStream(file);
					bis = new BufferedInputStream(fis);
					OutputStream os = response.getOutputStream();
					int i = bis.read(buffer);
					while (i != -1) {
						os.write(buffer, 0, i);
						i = bis.read(buffer);
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					if (bis != null) {
						try {
							bis.close();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					if (fis != null) {
						try {
							fis.close();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			}
		}
		return null;
	}

	/**
	 * 跳转jsp界面
	 * */

	@RequestMapping("todownload")
	public String todownload(HttpServletRequest request){
		String status = (String) request.getSession().getAttribute("languageStatus");
		if(status == null){
			status = "0";
		}
		String content = baiZhiPageService.queryContentByPageNameAndStatus("download.jsp", status);
		String[] contents = content.split("_");
		request.setAttribute("contents",contents);
		return "/download";
	}
}
