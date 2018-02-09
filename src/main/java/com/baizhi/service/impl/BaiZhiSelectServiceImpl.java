package com.baizhi.service.impl;

import com.baizhi.dao.BaiZhiSelectDAO;
import com.baizhi.entity.BaiZhiSelect;
import com.baizhi.service.BaiZhiSelectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service
public class BaiZhiSelectServiceImpl implements BaiZhiSelectService {

    @Autowired
    private BaiZhiSelectDAO baiZhiSelectDAO;

    @Override
    public List<BaiZhiSelect> selectSelectAllContentsByPageName(String source,String status) {
        List<BaiZhiSelect> result = baiZhiSelectDAO.selectSelectAllContentsByPageName(source,status);
        System.out.println(result);
        System.out.println(source);
        return result;
    }
}
