<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력폼</title>
</head>
<body>
	<h3><strong>입력폼</strong></h3>
	<hr>
	<a href="control?action=list">게시물 목록으로</a>
	<br><br>
	<form action="control?action=insert" method="post">
		<table border="1">
			<tr>
				<th bgcolor="#F5A9F2">작성자</th>
				<td>
					<input type="text" name="username">
				</td>	
			</tr>
			<tr>
				<th bgcolor="#F5A9F2">email</th>
				<td>
					<input type="text" name="email">
				</td>	
			</tr>
			<tr>
				<th bgcolor="#F5A9F2">전화번호</th>
				<td>
					<input type="text" name="tel">
				</td>	
			</tr>
			<tr>
				<th bgcolor="#F5A9F2">비밀번호</th>
				<td>
					<input type="password" name="pass">
				</td>	
			</tr>
			<tr >
				<td colspan="2">
					<textarea rows="8" cols="33" name="contents"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="입력">
					<button >취소</button>
				</td>
			</tr>
			
		</table>
	</form>

</body>
</html>