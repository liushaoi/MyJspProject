<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//服务端
		Cookie cookie1 = new Cookie("name", "zs");
		Cookie cookie2 = new Cookie("pwd","abc");
		
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		
		//页面跳转到客户端（转发，重定向）
		response.sendRedirect("result.jsp");
	%>
</body>
</html>