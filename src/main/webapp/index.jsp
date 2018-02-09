<%@ page import="java.util.Locale" %>
<%@ page import="com.baizhi.entity.BaiZhiOrder" %>
<%@ page pageEncoding="UTF-8" contentType="text/html;charest=UTF8" isELIgnored="false" %>

<%
    Locale locale=request.getLocale();
    String language=locale.getLanguage();
    System.out.println(language);
    session.setAttribute("orderSession", new BaiZhiOrder("0","0","1000"));
    if(language!=null) {
        if (language.startsWith("de"))
            session.setAttribute("languageStatus", "2");
        else if (language.startsWith("zh"))
            session.setAttribute("languageStatus", "1");
        else session.setAttribute("languageStatus", "0");
    }else session.setAttribute("languageStatus", "0");
    response.sendRedirect(request.getContextPath() + "/user/tomain");
%>
