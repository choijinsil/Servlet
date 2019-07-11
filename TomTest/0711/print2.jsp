<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력페이지</title>
</head>
	<%
		request.setCharacterEncoding("utf-8");
		String id= request.getParameter("id");
		String pwd= request.getParameter("pwd");
		String[] fruit= request.getParameterValues("fruit");
		
		String room= request.getParameter("room");
		String hide= request.getParameter("hide");
		String myfile= request.getParameter("myfile");
		String sports= request.getParameter("sports");
		String note= request.getParameter("note");
		
	%>
<body>
	<h3>input2.jsp 폼안의 데이터 출력</h3>
	<hr>
	아이디:<%=id %><br>
	비번:<%=pwd%><br>
	과일:<%
		if(fruit!=null){
			for(int i=0; i<fruit.length; i++){ 
			out.println(fruit[i]+"\t");
			}
		}else{
			out.println("선택된 과일이 없어요.");
		}
		%>
	<br>
	강의실:<%=room %><br>
	히든:<%=hide %><br>
	파일:<%=myfile %><br>
	운동:<%=sports %><br>
	비고:<%=note %><br>

	<%
		Enumeration<String> names= request.getParameterNames(); 
		while(names.hasMoreElements()){
			String name= names.nextElement();
			out.print(name+","+request.getParameter(name)+"<br>");
		}
	%>
	
	
	

</body>
</html>