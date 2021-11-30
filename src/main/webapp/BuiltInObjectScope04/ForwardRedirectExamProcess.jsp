<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ForwardRedirectExamProcess.jsp -->
<%@ include file="/common/Validate.jsp"  %>
<%
	//파라미터 받기]
	//Map<String,String[]> params=request.getParameterMap();
	String id = request.getParameter("id");
	if(!isValidate(out, id, "아이디를 입력하세요")) return;
	String pwd = request.getParameter("pwd");
	if(!isValidate(out, pwd, "비밀번호를 입력하세요")) return;
	
	//가정:아이디가 KIM ,비번이 1234이면 회원
	if("KIM".equals(id) && "1234".equals(pwd)){
		//리퀘스트 영역에 저장.
		request.setAttribute("id",id);
		request.setAttribute("pwd",pwd);
		//1.리다이렉트로 자동 페이지 이동
		//response.sendRedirect("ForwardRedirectExamMyPage.jsp");
		//2.포워드로 자동 페이지 이동
		request.getRequestDispatcher("ForwardRedirectExamMyPage.jsp").forward(request,response);
	}
	else{//아이디 및 비번 불일치
		//1.리다이렉트로 자동 페이지 이동
		//response.sendRedirect("ForwardRedirectExample.jsp");
		//2.포워드로 이동하기:입력한 값을 유지하기위해
		//에러 메시지 리퀘스트 영역에 저장
		request.setAttribute("errormsg", "아이디와 비번 불일치!!!");
		request.getRequestDispatcher("ForwardRedirectExample.jsp").forward(request,response);
	}
%>