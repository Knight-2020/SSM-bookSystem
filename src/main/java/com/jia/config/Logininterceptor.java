package com.jia.config;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * User:侠客
 * Date:2022/2/13 19:31
 * Description:
 */
public class Logininterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler){
        HttpSession session = request.getSession();
        // 如果是登陆页面则放行
        System.out.println("url: " + request.getRequestURI());
        if (request.getRequestURI().contains("login")) {
        return true;
        }
        // 如果用户已登陆也放行
        if(session.getAttribute("userLoginInfo") != null) {
        System.out.println("userLoginInfo:"+session.getAttribute("userLoginInfo").toString());
        return true;
        }
        else {
            try {
                request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return false;
        }
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
