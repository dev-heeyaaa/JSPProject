<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String name = (String)session.getAttribute("name"); // 세션에 있는 name 가져오기
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hi!</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<h1>로그인 된 사용자가 보는 페이지</h1>
	
	<p>로그인한 사용자의 닉네임은(는) <h1><%=name %></h1>입니다.</p>
	
	<div>
		<a href="/JSPBook/chapter16/update.jsp">회원정보 수정</a> &nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#" onclick="deleteMember()">회원 탈퇴</a>
	</div>
	
	<script>
		function deleteMember() {
			// delete는 키워드
			// 자바스크립트에서는 키워드를 쓴다고 문제가 되지 않는다.
			// 기존의 delete 기능이 사라지고 내가 선언한 delete 기능을 사용하게 한다.
			
			$.ajax({
				url: "/JSPBook/member/delete",
				success: function() {
					alert("회원 탈퇴 처리가 되었습니다.\n로그인 페이지로 이동합니다.");
					location.href = "/JSPBook/chapter16/index.jsp";
				},
				error: function() {
					alert("회원 탈퇴 처리가 되지않았습니다..\n잠시 후 다시 시도해 주세요.");
				}
			});
		}
	</script>
</body>
</html>