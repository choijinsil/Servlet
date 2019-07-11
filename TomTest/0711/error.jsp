<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	table {
	margin: auto;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>
			<b>페이지 에러발생: <%=exception.getMessage() %></b>
			</td>
		</tr>
		<tr>
			<td>
			시스템이 원활하지 않습니다.
			잠시후에 다시 접속해 주세요.
			</td>
		</tr>
		<tr>
			<td>
				<img src="../image/iconfinder_comment_error_66708.png">
			</td>
		</tr>
		
	</table>
	
	

</body>
</html>