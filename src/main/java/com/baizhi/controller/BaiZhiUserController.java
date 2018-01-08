package com.baizhi.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baizhi.entity.BaiZhiUser;
import com.baizhi.service.BaiZhiUserService;

@Controller
@RequestMapping("/user")
public class BaiZhiUserController {
	@Autowired
	private BaiZhiUserService service;
	public BaiZhiUserService getService() {
		return service;
	}

	public void setService(BaiZhiUserService service) {
		this.service = service;
	}
	@RequestMapping("tologin")
	public String toupload(){
		return "login";
	}
	@RequestMapping("toreg")
	public String toreg(){
		return "reg";
	}
	@RequestMapping("login")
	public String login(HttpSession session,String username,String password){
		BaiZhiUser user = service.login(username, password);
		session.setAttribute("user", user);
		return "/main";
	}
	@RequestMapping("reg")
	public String reg(HttpSession session,BaiZhiUser user){
		BaiZhiUser reg = service.reg(user);
		session.setAttribute("user", reg);
		return "/main";
	}
}
