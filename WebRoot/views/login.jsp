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

<title>在线旅游系统登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/easyui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
</head>
<body style="background-color:#99cdff;margin-top: 40px">
	<div style="padding-left:35%">
		<div class="easyui-panel" title=""
			style="width: 400px;padding:30px 60px;background-color:#AACCFF">
			<form id="ff" class="easyui-form" method="post"
				data-options="novalidate:true">
				<div style="margin-bottom:20px">
					<input class="easyui-textbox" name="username"  style="width:100%"
						data-options="label:'账号:',required:true">
				</div>
				<div style="margin-bottom:20px">
					<input class="easyui-passwordbox" name="password" 
						style="width:100%" data-options="label:'密码:',required:true">
				</div>
				<div style="margin-bottom:20px">
					<select class="easyui-combobox" name="type" label="身份"
						style="width:100%">
						<option value="normal_user">普通用户</option>
						<option value="vip_user">VIP用户</option>
						<option value="adminator">管理员</option>
					</select>
				</div>
				<!-- <div style="width:100%;margin-bottom:20px;text-align: right;">
					<input type="submit" value="登录"style="border:0px;;width:130px;color: #00ee00;padding:4px 0;"class="easyui-linkbutton">
				</div> -->
			</form>
			<div style="text-align:center;padding:5x 0">
				<button  class="easyui-linkbutton"
					onclick="submitForm()" style="width:80px;color: #00ee00">登录</button> <buton
		                 class="easyui-linkbutton"
					onclick="clearForm()" style="width:80px;color: red">清空</button>
			</div>
		</div>
	</div>
	<script>
		function submitForm() {
			$('#ff').form('submit', {
			    url:'${pageContext.request.contextPath}/user_login',
			    onSubmit: function(){
			        // do some check
			        // return false to prevent submit;
			    },
			    success:function(data){
			        //alert(data)
			       var json=$.parseJSON(data);
			       var obj = new Function("return" + json)();//转换后的JSON对象
			        //console.log(json);
			        //console.log(obj.status);
			        var status=obj.status;
			        //console.log(status);
		        	//location.href='${pageContext.request.contextPath}/views/admin/SuperAdmin.jsp';
			        if("super_admin"===status){
			        	// 超级管理员
			        	location.href='${pageContext.request.contextPath}/views/admin/SuperAdmin.jsp';
			        }else if("normal_admin"==status){
			        	// 一般管理员
			        location.href='${pageContext.request.contextPath}/views/admin/Admin.jsp';
			        }else if("user"==status){
			        	// 用户
			        	location.href='${pageContext.request.contextPath}/index.jsp';
			        }else if("non_user"==status){
			        	// 找不到对应用户
			        }else if("error"==status){
			        	// 出错
			        }
			    }
			});
		}
		function clearForm() {
			$('#ff').form('clear');
		}
	</script>
</body>
</html>