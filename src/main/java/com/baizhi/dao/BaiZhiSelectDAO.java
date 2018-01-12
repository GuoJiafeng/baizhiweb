package com.baizhi.dao;

import com.baizhi.entity.BaiZhiSelect;

import java.util.List;

public interface BaiZhiSelectDAO {
    List<BaiZhiSelect> selectSelectAllContentsByPageName(String source);
}
