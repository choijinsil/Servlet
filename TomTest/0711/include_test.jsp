<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%-- 레이아웃 설정을 할 것이다. --%>
<body>
	<h3>include directive 테스트	</h3>
	<hr>
	<%@include file="menu.jsp" %>
	<table border="0" cellpadding="5">
		<tr>
			<td align="left">
				<font size="-1"><%@include file="shopping.jsp" %></font>
			</td>
			<td width="30">&nbsp;</td>
			<td align="left">
				<font size="-1"><%@include file="news.jsp" %></font>
			</td>
		</tr>
	</table>
</body>
</html>