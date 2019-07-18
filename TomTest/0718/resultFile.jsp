<%@page import="java.io.FileWriter"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과창</title>
</head>
<body>
	<h3>결과페이지</h3>
	<hr>

	이름:
	<%=request.getParameter("username")%><br> 파일:
	<%=request.getParameter("myfile")%><br>
	<hr color="orange">
	<%
		ServletInputStream sis = request.getInputStream();
		BufferedReader br = new BufferedReader(new InputStreamReader(sis, "UTF-8"));
		String delimiter = br.readLine(); // 구분자 역할을 하는 문자열
		String str;

		while ((str = br.readLine()) != null) {

			if (str.contains("name=\"myfile\"")) {
				int startIdx = str.lastIndexOf("=") + 2;
				int endIdx = str.length() - 1;

				String fileName = str.substring(startIdx, endIdx);
				//"애국가.txt"
				FileWriter fw = new FileWriter(application.getRealPath("/upload/") + fileName);

				br.readLine();
				br.readLine();

				while ((str = br.readLine()) != null) {
					if (str.contains(delimiter))
						break;
					out.print(str + "<br>");
					fw.write(str + "\r\n");
				}
				fw.close();

			}
		}
	%>


</body>
</html>