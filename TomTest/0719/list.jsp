<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록</title>
</head>

<body>
	<hr>
	<h3> 방명록: 리스트</h3>
	<hr>
	<a href="control?action=form">방명록 쓰기</a>
	<br><br>
	<form action="list" method="post">
		<table border="1">
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>전화번호</th>
				<th>작성일</th>
				<th>내용</th>
			</tr>
			
			<c:forEach items="${list }" var="guest">
				<tr>
					<td>${guest.no }</td>
					<td>${guest.writer }</td>
					<td>${guest.tel }</td>
					<td><fmt:formatDate value="${guest.wdate }" pattern="yyyy/MM/dd HH:mm:ss"/></td>
					<td><a href="control?action=edit&no=${guest.no }">${guest.contents }</a></td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<br>
	
	<c:if test="${page==1 }">
		이전
	</c:if>
	
	<c:if test="${page>1 }">
		<a href="control?action=list&page=${page-1 }">이전</a>
	</c:if>
	
	<c:forEach begin="1" end="${totalPage }"  var="i">
         [<a href="control?action=list&page=${i }">${i }</a>]
      </c:forEach>
      
	<c:choose>
		<c:when test="${totalPage > page }">
			<a href="control?action=list&page=${page+1 }">다음</a>
		</c:when>
		<c:otherwise>다음</c:otherwise>
	</c:choose>
	

</body>
</html>