<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>사용자 인증</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<style type="text/css">
		
		.normal {  font-family: "굴림", "돋움"; font-size: x-small; font-style: normal; font-weight: normal; text-decoration: none}
		.normalbold {  font-family: "굴림", "돋움"; font-size: x-small; font-style: normal; font-weight: bold; text-decoration: none}
		
		</style>
	</head>
<%-- sessionT2.jsp --%>

  <body> 
  <%
	// 로그인 폼에 입력된 아이디와 비밀번호가져와
	String id= request.getParameter("id");
	String pass= request.getParameter("pass");
	
	HashMap<String,String> map= new HashMap<>();
	 map.put("gildong","1234");
     map.put("lime","5678");
     map.put("juwon","3333");
	
	if(id !=null && pass.equals(map.get(id)) ){
		session.setAttribute("login", "success");
	%>
	
   <center>
   <p class="normalbold">사용자 인증 완료</p>
   <p class="normal"><a href="sessionT3.jsp">서비스페이지</a></p>
   </center>  
   <%}else{
	   response.sendRedirect("sessionT1.jsp"); // a태그와 location과 동일하다.
   		// out.print("<script>location.href='sessionT1.jsp'</script>");
   		// out.print("<script>history.back();</script>"); <-- 결과는 같으나  history가 없으면 동작을 안한다.
   }
   %>
  </body>
</html>


















