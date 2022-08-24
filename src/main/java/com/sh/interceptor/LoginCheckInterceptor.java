package com.sh.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.core.MethodParameter;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import com.sh.annotation.LoginUser;

public class LoginCheckInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// handle을 HandlerMethod로 형변환한다.
		// HandlerMethod는 요청핸들러 메소드를 표현하는 객체다.
		HandlerMethod handlerMethod = (HandlerMethod) handler;
		
		boolean isLoginRequired = false;
		// 요청핸들러 메소드의 모든 매개변수 정보를 조회한다.
		// MethodParameter은 메소드의 매개변수 정보를 표현하는 객체다.
		MethodParameter[] parameters = handlerMethod.getMethodParameters();
		for (MethodParameter parameter : parameters) {
			// 매개변수에서 @LoginUser 어노테이션 정보를 조회한다.
			// 매개변수에 @LoginUser 어노테이션이 있는 경우에만 loginUser는 null 아니다.
			// @LoginUser 어노테이션이 조회되는 경우는 로그인이 필요한 경우로 판단할 수 있다.
			LoginUser loginUser = parameter.getParameterAnnotation(LoginUser.class);
			if (loginUser != null) {
				isLoginRequired = true;
				break;
			}
		}
		
		// 로그인을 요구하지 않는 요청핸들러 메소드인 경우다.
		if (!isLoginRequired) {
			return true;
		}
		
		// 로그인을 요구하는 요청핸들러 메소드인데, 세션에 로그인 정보가 존재하는 경우다.
		if (request.getSession().getAttribute("LOGIN_USER") != null) {
			return true;
		}
		
		// 로그인을 요구하는 요청핸들러 메소드인데 세션에 로그인 정보가 존재하지 않는 경우다.
		response.sendRedirect("/login?fail=deny");
		return false;
	}
}