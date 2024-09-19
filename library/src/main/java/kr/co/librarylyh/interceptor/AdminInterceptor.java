package kr.co.librarylyh.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.librarylyh.domain.UserVO;

public class AdminInterceptor implements HandlerInterceptor {
	
	@Override
public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		System.out.print("AdminInterceptor preHandle 적용");
		
		HttpSession session = request.getSession();
		
		UserVO userVO = (UserVO)session.getAttribute("loginUser");
		
		if(userVO == null || userVO.getAuthority() == 0) {
			response.sendRedirect("/library/home");
			return false;
		}
		
		return true; // 관리자 계정 로그인 경우(user != null && user.getAuthority() == 1 )
	}
}
