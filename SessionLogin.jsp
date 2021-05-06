<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 
	로그인 여부를 판단해서
	로그인이 되어있을 경우
	
	SessionIndex.jsp로 이동하도록 하세요
 -->
<%

	boolean isLogin = (boolean)session.getAttribute("isLogin");
	
	if(isLogin){
		response.sendRedirect("/JSPBook/chapter14/SessionIndex.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 로그인</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<!-- 
	아이디, 비밀번호를 입력할 수 있도록 input 태그를 만들고 로그인 버튼을 추가
	
	로그인 버튼을 누르면 ajax를 이용해서 /session/login 경로에 있는 로그인 기능 실행
	이때 로그인 기능을 실행할 때 사용자가 입력한 아이디와 비밀번호를 전달해야함
	
	로그인 기능이 요청 성공의 의미를 담고있는 응답코드를 반환했을 경우 SessionIndex.jsp 로 이동
	로그인 기능이 요청 실패의 의미를 담고있는 응답코드를 반환했을 경우 alert함수를 사용해서
	"아이디 또는 비밀번호를 확인해 주세요"를 출력하세요. 
 -->
 
 <div>
 	<p>아이디 : <input type="text" name="id"> </p>
 	<p>비밀번호 : <input type="password" name="pw"></p>
 	<button type="button" onclick="login()">로그인</button>
 </div>
 
 <script>
 	function login() {
 		var id = $("[name=id]").val();
 		var pw = $("[name=pw]").val();
		$.ajax({
			url:"/JSPBook/session/login";
			data:"id="+id+"&pw="+pw;
			success: function(){
				location.href="/JSPBook/chapter14/SessionIndex.jsp";		
			},
			error:function(){
				alert("아이디 또는 비밀번호를 확인해 주세요");
			}
		});
	}
 </script>
</body>
</html>