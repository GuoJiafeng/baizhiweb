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
        if(Status.equals("0")){
            return baiZhiPageDAO.queryEnglishByPageName(pageName);
        }else if(Status.equals("1")){
            return baiZhiPageDAO.queryChineseByPageName(pageName);
        }else {
            return baiZhiPageDAO.queryGermanByPageName(pageName);
        }
    }
}
