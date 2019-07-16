<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>dbcp 테스트</h3>
	<hr>
	<form method="post">
		사번: <input type="text" name="empno"> <input type="submit"
			value="검색">
	</form>
	<hr>
	<%
		if (request.getMethod().equals("POST")) {
			// 폼내의 검색 버튼을 클릭했다면
			Context ctx = new InitialContext();
			Context tomCtx = (Context) ctx.lookup("java:comp/env"); // 톰캣 서버가 갖는 환경관련 Context얻기
			DataSource ds = (DataSource) tomCtx.lookup("jdbc/oracle");
			Connection conn = ds.getConnection(); // 커넥션 풀 내의 미리 생성된 Connection요청(주소얻어오기)
			System.out.println("DB연결 성공!");
			String empno = request.getParameter("empno");
			String sql = "select ename from emp where empno=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(empno));
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {//사번에 일치하는 사원명을 찾았다면
				out.print(empno + "사번은 [" + rs.getString("ename") + "]사원입니다!!");
			} else {
				out.print("<font color=red>" + empno + "사번이 존재하지 않습니다!!</font>");
			}
			//7788사번은 [SCOTT]사원입니다!!

		} //if 요청방식==POST
	%>


</body>