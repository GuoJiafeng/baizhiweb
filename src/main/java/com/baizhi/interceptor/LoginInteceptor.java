package com.baizhi.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author :Create by Guo Jiafeng
 * @Date : Created in  12:47 2018/1/11
 * @Descripon :
 */
public class LoginInteceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {

        if (request.getSession().getAttribute("user") != null) {
            return true;
        } else {
            String requestType = request.getHeader("X-Requested-With");//识别ajax的响应头

            if (requestType != null && requestType.equals("XMLHttpRequest")) {//如果是ajax类型，响应logout给前台
                response.getWriter().print("unlogin");
            } else {
                response.sendRedirect(request.getContextPath()+"/user/tologin.do");
            }
            return false;
        }
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}