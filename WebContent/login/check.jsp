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
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		if(name.equals("zs")&&pwd.equals("abc")){
			//response.sendRedirect("succeed.jsp");
			//页面跳转：请求转发,可以获取到数据，并且地址栏没有改变（仍然保留转发时的页面）
			request.getRequestDispatcher("succeed.jsp").forward(request, response);
		}else{
			out.print("用户名或者密码错误!");
		}
	%>
</body>
</html>