<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    buffer="1kb"
    autoFlush="true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> out(buffer) 객체 테스트</h3>
	<hr>
	<%
		for(int i=0; i<1000; i++){
			out.print("a");
		}
	
		out.print("현재 버퍼의 크기: "+out.getBufferSize());
		out.print("<br>버퍼의 남은 양: "+out.getRemaining());
	
	%>
</body>
</html>