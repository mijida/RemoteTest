<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	/*
	포워드된 페이지나 인클루드된 페이지로
	파라미터를 전달시
	한글이 포함된 경우 ,한글 처리는
	반드시 포워드 시키는 최초 페이지나
	인클루드 시키는 페이지에서 
	설정한다. 
	*/ 
	//한글처리]
	//request.setCharacterEncoding("UTF-8");	
	//리퀘스트 영역에 객체 저장]
	request.setAttribute("member",new MemberDTO("KIM","1234","김길동",null,"20"));
	
	/*
	include의 page속성에는 반드시 페이지명만 그리고 표현식 가능
	
	include액션태그는 반드시 param액션 태그를 통해서만 파라미터 전달 가능
	value속성은 표현식 가능
	단,name속성은 표현식 사용불가.즉 문자열만 와야한다
	  
	*/
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ParamActionTagInclude.jsp</title>
</head>
<body>
	<fieldset>
		<legend>삽입하는 페이지에 파라미터 전달</legend>
		<jsp:include page="IncludedPage.jsp">
			<jsp:param value="PARK" name="id"/>
			<jsp:param value="박길동" name="name"/>
			<jsp:param value="쿼리스트링" name="query"/>
		</jsp:include>
	</fieldset>
</body>
</html>