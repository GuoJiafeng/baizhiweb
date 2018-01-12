package com.baizhi.controller;


import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.baizhi.service.BaiZhiPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.baizhi.entity.BaiZhiOrder;
import com.baizhi.entity.BaiZhiUser;
import com.baizhi.service.BaiZhiOrderService;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/order")
public class BaiZhiOrderController {
	@Autowired
	private BaiZhiOrderService service;
	@Autowired
	private BaiZhiPageService baiZhiPageService;
	
	public BaiZhiOrderService getService() {
		return service;
	}

	public void setService(BaiZhiOrderService service) {
		this.service = service;
	}
	@RequestMapping("toorder")
	public String toapp(HttpServletRequest request){
		String status = (String) request.getSession().getAttribute("languageStatus");
		if(status == null){
			status = "0";
		}
		String content = baiZhiPageService.queryContentByPageNameAndStatus("order.jsp", status);
		String[] contents = content.split("_");
		request.setAttribute("contents",contents);
		return "/order";
	}
	@RequestMapping("order")
	public String order(HttpSession session,BaiZhiOrder order){
		BaiZhiUser user=(BaiZhiUser) session.getAttribute("user");
		Double type = new Double(order.getType());
		Double demand = new Double(order.getDemand());
		Double number = new Double(order.getNumber());
		order.setId(UUID.randomUUID().toString());
		order.setUserid(user.getId());
		order.setPrice(type*demand*number);
		service.insert(order);
		return "/main";
	}

	@RequestMapping("getPrice")
	public @ResponseBody String getPrice(BaiZhiOrder order){
		Double price = service.getPrice(order);
		return String.valueOf(price);
	}
}
