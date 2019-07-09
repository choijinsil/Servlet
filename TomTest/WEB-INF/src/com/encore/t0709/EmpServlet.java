package com.encore.t0709;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.encore.t0709.dao.EmpDAO;
import com.encore.t0709.vo.Emp;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

@WebServlet("/empInfo")
public class EmpServlet extends HttpServlet {
	EmpDAO empDao;
	List<Emp> list;

	@Override
	public void init() throws ServletException {
		empDao = new EmpDAO();

	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.print("<html><head><title>사원 조회 </title></head>");
		out.print("<body><form><table border=1><tr><th>사원번호</th><th>사원명</th><th>입사일</th><th>급여</th><th>부서명</th></tr>");
		list = empDao.findAll();
		Emp emp = new Emp();

		for (int i = 0; i < list.size(); i++) {
			emp = list.get(i);
			out.print("<tr>");
			out.print("<td>" + emp.getEmpno() + "</td>");
			out.print("<td> " + emp.getEname() + "</td>");
			out.print("<td> " + emp.getHiredate() + "</td>");
			out.print("<td> " + emp.getSal() + "</td>");
			out.print("<td> " + emp.getDname() + "</td>");
			out.print("</tr>");
		}
		out.print("</table></form></body></html>");
	}
}
