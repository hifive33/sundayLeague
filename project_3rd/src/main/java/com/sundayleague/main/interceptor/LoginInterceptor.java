package com.sundayleague.main.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session= request.getSession();
		
		String loginid = (String)session.getAttribute("loginId");
		
		if(loginid==null) {
			String path = request.getContextPath()+"/login";
			response.sendRedirect(path);
			return false;
		}
		return super.preHandle(request, response, handler);
	}

}
