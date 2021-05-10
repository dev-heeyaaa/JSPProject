<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	/*
	DB에 select, insert, update, delete 를ㄹ 하기 위한 준비 / DB 연결하기
		1. 쿼리를 수행할 Connection 객체 생성
		2. 연결을 수행할 Driver 로딩 (14번째 줄)
		3. DBMS와 연결(18번째 줄)
		4. 쿼리 전송
		5. DB 연결 해제(32~38번째 줄)
	*/
	Connection conn = null;
	try{
		// JDBC를 불러올 수 있는 준비
		Class.forName("org.mariadb.jdbc.Driver");
		// 첫번째 방법
		// https://www.naver.com  프로토콜 + 도메인 + 주소
		// http:// 대신에 jdbc:mariadb:// 프로토콜 사용
		// 프로토콜://도메인:포트번호:/주소 경로 (오타 안 나게 주의할 것)
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
		/*
		두번째 방법
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB","root","koreait");
		
		세번째 방법
		Properties props = new Properties();
		props.put("user", "root");
		props.put("password", "koreait");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB", props);	
		*/
		out.println("<h1>DB 접속에</h1>");
		out.println("<h1>성공했습니다</h1>");
		out.println("<h1>짝짝짝~~!~!</h1>");
	} catch(Exception e){
		e.printStackTrace();
		
		out.println("<h1>DB 접속에</h1>");
		out.println("<h1>실패했습니다</h1>");
		out.println("<h1>이클립스 콘솔을 확인하세요!</h1>");
	} finally{
		// 예외가 발생하든 말든 무조건 연결이 끊기도록 해야 한다.
		if(conn != null){
			try{
				conn.close();
				
				out.println("<h2>연결을 성공적으로 끊었습니다.</h2>");
			}catch (SQLException e){
				e.printStackTrace();
				
				out.println("<h2>연결을 성공적으로 끊지 못했습니다.</h2>");
				out.println("<h2>이클립스 콘솔을 확인하세요!</h2>");
			}
				
		}
	}
	

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>