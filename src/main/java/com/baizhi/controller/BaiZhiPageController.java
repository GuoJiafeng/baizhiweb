package com.baizhi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/page")
public class BaiZhiPageController {

    @RequestMapping("/changeStatus")
    public String changeStatus(String pageName,HttpSession session){
        String status = (String) session.getAttribute("languageStatus");
        if(status.equals("0")){
            session.setAttribute("languageStatus","1");
        }else if(status.equals("1")){
            session.setAttribute("languageStatus","0");
        }
        return pageName;
    }
}
