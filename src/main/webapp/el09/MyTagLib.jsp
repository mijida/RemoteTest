<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="my" uri="/WEB-INF/tld/mytag.tld" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyTagLib.jsp</title>
</head>
<body>
	<fieldset>
		
		<legend>내가 만든 태그 라이브러리 사용하기</legend>
		\${my:isNumber("100사") } : ${my:isNumber("100사") }<br/>
		\${my:isNumber("1004") } : ${my:isNumber("1004") }<br/>
		\${my:takeGender("123456-1234567") }:${my:takeGender("123456-1234567") }<br/>
		\${my:takeGender("123456-8234567") }:${my:takeGender("123456-8234567") }
	</fieldset>
</body>
</html>