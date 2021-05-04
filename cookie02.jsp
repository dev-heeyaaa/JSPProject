<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("<h1>설정된 쿠키의 개수 = "+cookies.length+"</h1>");
		out.println("<hr>");
		
		for(int i = 0; i< cookies.length; i++){
			out.println("쿠키의 속성 이름 = "+cookies[i].getName() + "<br>");
			out.println("쿠키의 속성값 = "+cookies[i].getValue() + "<br>");
			out.println("<hr>");
		}
	%>
</body>
</html>