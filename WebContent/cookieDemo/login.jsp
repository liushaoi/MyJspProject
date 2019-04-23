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
		String uname=null;
		boolean flag = false;
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie:cookies){
			if(cookie.getName().equals("uname")){
				uname = cookie.getValue();
				flag = true;
			}
		}
		if(!flag){
			out.print("cookie已失效");
		}else{
			out.print("cookie:"+uname);
		} 
	%>
	<form action="check.jsp" method="post">
		用户名：<input type="text" name="uname" value="<%=(uname==null?"":uname)%>"/><br/>
		密    码：<input type="password" name="upwd"/><br/>
		<input type="submit" value="登录"/><br/>
		
	</form>
</body>
</html>