package com.baizhi.dao;

import org.apache.ibatis.annotations.Param;

import com.baizhi.entity.BaiZhiUser;

public interface BaiZhiUserDAO {
	public BaiZhiUser queryUser(@Param("username")String username,@Param("password")String password);
	public void insert(BaiZhiUser user);
}
