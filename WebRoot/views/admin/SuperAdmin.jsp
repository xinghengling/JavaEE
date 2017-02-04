<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>旅游系统后台管理</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/icon.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout">
	<div data-options="region:'south',split:true" style="height:0px;"></div>
	<div data-options="region:'west',title:'菜单',split:true"
		style="width:180px;">
		<ul id="tt" class="easyui-tree">
			<li><span>系统管理</span>
				<ul>
					<li><span>用户管理</span></li>
					<li><span>权限管理</span>
						<ul>
							<li>用户权限管理</li>
							<li>管理员权限管理</li>
						</ul></li>
					<li><span>景点管理</span>
						<ul>
							<li><span>热门景点管理</span></li>
							<li><span>景点排名管理</span></li>
						</ul></li>
				</ul></li>
			<li><span>日志管理</span></li>
		</ul>
	</div>
	<!--<div data-options="region:'east',title:'East',split:true" style="width:100px;"></div>-->
	<div data-options="region:'center',title:''"
		style="padding:5px;background:#eee;">
		<!-- 欢迎页面start -->
		<div id="div_welcome">
			<span style="color:red;font-size: 22px;">欢迎使用在线旅游管理系统</span>
		</div>
		<!-- 欢迎页面end  -->
		<div id="div_table" style="visibility: hidden;">
			<table id="dg" class="easyui-datagrid" title="全部用户" style="width:100%;"
				data-options="singleSelect:true,toolbar:'#tb',collapsible:false,method:'get'">
				<thead>
					<tr>
						<th data-options="field:'uid',width:100,align:'right'">序号</th>
						<th
							data-options="field:'username',width:100,align:'right',halign:'center'">用户名</th>
						<th
							data-options="field:'usernick',width:180,align:'right',halign:'center'">用户昵称</th>
						<th data-options="field:'sex',width:100,halign:'center'">性别</th>
						<th
							data-options="field:'userdescription',width:100,align:'center',halign:'center'">用户等级</th>
							<th data-options="field:'registDate',width:120,halign:'center'">注册时间</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
	<!--==============表头start===================-->
	<div id="tb" style="padding:2px 5px;">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" id="addUser" onclick="addUser()">添加用户</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" id="updateUser "onclick="updateUser()">修改用户</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove"
			plain="true" id="removeUser" onclick="removeUser()">删除用户</a>
		<span style="color:red;" id="userCount"></span>
		<div style="float: right;margin-right: 6px;">
			<span>用户类型:</span> <select id="user_type" class="easyui-combobox"
				panelHeight="auto" style="width:100px;">
				<option value="normal_user">普通用户</option>
				<option value="vip_user">VIP用户</option>
				<option value="adminator">管理员</option>
			</select> <a href="#" class="easyui-linkbutton" iconCls="icon-search"
				id="search" >开始查找</a>
		</div>
	</div>
	<!--=============================表头end=============-->
	<script type="text/javascript">
		isHasUserView = false; // 标记是否展示过用户管理页面

		/*  获取指定类型用户 */
		function getAllUsers() {
			var user_type = $("#user_type").val();
			if ("adminator" == user_type) {
				// 管理员 
			} else if ("vip_user" == user_type) {
				// vip用户
			} else if ("normal_user" == user_type) {
				// 一般用户
			}
		};
		// 树状管理菜单点击事件
		$('#tt')
				.tree(
						{
							onClick : function(node) {
								//alert(node.text); 
								var nodeText = node.text;
								if ("用户管理" == nodeText) {
									if (isHasUserView) {
										$("#div_table").css("display", "block");
									} else {
										// 加载数据
										$
												.ajax({
													type : 'POST',
													url : "user_findAllUsers",
													dataType : 'json',
													success : function(data) {
														var obj = new Function(
																'return' + data)
																();
														var count = obj.no;
														// 渲染数据
														$('#userCount').innerHTML='共有'+count+'位用户';
														$('#dg').datagrid({
															data: obj.users
														});
													},
													error : function(error) {
														console.log(error);
													}
												});
									}
									isHasUserView = true;
									$("#div_table").css("display", "block");
									$("#div_table")
											.css("visibility", "visible");
									$("#div_welcome").css("display", "none");
								} else {
									$("#div_welcome").css("display", "none");
									$("#div_table").css("display", "none");
								}
							}
						});
		// 添加用户
		function addUser(){
		};
		// 修改用户
		function updateUser(){
			
		};
		// 删除用户
		function removeUser(){
			
		};
	</script>
</body>
</html>