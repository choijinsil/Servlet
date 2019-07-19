<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>a화면의 결과페이지</h3>
	<%
		String dir= application.getRealPath("/a");
		int max=5*1024*1024;
		MultipartRequest mreq=new MultipartRequest
		(request,dir, max, "utf-8",new DefaultFileRenamePolicy());
		out.print("a로 파일 업로드 성공");
		String name=mreq.getParameter("un");
	%>
	<br>
	이름: <%=name %><br>
	원본파일명: <%=mreq.getOriginalFileName("myfile") %>
	저장파일명: <%=mreq.getFilesystemName("myfile") %>

</body>
</html>