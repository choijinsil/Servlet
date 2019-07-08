package com.siri.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CountSevlet extends HttpServlet {
	int cnt;
	ArrayList<String> arr; // 접속한 ip주소를 저장하는 용도

	@Override
	public void init() throws ServletException {
		arr= new ArrayList<String>();
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html; charset=UTF-8");
		// req: 요청 resp: 응답, this
		PrintWriter out = resp.getWriter();
		// 한글을 한개라도 사용하면 글자 깨짐을 방지하기 위해 '문자셋' 설정을 해야 한다.
		out.print("<html><head><title>ServletCount</title></head></html>");
		out.print("<body><h3>ServletCounter</h3><hr>");

		// 동일사용자(동일 브라우저)의 경우 --> 조회 수를 1증가!
		// 세션 == 접속 (conn)
		// 브라우져는 달라도 세션은 동기화 되어 있다.
		// 브라우저 하나당 세션 하나다.
		System.out.println(req.getLocalAddr()); // 내 IP
		System.out.println("하나>>" + req.getRemoteAddr()); // 접속한 사람 IP

		HttpSession session = req.getSession();
//		if(session.isNew()) { // 세션이 새로운 상태라면?
		String addr= req.getRemoteAddr();
		
		if(!arr.contains(addr)) { // arr.contains list에 addr이 포함되어있다면 true, 아니라면 false
			cnt++;
			arr.add(addr);
		}

		out.print("조회수: " + cnt + "회</body></html>");
		// http자체는 비연결형이다.
		// req에는 연결 정보가 있다(session)

	}

}
