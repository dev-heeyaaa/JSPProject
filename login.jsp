<!--  로그인 아이디, 비밀번호 입력 / -->
<!-- 로그인 페이지는 로그인하지 않은 사용자만 접근할 수 있다. -->
<!-- 로그인한 사용자가 로그인 페이지로 들어온다면 index.jsp로 이동한다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 로그인 여부 체크
	// 1. session을 통한 로그인 여부 체크
	// 2. cookie를 통한 로그인 여부 체크
	
	// 클라이언트가 보낸 쿠키의 목록
	Cookie[] cookies = request.getCookies();
	// 로그인 여부
	boolean isLogin = false;
	//이름이 ID인 쿠키가 있는 지 여부
	boolean isID = false;
	// 이름이 PW인 쿠키가 있는 지 여부
	boolean isPW = false;
	// 이름이 nickname인 쿠키가 있는 지 여부
	boolean isNickName = false;
	
	for(int i=0; i<cookies.length; i++){
		// 쿠키의 처음부터 끝까지 반복문을 돌면서
		// 로그인 여부 체크
		
		// n번째 쿠키
		Cookie cookie = cookies[i];
		
		// n번째 쿠키 이름
		String name = cookie.getName();
		
		// n번째 쿠키의 값
		String value = cookie.getValue();
		
		// isID == false -> n번째까지 이름이 ID인 쿠키를 찾지 못했다 // 찾지 못했을 때만 비교를 하도록 /프로그램의 효율성을 위해서 이렇게 씀
		if(isID == false && name.equals("ID")){
			isID = true;
		}
		if(isPW == false && name.equals("PW")){
			isPW = true;
		}
		if(isNickName == false && name.equals("nickname")){
			isNickName = true;
		}
	}// end for
	
	// 쿠키에 이름이 아이디, 비밀번호, 닉네임인 쿠키가 모두 들어있었다면은
	isLogin = isID && isPW && isNickName;
	
	if(isLogin){
		// 로그인이 되어있다면 index.jsp로 이동해라
		response.sendRedirect("/JSPBook/chapter14/index.jsp");
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

	<div>
		<p>아이디: <input type="text" name="id" > </p>
		<p>비밀번호: <input type="password" name="pw" ></p>
		<button type="button" onclick="login()" >로그인</button>
		
	</div>

	<script>
	function login() {
		// ajax를 사용해서 login_process.jsp를 호출하고
		// login_process.jsp가 반환하는 결과값을 이용해서
		// 로그인 성공 시 index.jsp로 이동
		// 로그인 실패 시 "아이디 또는 비밀번호가 올바르지 않습니다" 출력
		
		// 사용자가 input 태그에 입력한 id
		var id = $("[name=id]").val();
		// 사용자가 input 태그에 입력한 pw
		var pw = $("[name=pw]").val();
		
		$.ajax({
			url: "/JSPBook/cookie/login",
			data: "id="+id+"&pw="+pw,
			success: function() {
				// 요청이 성공했을 때의 동작(200번대, 300번대 응답코드가 들어왔을 때)
				location.href = "/JSPBook/chapter14/index.jsp";
			},
			error: function(){
				// 요청이 실패했을 때의 동작(400, 500번대 응답코드가 들어왔을 때)
				console.log();
				alert("아이디 또는 비밀번호가 올바르지 않습니다.");
			}
		})
		
		return false;
		
		// ajax -> jQuery 라이브러리 안에 들어있음
		// jQuery -> 자바스크립트를 조금 더 편하게 사용해 주는 툴
		
		// 브라우저는 HTML, CSS, JavaScript를 갖고있고
		// jQuery는 갖고있지 않음
	
	}
	</script>
</body>
</html>