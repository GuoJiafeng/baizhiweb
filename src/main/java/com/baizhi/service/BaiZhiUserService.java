package com.baizhi.service;

import com.baizhi.entity.BaiZhiUser;

public interface BaiZhiUserService {
	public BaiZhiUser login(String username,String password);
	public BaiZhiUser reg(BaiZhiUser user);
}
