<%@page import="com.encore.t0709.Calculator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
</head>
<body>
	<%!int result;%>

	<%
		int su1 = Integer.parseInt(request.getParameter("su1"));
		String oper = request.getParameter("oper");
		int su2 = Integer.parseInt(request.getParameter("su2"));
		Calculator calc= new Calculator(su1,su2,oper);
	%>

	<font size="13"><strong>결과값:<%=calc.getResultStr()%></strong></font>

</body>
</html>