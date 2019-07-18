package com.siri.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet {
	// 서블릿: 한개의 웹페이지 화면을 구성한다.
	@Override
	public void init() throws ServletException {
		System.out.println("init()");
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("service()");
		// 서블릿 메소드 - 웹브라우저 서비스 - HTML서비스
		// request: 클라이언트(사용자, 브라우저) response: 서버를 각각의미!

		// 한글 설정은 출력객체 얻어오기전에 하는것 (문자집합설정)
		resp.setContentType("text/html; charset=UTF-8");
		// text/html --MIME형식
		PrintWriter out = resp.getWriter();
		// 브라우저 출력 객체
		out.print("<html><head><title></title></head>");
		out.print("<body><h3>ServletTest</h3><hr>");

		// web.xml에 initParam 가져오기
		ServletConfig config = getServletConfig(); // 현재 서블릿
		String name = config.getInitParameter("youName");
		String name2 = getInitParameter("youName");

		out.print("name: " + name + ", name2: " + name2 + "<br>");
		ServletContext application = getServletContext();
		String commonTxt = application.getInitParameter("common");
		out.print("<font color=red>"+commonTxt+"</font>");
		
		for (int i = 0; i < 10; i++) {

			if (i % 2 == 0) {
				out.print("<b><font color=red>안녕, 서블릿?^^***</font></b>");
				out.print("</body></html><br>");
			} else {
				out.print("<b><font color=blue>안녕, 서블릿?^^***</font></b>");
				out.print("</body></html><br>");
			}
		}

	}

	@Override
	public void destroy() {
		// 서블릿 메모리 소멸 전 호출( 서블릿 종료전 실행할 작업)
		System.out.println("destroy()");
	}

}
