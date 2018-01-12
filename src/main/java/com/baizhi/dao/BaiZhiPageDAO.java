package com.baizhi.dao;

public interface BaiZhiPageDAO {

    public String queryEnglishByPageName(String pageName);

    public String queryChineseByPageName(String pageName);

    public String queryGermanByPageName(String pageName);

}
