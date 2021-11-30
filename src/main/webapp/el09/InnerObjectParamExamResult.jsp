<%@page import="java.util.Map"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InnerObjectParamExamResult.jsp</title>
</head>
<body>
<fieldset>
		<legend>자바코드(스크립팅 요소)로 파라미터 받기</legend>
		<h3>getParameter()/getParameterValues()로 받기</h3>
		<ul>
			<li>이름:<%=request.getParameter("name") %></li>
			<li>성별:<%=request.getParameter("gender") %> </li>			
			<li>관심사항:			
			<% 
			
			
			String items[]=request.getParameterValues("inter");
			//Arrays클래스 사용
			out.println(Arrays.toString(items)+"<br/>");	
			//for문 사용
			for(String item:items){
				out.println(item+" ");
			}
			
			%>			
			</li>
			<li>학력:<%=request.getParameter("grade") %></li>
		</ul>
		<h3>getParameterMap()으로 받기</h3>
		<%
			Map<String,String[]> params= request.getParameterMap();
			
		%>
		<ul>
			<li>이름:<%=params.get("name")[0] %></li>
			<li>성별:<%=params.get("gender")[0] %></li>
			<li>관심사항:	<%
				items = params.get("inter");
				for(int i=0;i < items.length;i++){
					out.println(items[i]+"&nbsp;");				
				}
			%>			
			
			</li>
			<li>학력:<%=params.get("grade")[0] %></li>
		</ul>
	</fieldset>
	
	<fieldset>
		<legend>EL로 파라미터 받기</legend>
		<!--
			하나받을때:param.파라미터명 혹은 param["파라미터명"]
			여러개 받을때:paramValues.파라미터명 혹은 paramValues["파라미터명"]
        -->
		<ul>
			<li>이름:${param.name }</li>
			<li>성별:${param.gender } </li>
			<li>관심사항:
				<c:forEach items="${paramValues.inter}" var="item">
					${item}&nbsp;				
				</c:forEach>
			</li>
			<li>학력:${param.grade }</li>
		</ul>
	</fieldset>
</body>
</html>