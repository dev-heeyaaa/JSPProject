<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<div>
	<h2>비밀번호 찾기</h2>
	<p>회원가입 시 입력했던 아이디와 이름을 입력하세요.</p>
	<label>ID: <input type="text" name="id"> </label><br>
	<label>이름: <input type="text" name="name"> </label>
	<hr>
	<input type="submit" value="비밀번호 찾기" onclick="return find()">
	&nbsp;
	<a href="/JSPBook/chapter16/index.jsp">로그인 페이지로...</a>
	</div>
	
	<script>
		// 사용자가 입력한 아이디와 이름으로 비밀번호를 찾아주는 기능
		function find() {
			var name = $("[name=name]").val();
			var id = $("[name=id]").val();
			$.ajax({
				url: "/JSPBook/member/find_pw",
				data: "id="+id+"&name="+name,
				success: function(data) {
					data = data.trim();
					alert("비밀번호는 "+data+" 입니다.");
				},
				error: function() {
					alert("비밀번호를 찾지 못했습니다.");
				}
			});
		}
	</script>
</body>
</html>