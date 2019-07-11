<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전달데이터 출력</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
	String age=request.getParameter("age");
	String name=request.getParameter("name");
%>
<body>
	<h3>전달 파라미터 출력</h3>
	<p>전달받은 나이는 <%=age %>살 입니다.</p>
	<p>이름은 <%=name %>입니다.</p>

</body>
</html>