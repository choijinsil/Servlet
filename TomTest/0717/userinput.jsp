<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자등록</title>  
   <script type="text/javascript">
      function birthChange(){
    	  console.log('birthChange')
    	  var jumin1 = document.frm.jumin1.value ;//'960302'
    	  var birthYear = jumin1.substr(0, 2);//'96'
    	  var ch = document.frm.jumin2.value.charAt(0);//'1012345' ==> '1'
    	  
    	  if(ch=='1' || ch=='2' || ch=='5' || ch=='6'){
    		  birthYear = '19'+ birthYear 
    	  }else{//ch='3' '4' '7' '8'
    		  birthYear = '20'+ birthYear 
    	  }    	  
    	  document.frm.year.value = birthYear;
    	  document.frm.month.value = jumin1.substr(2, 2);//'03'
    	  document.frm.day.value  = jumin1.substr(4, 2);//'02'
      }//birthChange
      function ckid(){
    	  var id = document.frm.id.value;
    	  if(id==''){
    		  alert('아이디를 입력!!');
    		  return;
    	  }
    	  
    	  window.open('confirmid.jsp?id='+ id,'confirm',
    			  'toolbar=no,location=no,status=no,'
    			  +'menubar=no,scrollbars=no,resizable=no,'
    			  +'width=300,height=200,top=200,left=300');
    	  
      }//ckid
      
      
   </script>
   <script type="text/javascript" src="/TomTest/js/check.js"></script>
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
         <input type="button" value="중복확인" onclick="ckid()">
          <font color="blue">(6자리~20자리)</font>
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
                      style="height:23px" onblur="birthChange()"></td>
      </tr>
      <tr>
         <td width="100" bgcolor="#ffcccc" >생년월일</td>
         <td colspan="3">
         <input type="text" name="year" size="4" maxlength="4">년
         <select name="month">
         <% for(int i=1; i<13; i++){ 
        	 if(i<10){%>
                <option>0<%=i%></option>  <%}
             else{ %>
                <option><%=i%></option>
            <%}//else
         }//for %>   
         </select>월          
         <select name="day" >
         <c:forEach begin="1"  end="31" var="i">
           <c:if test="${i<10 }"><option>0${i}</option></c:if>
           <c:if test="${i>9 }"><option>${i}</option></c:if>
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
                  pageContext.setAttribute("jobs", jobs);
        		%>
        		<c:forEach items="${jobs }" var="jobName">  
        		  <option>${jobName }</option>
        		</c:forEach>      		
               </select>
         </td>
      </tr>
      <tr align="center">
         <td colspan="4">
          <%-- 
               <script>
                  function validateCheck(){
                      if(빈값이라면){
                         alert('입력하세요!!')
                      }else{
                         frm.submit();
                      }                      
                  }
               
               </script>
              <input type="button" value="등록" onclick="validateCheck()">
             ============================================================
               <script>
                  function validateCheck(){
                      if(빈값이라면){
                         alert('입력하세요!!')
                         return false;
                      }else{
                         return true;
                      }                      
                  }
               </script>
              <input type="submit" value="등록" 
                       onclick="return validateCheck()">
           --%>
           <input type="button" value="등록" onclick="validateCheck()">
           <input type="reset" value="취소">
         </td>
      </tr>
  </table>
  </form>
  </center>
</body>
</html>