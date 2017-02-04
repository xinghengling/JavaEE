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

<title>用户注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/icon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/easyui.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
</head>
<body style="background-color: olive;">
	<div style=" margin-left: 35%;padding-top: 50px;">
		<div class="easyui-panel" title=""
			style="width: 400px;padding:30px 60px;background-color:#AACCFF">
			<form id="ff" class="easyui-form"
				action="${pageContext.request.contextPath}/user_regist"
				method="post" data-options="novalidate:true">
				<div style="margin-bottom:20px">
					<input class="easyui-textbox" id="username" name="username" style="width:100%"
						data-options="label:'账号:',required:true">
				</div>
				<div style="margin-bottom:20px">
					<input class="easyui-textbox" id="nick"name="nick" style="width:100%"
						data-options="label:'昵称:',required:true">
				</div>
				<div style="margin-bottom:20px">
					<input class="easyui-passwordbox" name="password" id="password"
						style="width:100%" data-options="label:'密码:',required:true">
				</div>
				<div style="margin-bottom:20px">
					<input class="easyui-passwordbox" name="password_ok" id="password_ok"
						style="width:100%" data-options="label:'确认密码:',required:true">
				</div>
				<div style="margin-bottom:20px">
					<span>性别:&nbsp;&nbsp;&nbsp;</span> <select id="sex"
						class="easyui-combobox" name="sex"
						style="width:100px;height: 20px;">
						<option>男</option>
						<option>女</option>
					</select>
				</div>
			</form>
			<div style="text-align:center;padding:5x 0">
				<button class="easyui-linkbutton" onclick="submitForm()"
					style="width:80px;color:red">注册</button>
					<a class="easyui-linkbutton" href="${pageContext.request.contextPath}/views/login.jsp"
					style="width:80px;color: #00ee00">登录</a>
				<buton class="easyui-linkbutton" onclick="clearForm()"
					style="width:80px;color:pink">清空
				</button>
			</div>
			<div id="message" style="color:red;text-align:center;height:10px;margin-top:4px;"></div>
		</div>
	</div>
	<script type="text/javascript">
	function submitForm(){
		$('#ff').form('submit', {
		    url:'${pageContext.request.contextPath}/user_regist',
		    onSubmit: function(){
		        // do some check
		        // return false to prevent submit;
		        $("#message").empty();
		        var username=$("#username").val();
		        var password=$("#password").val();
		        var password_ok=$("#password_ok").val();
		        var usernick=$("#nick").val();
		        var sex=$("#sex").val();
		        if(!username){
		        	//alert("用户名不能为空");
		        	$("#message").append("<span>用户名不能为空</span>");
		        	return false;
		        }else if(!usernick){
		        	//alert("昵称不能为空");
		        	$("#message").append("<span>昵称不能为空</span>");
		        	return false;
		        }else if(!password){
		        	//alert("密码不能为空");
		        	$("#message").append("<span>密码不能为空</span>");
		        	return false;
		        }else if(password_ok!=password){
		        	//alert("两次密码不一致");
		        	$("#message").append("<span>两次密码不一致</span>");
		        	return false;
		        }else if(!sex){
		        	//alert("请选择性别");
		        	$("#message").append("<span>请选择性别</span>");
		        	return false;
		        }
		        return true;
		    },
		    success:function(data){
		    	//alert(data);
		    var jsonObj=new Function("return"+data)();
		    var status=jsonObj.statuts;
		    //alert(data);
		    if("right"==status){
		    	alert("注册完成");
		    	clearForm();
		    }else if("error"==status){
		    	alert("注册出错");
		    }
		    },
		    error:function(data){
		    	alert("error:"+data);
		    }
		});
	};
	function clearForm() {
		$('#ff').form('clear');
	}
	</script>
</body>
</html>
