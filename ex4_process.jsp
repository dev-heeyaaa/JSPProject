<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pw2 = request.getParameter("pw2");

// 	if(pw == null || pw2 == null){
		
// 	}
	
	if(!pw.equals(pw2)){
		response.sendRedirect("password.jsp");
	}
	
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	
	String phone = phone1 + phone2 + phone3;
	
	String gender = request.getParameter("gender");
	
	String[] hobby = request.getParameterValues("hobby"); // 취미(독서, 운동, 영화)
	String hobbys="";
	for(String h : hobby){
		hobbys += (h+", ");
	}
	String comment = request.getParameter("comment");
	comment = comment.replace("\n", "<br>");

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><strong>id = <%=id %></strong></p>
	<p><strong>password = <%=pw %></strong></p>
	<p><strong>phone number = <%=phone %></strong></p>
	<p><strong>hobby: <%=hobbys %></strong> </p>
	<p><strong>가입인사: <%=comment %></strong></p>
</body>
</html>