<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="frm">
	<p>이름: <input type="text" name="name"> <br>
	<label>아이디: <input type="text" name="id"> </label><br>
	<label>비밀번호: <input type="password" name="pw"> </label><br>
	<input type="submit" value="전송" onclick="checkForm()">
	</p>
</form>

<script>
// 전송버튼을 클릭했을 때 사용자가 입력한 이름, 아이디, 비밀번호를 alert을 사용해서 출력하세요 
	function checkForm(){
		var userName = document.frm.name.value;
		var userId = document.frm.id.value;
		var userPwd = document.frm.pw.value;
		alert("사용자가 입력한 이름은 "+userName+" 입니다.\n"+"사용자가입력한 아이디는 "+userId+" 입니다.\n"+"사용자가 입력한 비밀번호는 "+userPwd+" 입니다.");
	}
</script>
</body>
</html>