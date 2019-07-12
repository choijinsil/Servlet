<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>

<body>
	<h3>로그인 화면</h3>
	<form action="selProduct.jsp" method="post">
	이름: <input type="text" name="username" size="10">
	<input type="hidden" name="action" value="login">
	<input type="submit" value="로그인">
	</form>
</body>
</html>