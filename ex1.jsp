<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex1</title>
</head>
<body>
	<strong>ex1.jsp입니다.</strong>
	
	
<script>
	// 빈 배열
	var arr = [];
	arr[0] = 3;
	arr[1] = 2;
	arr[2] = 1;
	console.log(arr[0]);
	console.log(arr[1]);
	console.log(arr[2]);
</script>
<script>
function gugudan(input){
	for(var i=1; i <= 9 i++){
		console.log(input +"*"+i+"="+(input*i));
	}
	
}

// prompt를 사용해서 사용자로부터 2~9 사이의 숫자를 입력받아
// 해당하는 숫자의 구구단을 console/log로 출력하세요

var input = prompt("숫자 입력: ");
gugudan(input);

</script>
<script>
	
	// 홀수를 입력받았을 경우 alret을 이용해서 홀수입니다를 출력하세요.
// 	var a = 10;
// 	console.log("a = "+a);
	
// 	a = 3.14;
// 	console.log("a = "+a);
	
// 	a = "문자열";
// 	console.log("a = "+a);
	
	
// 	var input = prompt("숫자를 입력하세요: ");
// 	if(input%2==0){
// 		alert("짝수입니다~")
// 	}else{
// 		alert("홀수입니다~")
// 	}
	
</script>	
</body>
</html>