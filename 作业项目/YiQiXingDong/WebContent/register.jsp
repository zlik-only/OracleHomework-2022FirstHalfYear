<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./css/elementui.css">
<link rel="stylesheet" href="./css/layer.css">
<link rel="stylesheet" href="./css/register_main.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6/css/all.min.css">
<title>注册</title>
</head>

<body>
	<div id="app">
		<div
			style="height: 50px; width: 100%; line-height: 50px; border-bottom: 1px solid #ccc; display: flex; overflow: hidden; position: fixed; z-index: 100; background-color: white;">
			<div
				style="width: 200px; margin-left: 30px; font-weight: bold; color: #559EFF;">疫起行动</div>
			<div style="flex: 1;"></div>
			<div style="width: 100px; margin-right: 25px;">
				<p>未登录</p>
			</div>
		</div>
		<el-main class="main">
		<div class="login">
			<center>
				<h2>注册</h2>
			</center>
			<center>
				<%
					String successtip = (String) request.getAttribute("successtip");
					if (successtip != null) {
				%>
				<h6 style="color: green;"><%=successtip%></h6>
				<%
					}
				%>
			</center>
			<center>
				<%
					String failtip = (String) request.getAttribute("failtip");
					if (failtip != null) {
				%>
				<h6 style="color: red;"><%=failtip%></h6>
				<%
					}
				%>
			</center>
			<div class="user">
				<el-form :label-position="labelPosition" label-width="80px"
					:model="userLogin">
				<center style="margin: 10px auto;">
					<el-radio v-model="userLogin.user" label="1">用户注册</el-radio>
					<el-radio v-model="userLogin.user" label="2">管理员注册</el-radio>
				</center>
				<el-form-item label="姓名"> <el-input class="input"
					v-model="userLogin.name"></el-input> </el-form-item> <el-form-item label="性别">
				<el-radio v-model="userLogin.sex" label="1">男</el-radio> <el-radio
					v-model="userLogin.sex" label="0">女</el-radio> </el-form-item> <el-form-item
					label="联系电话"> <el-input class="input"
					v-model="userLogin.phone"></el-input> </el-form-item> <el-form-item label="科室号">
				<el-input type="​number" class="input" v-model="userLogin.ks"></el-input>
				</el-form-item> <el-form-item label="密码"> <el-input type="password"
					clearable class="input" v-model="userLogin.password"> </el-input> </el-form-item>
				<el-form-item label="验证码"> <el-input type="text"
					clearable class="input2" v-model="userLogin.yanzheng"></el-input> <el-image
					id="vc"
					style="width: 100px; height: 30px;position: absolute;top:5px;margin-left:5px;"
					src="${pageContext.request.contextPath}/vc" fit="fit"></el-image> <a
					href="javascript:pic();"> <i class="el-icon-refresh"
					style="position: relative; margin-left: 110px; margin-top: 2px;"
					@onclick="vc()"></i></a> </el-form-item> </el-form>
				<center>
					<el-button type="primary" @click="register()">注册</el-button>
					<el-button type="primary" @click="backlogin()">返回登录</el-button>
				</center>
			</div>
		</div>
		</el-main>
	</div>
	<script src="./js/vue.js"></script>
	<script src="./js/elementui.js"></script>
	<script src="./js/jquery-3.6.0.min.js"></script>
	<script src="./js/layer.js"></script>
	<script src="./js/register_main.js"></script>
	<script
		src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget@latest/autoload.js"></script>
	<script>
		function pic() {
			$("#vc").attr('src',
					"${pageContext.request.contextPath}/vc?r=" + Math.random());
		}
	</script>
</body>

</html>