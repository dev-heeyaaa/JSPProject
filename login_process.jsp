<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 로그인 -> 사용자가 입력한 아이디, 비밀번호가 회원 정보에 있는지 확인
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Connection conn = null;
	
	Class.forName("org.mariadb.jdbc.Driver");
	
	conn = DriverManager.getConnection("jdbc:mariadb://localhost:8081/JSPBookDB?user=root&password=koreait");
	
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("SELECT * FROM member WHERE id = '"+ id +"'AND pw = '"+ pw +"'");
	
	boolean isExist = rs.next();
	if(isExist){
		// 로그인 시 입력한 아이디, 비밀번호로 회원 정보를 찾았다면은
		// 로그인 처리
		//	- 사용자의 닉네임 세션에 저장	
		String name = rs.getString("name");
		session.setAttribute("name", name);
		
		//	- 응답코드 200
		response.setStatus(200);
	}else{
		// 로그인 시 입력한 아이디, 비밀번호로 회원 정보를 찾지 못했다면은
		// 로그인 실패 처리
		// 응답코드 401 (사용자의 실수는 400번대 / 서버의 실수는 500번대)
		response.setStatus(401);
	}
%>