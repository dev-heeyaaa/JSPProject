<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="exception_error.jsp" %>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id == null || pw == null){
		throw new ServletException();
	} else if(id.length() == 0 || pw.length() ==0){
		throw new ServletException();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>아이디: <%=id %></p>
	<p>비밀번호: <%=pw %></p>
	
	<a href="/JSPBook/chapter11/exception.jsp">돌아가기...</a>
</body>
</html>