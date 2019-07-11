package com.encore.t0709;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//web.xml에 등록대신 annotation을 사용하는 것이 가능
//@WebServlet("/가상경로")
@WebServlet("/calc")
public class CalcServlet extends HttpServlet {
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 계산기폼 출력 ==> URL주소 직접 입력시 실행
		System.out.println("doGet");// 톰켓서버 콘솔출력

		// 브라우저에 출력될 한글에 대한 처리!!
		resp.setContentType("text/html;charset=UTF-8");

		PrintWriter out = resp.getWriter();// 브라우저 출력객체 (HTML출력)
		// out.print("HTML텍스트");
		out.print("<html><head><title>서블릿계산기</title></head>");
		out.print("<body><center><h3>서블릿계산기</h3><hr>");
		out.print("<form method='post'><input type=text name=su1 size=4> ");
		out.print("<select name=oper><option>+</option><option>-</option>");
		out.print("<option>*</option><option>/</option></select> ");
		out.print("<input type=text name=su2 size=4> ");
		out.print("<input type=submit value=계산></form>");
		out.print("</center></body></html>");

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 계산기폼 출력 ==> <form>태그내의 submit버튼 클릭시 실행
		// 계산결과 출력
		System.out.println("doPost");// 톰켓서버 콘솔출력

		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();

		out.print("<html><head><title>서블릿계산기</title></head>");
		out.print("<body><center><h3>서블릿계산기</h3><hr>");
		out.print("<form method='post'><input type=text name=su1 size=4> ");
		out.print("<select name=oper><option>+</option><option>-</option>");
		out.print("<option>*</option><option>/</option></select> ");
		out.print("<input type=text name=su2 size=4> ");
		out.print("<input type=submit value=계산></form>");

		// 1. 폼내의 데이터 얻기
		String su1 = req.getParameter("su1");
		String su2 = req.getParameter("su2");
		String oper = req.getParameter("oper");

		String gildong = req.getParameter("gildong");// 폼에 정의되지 않은 이름사용.
		// ===> 정의되지 않은 이름은 null값이 저장!!

		// 2. 계산 실행
		Calculator calc = new Calculator(Integer.parseInt(su1), Integer.parseInt(su2), oper);

		// 3. 계산결과값 얻기
		String result = calc.getResultStr();
		// "결과값: 22+33=55"

		// 4. 결과값 (브라우저에)출력
		out.print("<hr>" + result);
		out.print("</center></body></html>");

	}// doPost
}
