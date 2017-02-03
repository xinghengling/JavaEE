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

<title>大学生在线旅游平台</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- 包含头部信息用于适应不同设备 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 包含 bootstrap 样式表 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css">
<script src="${pageContext.request.contextPath}/js/index.js"></script>
</head>

<body>
	<div class="my_nav">
		<ul class="nav nav-tabs nav-justified">
			<li role="presentation" class="active"><a href="#">首页</a></li>
			<li role="presentation"><a href="#">景点</a></li>
			<li role="presentation"><a href="#">社区</a></li>
			<li role="presentation"><a href="#">关于我们</a></li>
			<li role="presentation" style="float:right;"><a href="#">退出</a></li>
			<li role="presentation" class="li_login" style="float:right;"><a
				href="${pageContext.request.contextPath}/views/login.jsp">登录</a></li>
			<li role="presentation" class="li_reg" style="float:right;"><a
				href="${pageContext.request.contextPath}/views/regist.jsp">注册</a></li>
		</ul>
	</div>

	<!-- -------------------------content start-------------------------------- -->
	<div class="content">
		<!-- ------------------------------------------轮播start---------------------------- -->
		<div id="myCarousel" class="carousel slide">
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"
					id="first_index"></li>
				<li data-target="#myCarousel" data-slide-to="1" id="second_index"></li>
				<li data-target="#myCarousel" data-slide-to="2" id="third_index"></li>
			</ol>
			<!-- 轮播（Carousel）内容 -->
			<div class="carousel-inner">
				<div class="item active" >
					<img id="item"
						src="${pageContext.request.contextPath}/images/abtractions/da_fu_shan.jpg"
						alt="First slide">
					<div class="carousel-caption">大夫山</div>
				</div>
				<%-- <div class="item " id="item_second">
					<img
						src="${pageContext.request.contextPath}/images/abtractions/sha_mian.jpg"
						alt="Second slide">
					<div class="carousel-caption">沙面</div>
				</div>
				<div class="item  " id="item_second">
					<img
						src="${pageContext.request.contextPath}/images/abtractions/chang_long.jpg"
						alt="Third slide">
					<div class="carousel-caption">长隆</div>
				</div> --%>
			</div>
		</div>
		<!-- ------------------------------------------轮播end---------------------------- -->
		<div class="introduction">
			<div style="background-color: #00EEEE;padding: 8px;">
				<span style="color: red;font-weight: bolder;font-size: 17px;">专为大学生定制的在线旅游平台</span>
			</div>
			<div class="intoduction_box">
				<a class="first"> <img alt=""
					src="${pageContext.request.contextPath}/images/abtractions/history_activity.jpg">
					<br />
				<span>往期风采</span>
				</a> <a class="second"> <img alt=""
					src="${pageContext.request.contextPath}/images/abtractions/travel_tip.jpg">
					<br />
				<span>旅游攻略</span>
				</a> <a class="third"> <img alt=""
					src="${pageContext.request.contextPath}/images/abtractions/group_travel.jpg">
					<br />
				<span>团体优惠</span>
				</a>
				<div class="clear"></div>
			</div>
		</div>
		<div></div>
		<!-- -----------------------content end-------------------------------- -->
		<div style="padding-top: 20px;padding-bottom: 40px;float: left;margin:0 10px 0 10px;">
			<a style="color: black;font-size: 18px;font-weight: bold;">资源</a><br />
			<a style="color: pitch;font-size: 14px;">路线</a><br /> <a style="color: pitch;font-size: 14px;">经费</a><br />
			<a style="color: pitch;font-size: 14px;">圣地</a><br /> <a style="color: pitch;font-size: 14px;">服务</a><br />
		</div>
		<div style="padding-top: 20px;padding-bottom: 40px;float: left;margin:0 10px 0 10px;">
			<a style="color: black;font-size: 18px;font-weight: bold;">商家服务</span><br />
			<a style="color: pitch;font-size: 14px;">售后</a><br /> <a style="color: pitch;font-size: 14px;">安全</a><br />
			<a style="color: pitch;font-size: 14px;">福利</a><br /> <a style="color: pitch;font-size: 14px;">旅程</a><br />
		</div>
		<div class="clear"></div>
	</div>
	<div class="my_bottom">
		<span>@copyright 润物无声雨</span>
	</div>

	<!-- JavaScript 放置在文档最后面可以使页面加载速度更快 -->
	<!-- 可选: 包含 jQuery 库 -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1min.js"></script>
	<!-- 可选: 合并了 Bootstrap JavaScript 插件 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
