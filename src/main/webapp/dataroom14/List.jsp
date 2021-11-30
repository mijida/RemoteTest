<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 상단메뉴 시작 -->
<jsp:include page="/template/Top_.jsp" />
<!-- 상단메뉴 끝 -->

<!-- 실제 내용 시작 -->
<div class="container">
	<!-- 점보트론(Jumbotron) -->
	<div class="jumbotron">
		<h1>
			자료실 <small>목록 페이지</small>
		</h1>
	</div>
	<!-- 작성하기 버튼 -->
	<div class="text-right">
		
		<a href="<c:url value="/dataroom/Write.kosmo"/>" class="btn btn-success">등록</a>
	</div>
	<!-- 여백용 -->
	<div>
		<span>&nbsp;</span>
	</div>
	<div class="table-responsive">
		<table class="table table-bordered table-hover table-condensed">
			<!-- 테이블 컬럼폭은 col-*-*계열로 설정 -->
			<tr>
				<th class="text-center col-md-1">번호</th>
				<th class="text-left">제목</th>
				<th class="text-center col-md-1">작성자</th>
				<th class="text-center col-md-2">첨부파일</th>
				<th class="text-center col-md-1">다운로드</th>
				<th class="text-center col-md-2">등록일</th>
			</tr>

			<c:if test="${empty records }" var="isEmpty">
				<tr class="text-center">
					<td colspan="6">등록된 게시물이 없습니다</td>
				</tr>
			</c:if>
			<c:if test="${not isEmpty}">
				<c:forEach var="record" items="${records }" varStatus="loop">
					<tr>
						<td class="text-center col-md-1">${totalRecordCount - (((nowPage - 1) * pageSize) + loop.index)}</td>
						
						<td class="text-left"><a href="<c:url value="/dataroom/View.kosmo?no=${record.no}&nowPage="/><c:out value="${param.nowPage }" default="1"/>">${record.title}</a></td>
						<td class="text-center col-md-1">${record.name}</td>											
						<td class="text-center col-md-2  attachfile"><a class="downfile${loop.count}"  href="<c:url value="/dataroom/Download.kosmo?filename=${record.attachfile}&no=${record.no}"/>">${record.attachfile}</a></td>
						<td class="text-center col-md-1" id="downcount${loop.count}">${record.downcount}</td>
						<td class="text-center col-md-2">${record.postdate}</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
	<!-- 페이징 -->
	<div class="text-center">${pagingString}</div>


</div>
<!-- 실제 내용 끝-->
<!-- 푸터 시작 -->
<jsp:include page="/template/Footer_.jsp" />
<!-- 푸터 끝 -->
<script>
	$('.attachfile a').click(function(){
		var className=$(this).attr('class');
		console.log(className.substring(8,className.length));
		var numbering = className.substring(8,className.length);
		var downcount=$('#downcount'+numbering).html();
		$('#downcount'+numbering).html(parseInt(downcount)+1);
		
	});

</script>

