package com.baizhi.controller;

import com.baizhi.entity.BaiZhiOrder;
import com.baizhi.entity.BaiZhiSelect;
import com.baizhi.service.BaiZhiSelectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("select")
public class BaiZhiSelectController {
    @Autowired
    private BaiZhiSelectService baiZhiSelectService;

    @RequestMapping("selectByPageName")
    @ResponseBody
    public List<BaiZhiSelect> selectSelectAllContentsBypageName(String source, HttpSession session) {

        String statu = (String) session.getAttribute("languageStatus");
        List<BaiZhiSelect> result = baiZhiSelectService.selectSelectAllContentsByPageName(source, statu);

        return result;
    }
}
