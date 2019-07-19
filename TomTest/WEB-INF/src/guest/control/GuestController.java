package guest.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.encore.t0717.vo.UserInfo;

import guest.dao.GuestDAO;
import guest.vo.Guest;
import jdk.nashorn.internal.ir.RuntimeNode.Request;

@WebServlet("/guest/control")
public class GuestController extends HttpServlet {
	GuestDAO dao;
	List<Guest> list;

	public GuestController() {
		dao = new GuestDAO();

	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String action = req.getParameter("action");
		String no = req.getParameter("no");

		if (action == null || action.equals("list")) {
			try {
				list = dao.selectAll();
				req.setAttribute("list", list);
				req.getRequestDispatcher("/0719/list.jsp").forward(req, res);
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} else if (action.equals("form")) {
			// res.sendRedirect("/TomTest/guest/control?action=");
			req.getRequestDispatcher("/0719/inputForm.jsp").forward(req, res);

		} else if (action.equals("insert")) {
			String username = req.getParameter("username");
			String email = req.getParameter("email");
			String tel = req.getParameter("tel");
			String pass = req.getParameter("pass");
			String contents = req.getParameter("contents");

			Guest vo = new Guest();
			vo.setWriter(username);
			vo.setEmail(email);
			vo.setTel(tel);
			vo.setPass(pass);
			vo.setContents(contents);

			if (dao.insert(vo)) {
				// insert가 되었다면
				// dml후에는 forward이동을 하는것이 아니다.
				System.out.println("게시판 작성완료");
				try {
					list = dao.selectAll();
					req.setAttribute("list", list);
					res.sendRedirect("/TomTest/guest/control");
					// req.getRequestDispatcher("/0719/list.jsp").forward(req, res);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} else {
				System.out.println("게시판 작성이 안되었어요.");
			}

		} else if (action.equals("edit")) {
			Guest vo = dao.selectById(Integer.parseInt(no));
			req.setAttribute("vo", vo);
			req.getRequestDispatcher("/0719/editForm.jsp").forward(req, res);

		} else if (action.equals("update")) {
			String username = req.getParameter("username");
			String email = req.getParameter("email");
			String tel = req.getParameter("tel");
			String pass = req.getParameter("pass");
			String contents = req.getParameter("contents");
			
			Guest noVo= (Guest) req.getAttribute("vo");
			Guest vo = new Guest();
			
			vo.setNo(noVo.getNo());
			vo.setWriter(username);
			vo.setEmail(email);
			vo.setTel(tel);
			vo.setPass(pass);
			vo.setContents(contents);

			if (dao.update(vo)) {
				try {
					// req.setAttribute("upVo",vo);
					list = dao.selectAll();
					req.setAttribute("list", list);
					res.sendRedirect("/TomTest/guest/control");
					// req.getRequestDispatcher("/0719/list.jsp").forward(req, res);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}else {
				System.out.println("수정 안되었어요.");
			}

		}
	}// service

}
