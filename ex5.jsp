<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int su1 = Integer.parseInt(request.getParameter("su1"));
	String su2 = request.getParameter("su2");

	
	if(su1 == 0 || su2 == null){
		%>
		<!--  su1 또는 su2가 요청 피라미터로 전달되지 않았을 경우 -->
		<form action="#" method="get">
			<p>수1: <input type="text" name="su1"> </p>
			<p>수2: <input type="text" name="su2"> </p>
			<input type="submit" value="계산">
		</form>	
<%
	} else{
%>
	<%
// 		int su1_i = Integer.parseInt(su1);
		int su2_i = Integer.parseInt(su2); 
	%>
		<!-- su1과 su2가 요청 피라미터로 전달되었을 경우 -->
		<p><%=su1 %> / <%=su2 %> = <%=su1 / su2_i %></p>
		<a href="./ex4.jsp">돌아가기...</a>
<% 
} 
%>
</body>
</html>