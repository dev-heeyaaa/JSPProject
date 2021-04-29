<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String su1 = request.getParameter("su1");
	String su2 = request.getParameter("su2");
	
	int su1_i = Integer.parseInt(su1);
	int su2_i = Integer.parseInt(su2);
	
	try{
		out.println( su1_i / su2_i);
	}catch(ArithmeticException e){
		out.println("오류 발생: "+e.getMessage());
	}
	
%>
</body>
</html>