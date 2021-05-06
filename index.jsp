<!-- 로그인한 사용자의 닉네임을 보여줌 -->
<!-- 로그인한 사용자만 접근할 수 있다. -->
<!-- 로그인하지 않은 사용자가 이 페이지로 들어온다면 login.jsp로 이동한다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<strong>로그인을 한 사용자만 볼 수 있는 페이지입니다.</strong><br>
	<strong>로그인을 하지 않은 사용자는 로그인 페이지로 이동합니다.</strong>
	
	<hr>
	
	<button type="button" onclick="logout()">로그아웃</button>
	
	<script>
	function logout() {
	// 현재 로그인된 정보를 날리는 거니 파라미터 자체가 필요없다.	
	$.ajax({
		url: "/JSPBook/cookie/logout",
		success: function(){
			console.log();
			alert("로그아웃이 되었습니다\n로그인 페이지로 이동합니다.");
			location.href="/JSPBook/chapter14/login.jsp";
		}
	});
	
	return false;
	
}
	
	</script>

	
</body>
</html>