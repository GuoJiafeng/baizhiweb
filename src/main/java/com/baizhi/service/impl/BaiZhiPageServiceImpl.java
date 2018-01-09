package com.baizhi.service.impl;

import com.baizhi.dao.BaiZhiPageDAO;
import com.baizhi.service.BaiZhiPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class BaiZhiPageServiceImpl implements BaiZhiPageService {

    @Autowired
    private BaiZhiPageDAO baiZhiPageDAO;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public String queryContentByPageNameAndStatus(String pageName, String Status) {
        String content = null;
        if(Status.equals("0")){
            content = baiZhiPageDAO.queryEnglishByPageName(pageName);
        }if(Status.equals("1")){
            content = baiZhiPageDAO.queryChineseByPageName(pageName);
        }if(content == null){
            throw new RuntimeException("非法参数");
        }
        return content;
    }
}
