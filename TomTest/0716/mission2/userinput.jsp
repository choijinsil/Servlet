<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
<script type="text/javascript">
	function setData(){
		
		// var jumin=document.getElementsByName("jumin1").text;
		var jumin1=document.frm.jumin1.value;
		var birthYear= jumin1.substr(0,2);
		var birthMonth= jumin1.substr(2,2);
		var birthDate= jumin1.substr(4,2);
		
		var ch=document.frm.jumin2.value.charAt(0); // 1,2,3,4,...
		
		if(ch=='1'||ch=='2'||ch=='5'||ch=='6'){
			birthYear='19'+birthYear;
		}else{
			birthYear='20'+birthYear;
		}
		
		document.frm.year.value = birthYear;
		// select박스 값 세팅 하기
		document.frm.month.value = birthMonth;
		document.frm.day.value = birthDate;
		
	}
	function ck(){
		var win = window.open("confirmid.jsp", "아이디 중복확인", "width=500,height=500");

	}
		
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자등록</title>  
</head>
<%-- userinput.jsp --%>
<body>
  <center>
  <form name="frm" action="userprocess.jsp" method="post">
  <table width="600" border="0" cellpadding="5" >
      <tr bgcolor="#3399cc">
         <td><font size="4" color="white">사용자정보입력</font>
      </tr>
      <tr>
         <td>안녕하세요. 이 페이지를 자유롭게 이용하려면
               먼저 회원가입을 하셔야 합니다.<br>
               아래의 사항들을 빠짐없이 기록해 주세요.
         </td>
      </tr>
  </table>
  <table border="1" cellpadding="5" width="600">
      <tr>
         <td width="100" bgcolor="#ffcccc">사용자ID<font color="red">*</font></td>
         <td colspan="3"><input type="text" name="id"> 
         <input type="button" value="중복확인" onclick="ck()">
          <font color="blue">(6자리~12자리)</font>
         </td>
      </tr>
      <tr>
         <td width="100" bgcolor="#ffcccc">비밀번호<font color="red">*</font></td>
         <td><input type="password" name="pass"> </td>
         <td width="100" bgcolor="#ffcccc">비번확인</td>
         <td><input type="password" name="pass2"> </td>
      </tr>
      <tr>
         <td width="100" bgcolor="#ffcccc">사용자이름<font color="red">*</font></td>
         <td colspan="3"><input type="text" name="name"> </td>
      </tr>
      <tr>
         <td width="100" bgcolor="#ffcccc">주민번호<font color="red">*</font></td>
         <td colspan="3">
              <input type="text" name="jumin1" size="6" maxlength="6"
                      style="height:23px" >
              -
              <input type="password" name="jumin2" size="7" maxlength="7"
                      style="height:23px" onblur="setData()"></td>
      </tr>
      
      <tr>
         <td width="100" bgcolor="#ffcccc" >생년월일</td>
         <td colspan="3">
         <input type="text" name="year" size="4" maxlength="4">년
         <select name="month">
         <% 
         	
         	for(int i=1; i<13; i++){
         	if(i<10){%>
            <option>0<%=i %></option><%}
         	else{%>
         	<option><%=i %></option>
         	<%}
         	}%>
         </select>월          
         <select name="day" >
         <c:forEach begin="1" end="31" var="num">
         	<c:if test="${num<10}"><option>0${num}</option></c:if>
		    <c:if test="${num>9}"><option>${num}</option></c:if>
		 </c:forEach>
         </select>일          
          </td>
      </tr>
      <tr>
         <td width="100" bgcolor="#ffcccc">우편번호<font color="red">*</font></td>
         <td colspan="3">
            <input type="text" name="zip" size="5" maxlength="5"></td>
      </tr>
      <tr>
         <td width="100" bgcolor="#ffcccc">주소</td>
         <td colspan="3"><input type="text" name="addr" size="50"></td>
      </tr>
      <tr>
         <td width="100" bgcolor="#ffcccc">E-Mail<font color="red">*</font></td>
         <td colspan="3"><input type="text" name="email" size="30"></td>
      </tr>
      <tr>
         <td width="100" bgcolor="#ffcccc">직업<font color="red">*</font></td>
         <td colspan="3">
               <select name="job" >
                <% 
                String jobs[]={"==선택==","학생","공무원","언론/출판","군인/경찰","일반사무직",
        		   "영업직","기술/전문직","보건/의료","자영업","주부","기타" };
                pageContext.setAttribute("list", jobs);
        		%>    
        		<c:forEach items="${list }" var="i">
        			<option>${i }</option>
        		</c:forEach>  		
               </select>
         </td>
      </tr>
      <tr align="center">
         <td colspan="4">
           <input type="submit" value="등록" >
           <input type="reset" value="취소">
         </td>
      </tr>
  </table>
  </form>
  </center>
</body>
</html>