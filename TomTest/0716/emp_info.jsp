<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>사원정보</h3>
	<form method="post">
	<table>
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>부서명</th>
			<th>급여등급</th>
		</tr>
		<c:forEach items="${list }" var="p">    
			<tr>
				<td>${p.empno }</td>
				<td>${p.ename }</td>
				<td>${p.dname }</td>
				<td>${p.grade }</td>
			</tr>
		</c:forEach>
	</table>
	</form>
	

</body>
</html>