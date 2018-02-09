package com.baizhi.service;

import com.baizhi.entity.BaiZhiSelect;

import java.util.List;

public interface BaiZhiSelectService {
    public List<BaiZhiSelect> selectSelectAllContentsByPageName(String source,String status);
}
