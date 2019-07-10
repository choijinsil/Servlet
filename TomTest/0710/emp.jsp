<%@page import="com.encore.t0709.vo.Emp"%>
<%@page import="java.util.List"%>
<%@page import="com.encore.t0709.dao.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
	EmpDAO empDao = new EmpDAO();
	List<Emp> list;
	%>
	
	<%
	list = empDao.findAll();
	Emp emp = new Emp();
	%>
	<form>
		<table border="1">
			<tr>
				<th bgcolor="#FF0000">사원번호</th>
				<th bgcolor="#FF8000">사원명</th>
				<th bgcolor="#FFFF00">입사일</th>
				<th bgcolor="#00FF00">급여</th>
				<th bgcolor="#0000FF">부서명</th>
			</tr>
			<% 
				for (int i = 0; i < list.size(); i++) {
				emp = list.get(i);
			%>
			<tr>
				<td id="empno"><%= emp.getEmpno()%></td>
				<td id="ename"><%= emp.getEname()%></td>
				<td id="hiredate"><%= emp.getHiredate() %></td>
				<td id="sal"><%= emp.getSal() %></td>
				<td id="dname"><%= emp.getDname() %></td>
			</tr>
			<% } %>

		</table>

	</form>

</body>
</html>