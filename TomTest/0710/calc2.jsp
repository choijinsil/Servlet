<%@page import="com.encore.t0709.Calculator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function addLine(){
		document.getElementById("d1").innerHTML="<hr>";	
		
	}
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
	Calculator calc;
	%>
	

	<h3>심플계산기</h3>
	<hr>
	<form method="post">
		<input type="text" size="4" name="su1"> 
		<select name="oper">
			<option>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select> 
		<input type="text" size="4" name="su2"> 
		<input type="submit" value="계산"> <br>

	</form>
	
	<%
	if(request.getMethod().equals("POST")){
		out.println("<hr>");
		String su1 = request.getParameter("su1");
		String oper = request.getParameter("oper");
		String su2 = request.getParameter("su2");

		if(su1.equals("") || su2.equals("")){%>
		
		<p style="color: red"><strong>데이터를 입력</strong></p>
		
		<%}else if(!su1.matches("[\\d]+")||!su2.matches("[\\d]+")){%>
		<p style="color: red"><strong>숫자만 입력</strong></p>
		<%}else if(oper.equals("/")&&su2.equals("0")){%>
		<p style="color: red"><strong>0으로 나눌 수 없습니다.</strong></p>	
		<%}else{
		calc= new Calculator(Integer.parseInt(su1),Integer.parseInt(su2),oper);%>
		<font color="blue"><strong><%=calc.getResultStr()%></strong></font>
		<%}
	}
	%>

</body>
</html>