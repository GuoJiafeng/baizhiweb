package com.baizhi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/page")
public class BaiZhiPageController {

    @RequestMapping("/changeStatus")
    public String changeStatus(HttpSession session, HttpServletRequest req){
        String str = req.getHeader("Referer");
        String[] path = str.split("/");
        String string = path[path.length-2];
        String pageName = path[path.length-1];
        String status = (String) session.getAttribute("languageStatus");
        if(status == null){
            session.setAttribute("languageStatus","1");
        }else if(status.equals("1")){
            session.setAttribute("languageStatus","0");
        }else {
            session.setAttribute("languageStatus","1");
        }
        if(str.endsWith(".jsp")){
            return "download";
        }
        if(pageName.equals("baizhiweb")) {
            string = "user";
            pageName = "tologin";
        }
        return "redirect:/"+string+"/"+pageName;
    }
}
