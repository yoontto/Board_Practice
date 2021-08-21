package com.member.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.commons.action.Action;
import com.commons.action.ActionForward;


@WebServlet("/MemberFrontController.me")
public class MemberFrontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 클라이언트 요청 파악
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String ctx = request.getContextPath();
		String command = uri.substring(ctx.length());
		System.out.println("uri" + uri);
		System.out.println("ctx" + ctx);
		System.out.println("command" + command);
	
		//2. 클라이언트의 요청과 실제 처리할 비즈니스 로직 연결
		Action action = null;
		ActionForward forward =null;
		
		if(command.equals("/member_loginForm.me")) {
			forward = new ActionForward();	//새 객체 생성
			forward.setPath("member/member_loginForm.jsp");	//경로 지정
		} else if(command.equals("/member_joinForm.me")) {
			forward = new ActionForward();
			forward.setPath("member/member_joinForm.jsp");
			/*forward.setRedirect(false);*/
		}
		
		//3.페이지 전환방식 설정
		if(forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
		}
	}
}
