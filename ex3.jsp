<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error01.jsp" %>
<%
		String su1 = request.getParameter("su1");
		String su2 = request.getParameter("su2");
		
		int su1_i = Integer.parseInt(su1);
		int su2_i = Integer.parseInt(su2);
	
	int sum = su1_i / su2_i;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	결과 = <%=sum %>
</body>
</html>