package com.baizhi.controller;


import java.io.File;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.baizhi.entity.BaiZhiFile;
import com.baizhi.service.BaiZhiFileService;
import com.baizhi.service.BaiZhiPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.baizhi.entity.BaiZhiOrder;
import com.baizhi.entity.BaiZhiUser;
import com.baizhi.service.BaiZhiOrderService;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/order")
public class BaiZhiOrderController {
    @Autowired
    private BaiZhiFileService baiZhiFileService;
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
    public String toapp(HttpServletRequest request) {
        String status = (String) request.getSession().getAttribute("languageStatus");
        if (status == null) {
            status = "0";
        }
        String content = baiZhiPageService.queryContentByPageNameAndStatus("order.jsp", status);
        String[] contents = content.split("_");
        request.setAttribute("contents", contents);
        return "/order";
    }

    @RequestMapping("order")
    public String order(HttpSession session, BaiZhiOrder order) {
        BaiZhiUser user = (BaiZhiUser) session.getAttribute("user");
        Double type = new Double(order.getType());
        Double demand = new Double(order.getDemand());
        Double number = new Double(order.getNumber());
        order.setId(UUID.randomUUID().toString());
        order.setUserid(user.getId());
        order.setPrice(type + demand + number);
        service.insert(order);
        return "/main";
    }

    @RequestMapping("getorder")
    public String getorder(HttpSession session, BaiZhiOrder order) {

        return "/main";
    }


    @RequestMapping("getPrice")
    public @ResponseBody
    String getPrice(BaiZhiOrder order, HttpSession session) {
        Double price = service.getPrice(order);
        String statu = (String) session.getAttribute("languageStatus");
        if ("1".equals(statu)) return String.valueOf(price) + "EUR(不含增值税)";
        else if ("2".equals(statu)) return String.valueOf(price) + "EUR(ohne MwSt)";
        return String.valueOf(price) + "EUR(without VAT)";
    }

    @RequestMapping("orderandupdate")
    public String orderandupdate(HttpSession session, BaiZhiOrder order, MultipartFile file, BaiZhiFile bfile) {
        BaiZhiUser user = (BaiZhiUser) session.getAttribute("user");

        if (user != null) {
            Double type = new Double(order.getType());
            Double demand = new Double(order.getDemand());
            Double number = new Double(order.getNumber());
            order.setId(UUID.randomUUID().toString());
            order.setUserid(user.getId());
            order.setPrice(type * demand * number);

            service.insert(order);
            String filename = file.getOriginalFilename();
            String url = session.getServletContext().getRealPath("file");
            File newFile = new File(url, filename);
            try {
                file.transferTo(newFile);
            } catch (Exception e) {
                e.printStackTrace();
            }
            bfile.setFilename(filename);
            bfile.setFileurl(url + "/" + filename);
            bfile.setUserid(user.getId());
            bfile.setId(UUID.randomUUID().toString());
            bfile.setUploadtime(new Date());
            baiZhiFileService.insert(bfile);

        } else {
            session.setAttribute("orderSession", order);
            System.out.println("112312312312" + order);
            session.setAttribute("fileSession", file);
        }

        return "redirect:/user/tomain";
    }


    @RequestMapping("nologinorder")
    public @ResponseBody
    String nologinorder(HttpSession session, BaiZhiOrder order) {

        session.setAttribute("orderSession", order);
        System.out.println("112312312312" + order);

        return "success";
    }


    @RequestMapping("success")
    public @ResponseBody
    String success(HttpSession session) {
        String statu = (String) session.getAttribute("languageStatus");
        if ("1".equals(statu)) return "订单已经成功生成，稍后我们会有工作人员和您联系进一步沟通关于软件预定的情况！";
        else if ("2".equals(statu))
            return "Bestellungen sind erfolgreich erzeugt, auf die WIR später wird personal und " +
                    "Kontakt MIT Ihnen die weitere Kommunikation über die software vorgegebenen Situation!";
        return "The order has been successfully generated, and later we will have the staff to contact you " +
                "to further communicate about the software reservation";
    }
}
