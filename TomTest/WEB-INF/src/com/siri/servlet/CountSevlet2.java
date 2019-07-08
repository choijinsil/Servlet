package com.siri.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

public class CountSevlet2 extends HttpServlet {
	SqlMapClient smc; // 용도? XML문서내의 sql호출

	@Override
	public void init() throws ServletException {
		smc = MySqlMapClient.getSqlMapInstance();
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html; charset=UTF-8");
		// req: 요청 resp: 응답, this
		PrintWriter out = resp.getWriter();
		// 한글을 한개라도 사용하면 글자 깨짐을 방지하기 위해 '문자셋' 설정을 해야 한다.
		out.print("<html><head><title>ServletCount</title></head></html>");
		out.print("<body><h3>ServletCounter</h3><hr>");

		String addr = req.getRemoteAddr();
		try {

			int count = (Integer) smc.queryForObject("count.select", addr); // 저장된 ip존재 유무

			if (count == 0) { // 저장된 아이디 존재하지 않는다면
				smc.insert("count.insert", addr);
				smc.update("count.update");
			}
			out.print("조회수: " + smc.queryForObject("count.selectCnt").toString() + "회</body></html>");

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
