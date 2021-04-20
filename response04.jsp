<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 	<p>이 페이지는 응답코드(response status code)입니다.</p> -->
<!-- 	<p>200 - 사용자의 요청을 정상 처리하였음</p> -->
	<p>이 페이지의 응답코드는 404입니다.</p>
	<p>이 내용들은 볼 수가 없습니다.</p>
	<%
// 		response.setStatus(404);
		response.sendError(500);
	%>
</body>
</html>