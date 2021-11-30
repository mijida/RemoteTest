<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script>
		//모든 NodeList의 요소의 class속성 제거하는 함수
		function allClear(nodes) {
			nodes.forEach(function(node) {
				if (node.getAttribute('class') === 'active')//dropup 및 divider적용키 위함(다른 class는 지우면 안됨)
					node.removeAttribute('class');
			});
		}
	
		var gnb = document.querySelectorAll("#collapse-menu > ul > li");
		//각 NodeList의 요소에 click이벤트 설정
		gnb.forEach(function(nb) {
			nb.onclick = function() { //특정 li(요소) 클릭시   			
				allClear(gnb);//모든 class속성 제거
				if (!this.getAttribute('class'))//클릭한 해당 li에만 class속성 추가
					this.setAttribute('class', 'active');
	
			};
		});
	</script>
</body>
</html>