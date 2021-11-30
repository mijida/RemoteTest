<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FileList.jsp</title>
</head>
<body>
	<fieldset>
		<legend>업로드든 파일 목록</legend>
		<ul>
			<%
			String saveDirectory=application.getRealPath("/upload");
			File file = new File(saveDirectory);
			File[] files=file.listFiles();
			for(File f:files){
			%>
			<li>파일명:<a href="Download.jsp?filename=<%=f.getName() %>"><%=f.getName() %></a>,파일크기:<%=(int)Math.ceil(f.length()/1024.0) %>KB</li>
			<%} %>
		</ul>
	</fieldset>
</body>
</html>