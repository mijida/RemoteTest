<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ForwardActionTagIndex.jsp -->
<%
	//포워드前 영역에 속성 저장
	pageContext.setAttribute("pageVar", "페이지 영역입니다");
	request.setAttribute("requestVar", "리퀘스트 영역입니다");	
	//request.getRequestDispatcher("/actiontag07/ForwardActionTagResult.jsp").forward(request, response);

%>
<!-- 액션 태그로 포워딩 -->
<jsp:forward page="/actiontag07/ForwardActionTagResult.jsp" />
