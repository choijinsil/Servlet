package com.encore.t0716.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.encore.t0716.dao.EmpDAO;
import com.encore.t0716.vo.Emp;

@WebServlet("/0716/empInfo")
public class Controller extends HttpServlet {
	EmpDAO empDao;
	List<Emp> list;

	public Controller() {
		empDao = new EmpDAO();
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		list = empDao.find();
		req.setAttribute("list", list);
		req.getRequestDispatcher("/0716/emp_info.jsp").forward(req, res);
	}

}
