package com.baizhi.service.impl;

import com.baizhi.dao.BaiZhiUserDAO;
import com.baizhi.entity.BaiZhiUser;
import com.baizhi.service.BaiZhiUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

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

    public BaiZhiUser login(String username, String password) {
        BaiZhiUser baiZhiUser = dao.queryUser(username, password);
        if (baiZhiUser == null) throw new RuntimeException("用户名或者密码错误！");
        return dao.queryUser(username, password);
    }

    public BaiZhiUser reg(BaiZhiUser user) {
        user.setId(UUID.randomUUID().toString());
        dao.insert(user);
        return user;
    }

}
