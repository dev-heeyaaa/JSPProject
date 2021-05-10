<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	Connection conn = null;
	try{

		Class.forName("org.mariadb.jdbc.Driver");

		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
		
		// 쿼리를 전송할 준비
		Statement stmt = conn.createStatement();
		
		// 쿼리 전송 및 결과 수신
		// executeQuery -> 쿼리를 보내고 결과를 받아올 수 있음. / SELECT만 할 수 있음.
// 		ResultSet rs = stmt.executeQuery("SELECT * FROM student");
		
		// executeUpdate -> INSERT, UPDATE, DELETE를 할 수 있는 메서드
		// executeUpdate 메서드 -> 영향을 받은 행의 수를 반환
// 		int row = stmt.executeUpdate("INSERT INTO student(name, tel, addr, grade, height) VALUES('학생5', '010-7418-5296', '제주특별시', 6, 145)");
		
// 		int row = stmt.executeUpdate("UPDATE student SET name = '학생1' WHERE tel = '010-5555-6666'");
		
		int row = stmt.executeUpdate("DELETE FROM student");

		if(row >= 1){
			// 추가 or 수정 or 제거
			out.println("<h1>"+ row +" 개의 데이터가 제거되었습니다</h1>");
		}else{
			out.println("<h1>실패하였습니다</h1>");
		}
		// 쿼리를 전송했던 스트림 해제
		stmt.close(); // 사용 후 꼭 close
	} catch(Exception e){
		e.printStackTrace();
		

	} finally{

		if(conn != null){
			try{
				conn.close();
				

			}catch (SQLException e){
				e.printStackTrace();
				

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