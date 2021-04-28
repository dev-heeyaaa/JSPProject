<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// response는 서버가 응답할 때 응답과 관련된 ~ 내장객체
	// 응답하는 데이터의 사용된 자연어가 es 스페인어라고 하는 것1
	// 브라우저에서 전달받은 텍스트가 스페인어라고 인식하는 것
	response.setHeader("Content-Language", "es");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Espa&ntilde;ol</title>
</head>
<body>
	<p>Idioma : Espa&ntilde;ol</ </p>
	<p>&iexcl;Hola Mundo!</p>
</body>
</html>