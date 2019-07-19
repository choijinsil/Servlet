<%@page import="com.encore.t0717.vo.UserInfo"%>
<%@page import="com.encore.t0717.dao.UserInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자수정</title> 
  <script type="text/javascript" src="/TomTest/js/check.js"></script>
</head>
<%
    UserInfoDAO dao = new UserInfoDAO();
    UserInfo user = dao.select(request.getParameter("id"));
    System.out.println("user>>>"+ user);
    String []jumin=user.getJumin().split("-");//"960302-2012345"
                                              //{"960302","2012345"}
    String []birth = user.getBirth().split("-");//"1996-03-02"
                                               //{"1996","03","02"}
    
    
    pageContext.setAttribute("user", user);
    
    
    
    
%>
<body>
  <center>
  <form name="frm" action="modifyprocess.jsp" method="post">
  <table width="600" border="0" cellpadding="5" >
      <tr bgcolor="#3399cc">
         <td><font size="4" color="white">사용자정보수정</font>
      </tr>      
  </table>
  <table border="1" cellpadding="5" width="600">
      <tr>
         <td width="100" bgcolor="#ffcccc">사용자ID</td>
         <td colspan="3"> 
         <%-- <input type="text" name="id" value="<%= user.getId()%>"></td> --%>
         <input type="text" name="userid" value="${user.id }" disabled>
         <input type="hidden" name="id" value="${user.id }">
         
         </td>
         
      </tr>
      <tr>
         <td width="100" bgcolor="#ffcccc">비밀번호</td>
         <td><input type="password" name="pass" value="${user.pass }"> </td>
         <td width="100" bgcolor="#ffcccc">비번확인</td>
         <td><input type="password" name="pass2" value="${user.pass }" > </td>
      </tr>
      <tr>
         <td width="100" bgcolor="#ffcccc">사용자이름</td>
         <td colspan="3">
         <input type="text" name="name" value="${user.name }" readonly>        
         </td>
         
      </tr>
      <tr>        
         <td width="100" bgcolor="#ffcccc">주민번호</td>
         <td colspan="3">            
              <input type="text" name="jumin1" size="6" maxlength="6"
                      style="height:23px" value="<%= jumin[0]%>" readonly>
              -
              <input type="password" name="jumin2" size="7" maxlength="7"
                      style="height:23px" value="<%= jumin[1]%>" readonly></td>
      </tr>
      <tr>         
         <td width="100" bgcolor="#ffcccc" >생년월일</td>
         <td colspan="3">
         <input type="text" name="year" size="4" maxlength="4"  value="<%= birth[0]%>"
                disabled>년
         <select name="month" disabled>
           <option><%=birth[1] %></option>  
         </select >월          
         <select name="day" disabled> 
           <option><%=birth[2] %></option>   
         </select>일          
          </td>
      </tr>
      <tr>
         <td width="100" bgcolor="#ffcccc">우편번호</td>
         <td colspan="3">
            <input type="text" name="zip" size="5" maxlength="5" value="${user.zip }">
	     </td>
      </tr>
      <tr>
         <td width="100" bgcolor="#ffcccc">주소</td>
         <td colspan="3"><input type="text" name="addr" size="50" value="${user.addr }"></td>
      </tr>
      <tr>
         <td width="100" bgcolor="#ffcccc">E-Mail</td>
         <td colspan="3"><input type="text" name="email" size="30" value="${user.email }">
          </td>
      </tr>
    
      <tr>
         <td width="100" bgcolor="#ffcccc">직업</td>
         <td colspan="3">
               <select name="job">
                <% 
                String jobs[]={"==선택==","학생","공무원","언론/출판","군인/경찰","일반사무직",
        		   "영업직","기술/전문직","보건/의료","자영업","주부","기타" };
                for(int i=0; i<jobs.length; i++){
                	if(jobs[i].equals(user.getJob()))
                      out.print("<option selected>"+ jobs[i] +"</option>");
                	else
                      out.print("<option>"+ jobs[i] +"</option>");
                       
                } %>
               </select>
         </td>
      </tr>
      <tr align="center">
         <td colspan="4">
       <!--   <input type="submit" value="수정"> -->
           <input type="button" value="수정" onclick="validateCheck()">
           <input type="reset" value="취소">
         </td>
      </tr>
  </table>
  </form>
  </center>
</body>
</html>