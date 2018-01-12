package com.baizhi.controller;

import com.baizhi.entity.BaiZhiSelect;
import com.baizhi.service.BaiZhiSelectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;

@Controller
@RequestMapping("select")
public class BaiZhiSelectController {
    @Autowired
    private BaiZhiSelectService baiZhiSelectService;

    @RequestMapping("selectByPageName")
    @ResponseBody
    public List<BaiZhiSelect> selectSelectAllContentsBypageName(String source){
        List<BaiZhiSelect> result = baiZhiSelectService.selectSelectAllContentsByPageName(source);
        return result;
    }
}
