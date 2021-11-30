<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 상단메뉴 시작 -->	
<jsp:include page="/template/Top_.jsp"/>
<!-- 상단메뉴 끝 -->

<!-- 실제 내용 시작 -->
<div class="container">
	<!-- 점보트론(Jumbotron) -->
	<div class="jumbotron">
		<h1>
			메인 페이지 <small>자료실</small>
			<p>${MAIN}</p>
		</h1>
	</div>		
</div>
<!-- 실제 내용 끝-->
<!-- 푸터 시작 -->
<jsp:include page="/template/Footer_.jsp"/>
<!-- 푸터 끝 -->

    