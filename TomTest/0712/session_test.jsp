<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 테스트</title>
</head>
<body>
	<h3>세션테스트</h3>
	<hr>
	<%
	// 세션의 기본값
	//session.setMaxInactiveInterval(3);
	if(session.isNew()){ // 브라우저를 통해 서버에 최초 URL요청을 했다면
		out.print("<script>alert('첫접속 ㅊㅋㅊㅋ\\n 안뇽?')</script>");
	}
	
	%>
	1. 세션ID (서버가 브라우저에게 부여하는 식별번호): <%=session.getId() %><br>
	2. 세션유지시간: <%=session.getMaxInactiveInterval() %>초

</body>
</html>