<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력폼제공</title>
</head>
<body>
	<h3>입력폼,COS를 사용한 MultipartRequest 객체 사용</h3>
	<hr>
	<form action="resultFile2.jsp" method="post"
		enctype="multipart/form-data" 
		>
		이름: <input type="text" name="username"><br>
		파일:	 <input type="file" name="myfile"><br>
		<button>전송</button><br>
	</form>

</body>
</html>