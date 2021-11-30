<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    %>
<!--  ResponseForRedirectProcess.jsp -->
<%
	//POST방식으로만 받자]
	if(!"POST".equals(request.getMethod())){
%>
		<script>
			alert("잘못된 접근입니다");
			history.back();
		</script>	
<%	
		return;
	}///if
	/*
	사용자가 입력한 아이디와 비번을 받아서 회원인지 판단한후
	회원인 경우 마이페이지로 이동시키고
	회원이 아닌 경우 다시 로그인 페이지로 이동시키자]
	가정]아이디가 KIM이고 비번이 1234가 회원이라고 가정
	*/
	//1]사용자 입력값 받기
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	//2]회원여부 판단(데이타 베이스의 테이블에서 조회)
	//3]회원인 경우 로그인처리(session객체로)후
	//  마이페이지로 이동,
	//  회원이 아니면 다시 로그인 페이지로 이동.
	if("KIM".equals(id) && "1234".equals(pwd)){//회원인 경우]
		//방법1]sendRedirect("자동으로 이동할  페이지 주소");	
		//response.sendRedirect(request.getContextPath()+"/BultinObject03/ResponseForMyPage.jsp?username="+id+"&password="+pwd);
		//방법2]자스로 메시지 띄운 후 이동
		//out.println("<script>");
		//out.println("alert('"+id+"님 반갑습니다')");	
		//out.println("location.replace('ResponseForMyPage.jsp?username="+id+"&password="+pwd+"');");
		//out.println("</script>");
		//response.sendRedirect(request.getContextPath()+"/BultinObject03/ResponseForMyPage.jsp?username="+id+"&password="+pwd);
		%>
		<form action="ResponseForMyPage.jsp" method="post">
			<input type="hidden" name="username" value="<%=id%>"/>
			<input type="hidden" name="password" value="<%=pwd%>"/>
		</form>
		<script>
			alert("<%=id%>님 반갑습니다");
			document.forms[0].submit();
		</script>
		<%
	}///if
	else{//비 회원인 경우
		//response.sendRedirect("ResponseForRedirectIndex.jsp");
		out.println("<script>");
		out.println("alert('아이디와 비번이 틀려요')");
		//기존값이 그대로 유지:type="password"는 예외
		//out.println("history.back();");
		//기존의 입력하거나 선택한 내용이 다 사라진다
		out.println("location.replace('ResponseForRedirectIndex.jsp');");
		out.println("</script>");
	}


%>