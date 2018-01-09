package com.baizhi.filter;


import javax.servlet.*;
import java.io.IOException;

public class CheckLanguageStatus implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
        String status = (String) request.getAttribute("languageStatus");
        if(status == null){
            status = "0";
        }
        request.setAttribute("languageStatus",status);
        filterChain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
