package com.encore.t0709;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ParamServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 클라이언트의 요청 doGet, doPost
		System.out.println("service()");
		// HTTP 요청방식
		String method=req.getMethod();
		System.out.println("HTTP요청방식(method)="+method);
		if(method.equals("GET")) doGet(req, resp);
		else if(method.equals("POST")) doPost(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet()");
		// 클라이언트가 get요청할 경우 호출되어지는 메소드
		String id= req.getParameter("id");
		String pwd= req.getParameter("pwd");
		
		System.out.println("doGet전달받은 아이디>>"+id+","+pwd);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost()");
		// 클라이언트가 post요청할 경우 호출되어지는 메소드
		String id= req.getParameter("id");
		String pwd= req.getParameter("pwd");
		
		System.out.println("doPost전달받은 아이디>>"+id+","+pwd);
	}
}
