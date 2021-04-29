<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> %>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>
<h1>오류 발생!</h1>
	<table border="1">
		<tr>
			<td>Error: </td>
			<td><%=exception %></td>
		</tr>
		<tr>
			<td>URI: </td>
			<td><%=request.getRequestURI() %></td> <!-- request(요청에 대한 정보가) 내장객체에 있는 getRequestURI()-->
		</tr>
		<tr>
			<td>Status Code: </td>
			<td><%=response.getStatus() %></td><!-- response는 응답에 대한 정보가 -->
		</tr>
	</table>
	
</body>
</html>