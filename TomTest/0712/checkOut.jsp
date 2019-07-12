<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 상품을 선택하는 화면(추가버튼 클릭) --%>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 결과화면</title>
</head>
	<%!
		ArrayList<Object> list = new ArrayList<>();
	%>
	
	<%
		
		HashMap<String, Integer> map= new HashMap<>();
		
		map.put("사과", 100);
		map.put("수박", 200);
		map.put("딸기", 300);
		map.put("바나나", 400);
		map.put("포도", 500);
		// session.invalidate()
		list=(ArrayList)session.getAttribute("fruits");
	%>
<body>
	<h3>선택된 상품목록</h3>
	<hr>
	
	<%
		int income=0;
		for(int i=0 ; i<list.size(); i++){
			String fruitName=list.get(i).toString();
			
			out.print(fruitName+"<br>");
			income+=map.get(fruitName);
			
			/* if(list.get(i).equals("사과")){
				income+=100;
			}else if(list.get(i).equals("수박")){
				income+=200;
			}else if(list.get(i).equals("딸기")){
				income+=300;
			}else if(list.get(i).equals("바나나")){
				income+=400;
			}else{
				income+=500;
			} */
		}
	// 사과 100원 수박 200원 딸기 300원 바나나 400원 포도 500원
	
	%>
	<hr>
	총합계:<%=income %> 원
	<br>
	
	<input type="button" value="장바구니비우기(결제)" onclick="location.href='selProduct.jsp?action=remove'">

</body>
</html>