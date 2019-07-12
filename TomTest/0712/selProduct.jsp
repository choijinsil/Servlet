<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 상품을 선택하는 화면(추가버튼 클릭) --%>
<html>
<head>
<meta charset="UTF-8">

<%
	request.setCharacterEncoding("utf-8");

	String username = request.getParameter("username");
	if (username != null) {
		session.setAttribute("loginName", username);
	}
	
	String action=request.getParameter("action");
	ArrayList<String> cartList= (ArrayList)session.getAttribute("fruits");
	if(action!=null && cartList!=null && action.equals("remove")){
		//장바구니 비우기
		cartList.clear();
	}
%>
<title>상품목록</title>
</head>
<body>
	<h3>상품목록 페이지</h3>
	<hr>
	[<%=session.getAttribute("loginName")%>]님이 로그인한 상태입니다.
	<br>
	<br>
	<form action="add.jsp" method="post">
		<select name="product">
			<option>사과</option>
			<option>수박</option>
			<option>딸기</option>
			<option>포도</option>
			<option>바나나</option>
		</select>
		<button>추가</button>
	</form>
	<br>
	<br>
	<a href="checkOut.jsp">장바구니 보기</a>
	
</body>
</html>