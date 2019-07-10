<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		table{
			margin: auto;
			text-align: center;
			border-color: gray;
			width: 50%;
		}
		td{
			padding: 5px;
		}
		
		h3{
			text-align: center;
		}
		
	</style>
</head>
<body>
	<h3>구구단 출력</h3>
	<form>
		<table border="1"  >
			<tr >
				<th>2단</th>
				<th>3단</th>
				<th>4단</th>
				<th>5단</th>
				<th>6단</th>
				<th>7단</th>
				<th>8단</th>
				<th>9단</th>
			</tr>
			<%!int i;
	int j;
	int result;%>
			<tr>
			<%
				for (i = 1; i < 10; i++) {
					for (j = 2; j < 10; j++) {
						result = j * i;
			%>
				<td><%=j %>*<%=i %>=<%=result%></td>

			<%}%>
			</tr>
			<%}%>
			
		</table>
	</form>
</body>
</html>