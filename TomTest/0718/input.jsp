<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력폼</title>
</head>
<body>
	<h3>입력폼</h3>
	<hr>
	<%
		String youName = getServletConfig().getInitParameter("youName");
		out.print("당신의 이름은? :"+youName);
		
		// application==ServletContext
		String msg=application.getInitParameter("common");
		out.print("서버의 메세지: ["+msg+"]<br>");
	%>
	<form method="post" action="result.jsp">
		이름: <input type="text" name="username"><br>
			 <button>전송</button>
	</form>

</body>
</html>