<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	// 로그아웃 기능을 만들려면?
	// 로그인 성공 시 -> 아이디, 비밀번호, 닉네임을 저장하는 쿠키를 생성
	// 로그인 여부를 체크하는 코드 -> 쿠키에 아이디, 비밀번호, 닉네임이 들어있는지 체크
	// 로그아웃 -> 쿠키에서 아이디, 비밀번호, 닉네임을 제거
	// setMaxAge??를 사용해야 하지 않을까///
			
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie : cookies){
		String name = cookie.getName();
		
		if(name.equals("ID") || name.equals("PW") || name.equals("nickname")){
			// 첫번째부터 마지막 쿠키의 타이머 (유효시간)을 0초로 설정
			cookie.setMaxAge(0);
			// 타이머가 다 된 쿠키를 클라이언트에게 보냄
			// (클라이언트는 타이머가 다 된 쿠키를 받으면 삭제 처리를 함)
			response.addCookie(cookie);		
		} // end if
	} // end for
			
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
	<strong>로그아웃이 되었습니다.</strong><br>
	<a href="/JSPBook/chapter14/login.jsp">로그인 페이지로...</a>
</body>
</html>