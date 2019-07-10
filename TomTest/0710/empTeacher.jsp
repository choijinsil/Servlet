<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.util.Properties"%>
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
			  // conn/conn.properties파일안의 속성을 읽어서 아래의 적당한 위치한 데이터 설정
	        
	        String path = application.getRealPath("/");
	         //현재프로젝트(WebContext)의 실제경로(하드디스크경로) 얻어오기
	        System.out.println("현재 프로젝트의 경로>>>"+ path);
	        //==> E:\jaelee\workspace2\TomTest\
	        
	        Properties pro = new Properties();
	           pro.load(new FileReader
	        		 (path+"conn/conn.properties"));
	   
	        //Class.forName("driver클래스명");
	        //Connection conn = DriverManager.getConnection("DB접속url","user","password");  
	        Class.forName(pro.getProperty("driver"));
	        Connection conn = DriverManager.getConnection
	        		               (pro.getProperty("url"), pro);  
	        System.out.println("DB연결성공!!");
	        
	        String sql="select empno, ename, hiredate, sal, dname from emp e join dept d on e.deptno=d.deptno";
	        PreparedStatement stmt = conn.prepareStatement(sql);
	        ResultSet rs= stmt.executeQuery();
	        
	        while(rs.next()){
			%>

			<tr>
				
				<td><%= rs.getInt("empno")%></td>
				<td><%= rs.getString("ename") %></td>
				<td><%= rs.getDate("hiredate") %></td>
				<td><%= rs.getInt("sal") %></td>
				<td><%= rs.getString("dname") %></td>
			</tr>
			<%} %>
		</table>

	</form>

</body>
</html>