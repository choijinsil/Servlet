<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>심플계산기</h3>
	<hr>
	<form action="result.jsp" method="post">
		<input type="text" size="4" name="su1"> 
		<select name="oper">
			<option>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select> 
		<input type="text" size="4" name="su2"> 
		<input type="submit" value="계산"> <br>

		<div id="d1"></div>
		<p></p>
		<span></span>

	</form>


</body>
</html>