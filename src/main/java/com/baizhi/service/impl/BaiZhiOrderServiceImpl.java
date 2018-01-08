package com.baizhi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.dao.BaiZhiOrderDAO;
import com.baizhi.entity.BaiZhiOrder;
import com.baizhi.service.BaiZhiOrderService;
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

}
