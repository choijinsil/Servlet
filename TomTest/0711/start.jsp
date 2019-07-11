<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>start.jsp 시작</title>
</head>
<body>
	<h3>start.jsp(요청페이지, 영역객체, 영역데이터 테스트)</h3>
	<%
		// 데이터를 영역(page < request < session < application)에 저장
		pageContext.setAttribute("k1","siri"); // 현재페이지에서만 공유
		request.setAttribute("k3","하나"); // 요청관계에 있는 페이지간 공유
		session.setAttribute("k3","유나"); // 동일 브라우저(동일접속) 내에서 공유
		application.setAttribute("k4","돼지"); // 동일서버(Tomcat)에서의 공유
		
		// 페이지 이동 시 영역에 따라 requestDispatcher와 sendRedirect를 다르게 사용한다.
		RequestDispatcher rd = request.getRequestDispatcher("/0711/end.jsp"); 
		rd.forward(request , response);// request, session, application출력
		// response.sendRedirect("end.jsp"); // session과 application만 출력
		// 키값은 같은 영역에서 중복되면 덮어쓰기, 다른영역이라면 키값이 중복되어도 덮어쓰기가 안된다.
	%>

</body>
</html>