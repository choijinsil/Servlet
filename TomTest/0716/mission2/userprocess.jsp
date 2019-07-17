<%@page import="com.encore.t0717.dao.UserInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="com.encore.t0717.vo.UserInfo"/>
<%-- 기본생성자만 호출한다. 왜냐면 사람들이 몇가지 정보를 입력할지 모르기 때문에 --%>
<% System.out.println("userBean실행 >>>"+user.toString()); %>
<jsp:setProperty property="*" name="user"/> 

<% 
	System.out.println("setProperty실행 >>>"+user.toString()); 
	String jumin=request.getParameter("jumin1")+"-"
	+request.getParameter("jumin2");
	
	String birth=request.getParameter("year")+"-"+
				request.getParameter("month")+"-"+
				request.getParameter("day");
	
	user.setJumin(jumin);
	user.setBirth(birth);
	
	System.out.println("setJmin, Birth 실행한 후 user>>>"+user);
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입처리결과</title>
</head>
<body>
  <center>     
  <%
  	// 폼안의 데이터 얻기: String data = request.getParameter("name속성");
 	UserInfoDAO dao= new UserInfoDAO();
 	if(dao.create(user)){
 
  %>
     <table width="330" border="0" cellpadding="5">
         <tr bgcolor="#3399cc">
           <td><b>[${param.name }]님 가입을 축하합니다.</b></td>
         </tr>
         <tr>
           <td>
		              입력하신 내용대로 가입이 완료되었습니다.<br>
		              님께서 요청하신 아이디와 패스워드입니다.
              <p align="center">아이디: ${param.id}<br>
                                패스워드: ${param.pass }<br><br>
                 <a href="userconfirm.jsp">로그인 화면</a>                   
              </p>
           </td>
         </tr>
      </table>
     <%}else{ %>
     <table width="330" border="0" cellpadding="5">
        <tr bgcolor="#3399cc">
          <td><b>가입이 되지않았습니다.<br>
                    입력내용을 다시 한번 확인해 주세요.</b></td>
        </tr>
        <tr>
          <td>            
             <p align="center">입력이 정확한 경우에도 가입이 되지 않는 경우
              관리자에게 문의하여 주십시요.  <br>  
                <a href="javascript:history.back()">이전화면</a>               
             </p>
          </td>
        </tr>
     </table> 
     <%} %>
      
  </center>
</body>
</html>