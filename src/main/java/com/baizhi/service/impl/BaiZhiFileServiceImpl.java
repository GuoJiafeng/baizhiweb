package com.baizhi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.dao.BaiZhiFileDAO;
import com.baizhi.entity.BaiZhiFile;
import com.baizhi.service.BaiZhiFileService;
@Service
public class BaiZhiFileServiceImpl implements BaiZhiFileService {
	@Autowired
	private BaiZhiFileDAO dao;
	
	public BaiZhiFileDAO getDao() {
		return dao;
	}

	public void setDao(BaiZhiFileDAO dao) {
		this.dao = dao;
	}

	public void insert(BaiZhiFile file) {
		dao.insert(file);
	}

}
