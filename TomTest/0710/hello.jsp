<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안녕</title>
</head>
<body>
	<font color="blue" size="12">안녕, JSP~~!</font>
	<br>
	<script type="text/javascript">
		document.write("나는 자바스크립트 ^^");
	</script>
	<br>
	
	<% 
		out.print("나는 JAVA~!");
		System.out.println("나는 콘솔");
	%>
	<%="안녕" %>
	
</body>
</html>