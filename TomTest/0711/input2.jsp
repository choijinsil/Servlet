<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력페이지</title>
</head>
<body>
	<h3>입력페이지</h3>
	<hr>
	
	 <form name="frm" method="post" action="print2.jsp">
         아이디 : <input type="text" name="id"><br>
         비밀번호: <input type="password" name="pwd"><br>
         좋아하는 과일: 
                 <input type="checkbox" name='fruit' value="풋사과" >사과
                 <input type="checkbox" name="fruit" value="딸기">딸기
                 <input type="checkbox" name="fruit" value="바나나">바나나
                 <br>
         당신의 강의실: <input type="radio" name="room" checked
                        value="1강의실"> 1강의실
                 <input type="radio" name="room" 
                        value="2강의실"> 2강의실
                 <input type="radio" name="room"
                        value="3강의실"> 3강의실      
                 <input type="radio" name="room"
                        value="4강의실"> 4강의실
                 <br>  
          
          나보여? <input type="hidden" value="지킬박사와 하이드" name="hide">     
            <br>                   
         파일업로드: <input type="file" name="myfile">
      <!-- 로컬PC(사용자PC)에 있는 파일을 서버(PC)에 올릴때(전송할때) 사용 -->
            <br> 
         운동: <select name="sports">
             <option value="baseball">야구</option>  
             <option>축구</option>  
             <option selected>농구</option>  
             <option>배구</option>  
          </select>
          <br> 
         비고: <textarea rows="5" cols="10" name="note"></textarea>
     <br>
     <button type="submit" >등록</button> 
   </form>  

</body>
</html>