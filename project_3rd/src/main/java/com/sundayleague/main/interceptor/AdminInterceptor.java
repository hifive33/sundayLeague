package com.sundayleague.main.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminInterceptor extends HandlerInterceptorAdapter{
	
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
			HttpSession session = request.getSession();
			String admin = (String)session.getAttribute("loginId");
			
			if(!admin.equals("admin")) {
				String path = request.getContextPath()+"/";
				response.sendRedirect(path);
				return false;
			}
		return super.preHandle(request, response, handler);
	}

}
