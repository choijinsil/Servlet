<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 선택한 장바구니에 대해 세션(장바구니역할) --%>
<html>
<head>
<meta charset="UTF-8">
<title>상품추가</title>
</head>
<body>
	<%!ArrayList<Object> arr = new ArrayList<>(); %>
	
	<%
		request.setCharacterEncoding("utf-8");
		String product= request.getParameter("product");
		
		if(product!=null){
			arr.add(product);
			session.setAttribute("fruits", arr);
			out.print("<script>alert('"+product+"(이)가 추가되었습니다!'); history.back();</script>");
		}else{
			out.print("<script>history.back()</script>");
		}
		// 사과 100원 수박 200원 딸기 300원 바나나 400원 포도 500원
	%>

</body>
</html>