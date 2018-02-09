package com.baizhi.dao;

import com.baizhi.entity.BaiZhiSelect;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BaiZhiSelectDAO {
    List<BaiZhiSelect> selectSelectAllContentsByPageName(@Param("source") String source,@Param("status") String status);
}
