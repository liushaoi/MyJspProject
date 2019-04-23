<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%="虚拟路径：" +	application.getContextPath()%>
	<%="绝对路径：" + application.getRealPath("/MyJspProject") %>
</body>
</html>