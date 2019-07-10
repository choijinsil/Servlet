<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<!-- HTML주석: 소스보기에 출력된다. -->
<%-- JSP주석--%>
<body>
	<%
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
	%>
	<!-- <%= new Date() %> 실행은 되는데 화면에 출력되진 않는다. --> 
	<font color="red" size="13">id =<%=id %></font><br>
	<font color="blue" size="13">pwd =<%=pwd %></font>
</body>
</html>