<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>a의 입력폼</h3>
	<hr>
	<form action="b.jsp" method="post" 
		enctype="multipart/form-data"
	>
		이름: <input type="text" name="un"><br>
		파일: <input type="file" name="myfile"><br>
		<button>전송</button><br>
	</form>
</body>
</html>