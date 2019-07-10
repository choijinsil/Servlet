<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>조회수</title>
</head>
<body>
	<%!
		int cnt; // 맴버!
	%>
	
	<%
		if(session.isNew()){
			cnt++;
			System.out.println("처음 접속이네 ^^");
		}else{
			System.out.println("두번째 접속이네 ^^");
		}
	%>
	<font size="14" color="red" >조회수: <%= cnt %>회 </font>
	<font size="14" color="blue" ><br>세션아이디: <%=session.getId() %></font>

</body>
</html>