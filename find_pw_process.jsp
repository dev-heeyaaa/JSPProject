<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	
	Connection conn = null;
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
		
		Statement stmt = conn.createStatement();
		
		ResultSet rs =  stmt.executeQuery("SELECT pw FROM member WHERE id= '" + id + "' AND name='"+name+"'");
		
		boolean isExsit = rs.next();
		
		if(isExsit){
			String pw = rs.getString("pw");
			
			out.print(pw);
			
			response.setStatus(200);
		}else{
			response.setStatus(404);
		}		
	}catch(Exception e){
		response.setStatus(500);
	}finally{
		if(conn != null){
			try{
				conn.close();
			}catch(SQLException e){
				
			}
		}
	}
	

%>
