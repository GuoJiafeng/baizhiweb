package com.baizhi.service.impl;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.dao.BaiZhiUserDAO;
import com.baizhi.entity.BaiZhiUser;
import com.baizhi.service.BaiZhiUserService;
@Service
public class BaiZhiUserServiceImpl implements BaiZhiUserService {
	@Autowired
	private BaiZhiUserDAO dao;
	
	public BaiZhiUserDAO getDao() {
		return dao;
	}

	public void setDao(BaiZhiUserDAO dao) {
		this.dao = dao;
	}

	public BaiZhiUser login(String username,String password) {
		return dao.queryUser(username, password);
	}

	public BaiZhiUser reg(BaiZhiUser user) {
		user.setId(UUID.randomUUID().toString());
		dao.insert(user);
		return user;
	}

}
