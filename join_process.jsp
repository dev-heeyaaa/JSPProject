<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8"); // 이름 한글 처리

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	Connection conn = null;
	
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
		
		Statement stmt = conn.createStatement();
		
		int row = stmt.executeUpdate("INSERT INTO member(id, pw, name) VALUES('"+ id +"','"+ pw +"','"+ name +"')");
		
		if(row==1){
			// 회원가입 성공
			response.setStatus(Response.SC_CREATED); // 201 응답코드
		}else{
			// 회원가입 실패
			response.setStatus(400);
		}
	}catch(ClassNotFoundException e){
		// 예외처리
		
		response.setStatus(500);
	}
	
	

%>