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
import com.baizhi.entity.BaiZhiOrder;
import com.baizhi.entity.BaiZhiUser;
import com.baizhi.service.BaiZhiFileService;
import com.baizhi.service.BaiZhiOrderService;

@Controller
@RequestMapping("/order")
public class BaiZhiOrderController {
	@Autowired
	private BaiZhiOrderService service;
	
	public BaiZhiOrderService getService() {
		return service;
	}

	public void setService(BaiZhiOrderService service) {
		this.service = service;
	}
	@RequestMapping("toorder")
	public String toapp(){
		return "/order";
	}
	@RequestMapping("order")
	public String order(HttpSession session,BaiZhiOrder order){
		BaiZhiUser user=(BaiZhiUser) session.getAttribute("user");
		double a,b,c=0;
		String demand = order.getDemand();
		if(demand.equals("1"))a=2;
		else a=1;
		String number = order.getNumber();
		if(number.equals("1-5"))b=1;
		else if(number.equals("5-10"))b=5;
		else b=10;
		String type = order.getType();
		if(type.equals("Web"))c=1;
		else c=2;
		order.setId(UUID.randomUUID().toString());
		order.setUserid(user.getId());
		order.setPrice(a*b*c);
		service.insert(order);
		return "/main";
	}
}
