<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호확인</title>
<script type="text/javascript">
	function checkpass(){
		//현재 문서안에 작성된 비번 얻기
		var pass=document.passForm.pass.value;
		//DB에 저장된 비번 얻기
		var dpass=opener.document.editForm.dpass.value;
			
		if(pass!==dpass){
			alert('권한이 없습니다.');
			window.close();
		}else{
			//수정, 삭제작업실행
			opener.execUpDel();
			window.close();
		}
	}
	
	
	
</script>
</head>
<body>
	<form name="passForm">
		<table>
			<tr>
				<td bgcolor="skyblue">비밀번호</td>
				<td><input type="password" name="pass"></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="확인" onclick="checkpass()">
				</td>
				
			</tr>
			
		</table>
	</form>

</body>
</html>