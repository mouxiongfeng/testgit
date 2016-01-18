package com.mouxf.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.mouxf.common.PageInfo;

public class UserLoginInterceptor implements HandlerInterceptor{

	
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler) throws Exception {
		HttpSession session=request.getSession();
		Object user=session.getAttribute("user");
		if(user==null||"".equals(user.toString())){
			response.sendRedirect("../"+PageInfo.INDEX);
			return false;
		}
		return true;
	}

}
