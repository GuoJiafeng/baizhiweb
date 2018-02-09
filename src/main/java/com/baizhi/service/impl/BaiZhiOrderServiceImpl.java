package com.baizhi.service.impl;

import com.baizhi.entity.BaiZhiUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.dao.BaiZhiOrderDAO;
import com.baizhi.entity.BaiZhiOrder;
import com.baizhi.service.BaiZhiOrderService;

import java.util.UUID;

@Service
public class BaiZhiOrderServiceImpl implements BaiZhiOrderService {
    @Autowired
    private BaiZhiOrderDAO dao;

    public BaiZhiOrderDAO getDao() {
        return dao;
    }

    public void setDao(BaiZhiOrderDAO dao) {
        this.dao = dao;
    }

    public void insert(BaiZhiOrder order) {
        dao.insert(order);
    }

    @Override
    public Double getPrice(BaiZhiOrder order) {
        Double type = new Double(order.getType());
        Double demand = new Double(order.getDemand());
        Double number = new Double(order.getNumber());
        /*String demand = order.getDemand();
        if (demand.equals("1")) a = 2;
        else a = 1;
        String number = order.getNumber();
        if (number.equals("1-5")) b = 1;
        else if (number.equals("5-10")) b = 5;
        else b = 10;
        String type = order.getType();
        if (type.equals("Web")) c = 1;
        else c = 2;*/

        Double price = number;
        return price;
    }


}
