package guest.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

		try {
			String action = req.getParameter("action");
			String no = req.getParameter("no");

			// 조회시 forward, 수정 입력시 redirect
			if (action == null || action.equals("list")) {

				String pageNo = req.getParameter("page");
				int page = 0;
				if (pageNo == null) {
					page = 1;
				} else {
					page = Integer.parseInt(pageNo);
				}

				// page를 기준한 start와 end값 구하기
//				int end = page * 10;
//				int start = end - 9;
//				Map<String, Integer> map = new HashMap<>();
//				map.put("start", 1);
//				map.put("end", 10);
//				list = dao.selectPage(map);
				list = dao.selectAll(page);
				int totalPage = dao.selectTotalPage();
				req.setAttribute("list", list); // 뷰와 공유하기위해
				req.setAttribute("page", page); // 현재 페이지
				req.setAttribute("totalPage", totalPage); // 전체 페이지 수

				req.getRequestDispatcher("/0719/list.jsp").forward(req, res);

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
//					System.out.println("게시판 작성완료");
//					list = dao.selectAll();
//					req.setAttribute("list", list);
					res.sendRedirect("/TomTest/guest/control");
					// req.getRequestDispatcher("/0719/list.jsp").forward(req, res); <-- 동일데이터가 2번
					// 입력될 수 있다.
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

				Guest vo = new Guest();
				vo.setNo(Integer.parseInt(no));
				vo.setWriter(username);
				vo.setEmail(email);
				vo.setTel(tel);
				vo.setPass(pass);
				vo.setContents(contents);

				if (dao.update(vo)) {
					// req.setAttribute("upVo",vo);
//					list = dao.selectAll();
					req.setAttribute("list", list);
					res.sendRedirect("/TomTest/guest/control?action=list");
					// req.getRequestDispatcher("/0719/list.jsp").forward(req, res);

				} else {
					res.getWriter().print("<script>history.back()(</script>");
					System.out.println("수정 안되었어요.");
				}

			} else if (action.equals("delete")) {
				if (dao.delete(Integer.parseInt(no))) {
					req.setAttribute("list", list);
					res.sendRedirect("/TomTest/guest/control?action=list");
				}
			}else if(action.equals("passCheck")) {
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}// service

}
