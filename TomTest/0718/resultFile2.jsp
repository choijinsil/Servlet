<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지</title>
</head>
<body>
<h3>결과페이지(파일업로드)</h3>
<%
	String saveDir=application.getRealPath("/upload");
	int maxSize=5* 1024 * 1024; //업로드 될 파일의 크기제한, 단위:byte
	MultipartRequest mreq= new MultipartRequest
	(request,saveDir, maxSize,"utf-8",new DefaultFileRenamePolicy()); 
	//MultipartRequest호출 ==파일업로드!
	out.print("파일업로드 성공");
	String name=mreq.getParameter("username");
	
%>
	<br>
	이름: <%=name %><br>
	원본파일명: <%=mreq.getOriginalFileName("myfile") %>
	저장파일명: <%=mreq.getFilesystemName("myfile") %>
</body>
</html>