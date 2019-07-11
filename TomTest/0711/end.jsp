<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답페이지</title>
</head>
<body>
	<h3>end.jsp 응답페이지야!(응답페이지, 영역데이터 출력)</h3>
	<hr>
	k1(pageContext): <%= pageContext.getAttribute("k1") %><br>
	k2(request): <%=request.getAttribute("k2") %><br>
	k3(session): <%=session.getAttribute("k3") %><br>
	k4(application): <%=application.getAttribute("k4") %><br>

</body>
</html>