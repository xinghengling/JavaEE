<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'regist.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<form action="${pageContext.request.contextPath}/user_regist" method="post">
		电话号码<input type="phone" name="username" placeholder="输入手机号码"><br />
		密码<input type="text" name="password"><br /> 昵称<input
			type="text" name="nick"><br /> 性别<br /> 男<input
			type="checkbox" name="man"><br /> 女<input type="checkbox"
			name="woman"> <br /> <input type="submit" value="注册"><br />

	</form>
</body>
</html>
