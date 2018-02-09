package com.baizhi.service.impl;

import com.baizhi.dao.BaiZhiResourceDAO;
import com.baizhi.entity.BaiZhiResource;
import com.baizhi.service.BaiZhiResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class BaiZhiResourceServiceImpl implements BaiZhiResourceService{
    @Autowired
    private BaiZhiResourceDAO dao;

    public BaiZhiResourceDAO getDao() {
        return dao;
    }

    public void setDao(BaiZhiResourceDAO dao) {
        this.dao = dao;
    }

    public BaiZhiResource getResource(){
        return dao.getResource();
    }
}
