<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:23 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>智慧校园-登录</title>

<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/favicon.ico">
<link
	href="${pageContext.request.contextPath }/css/bootstrap.min14ed.css?v=3.3.6"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/font-awesome.min93e3.css?v=4.4.0"
	rel="stylesheet">

<link href="${pageContext.request.contextPath }/css/animate.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/style.min862f.css?v=4.1.0"
	rel="stylesheet">
<!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
<script>
	if (window.top !== window.self) {
		window.top.location = window.location;
	}
</script>
</head>

<body class="gray-bg">

	<div class="middle-box text-center loginscreen  animated fadeInDown">
		<div>
			<div>

				<h2 class="mid-icon">智慧校园</h2>

			</div>
			<h3>欢迎使用 智慧校园</h3>
			<font style="color: #a94442">${msg}</font>
			<form class="m-t" role="form"
				action="${pageContext.request.contextPath }/web/admin/login"
				method="post">
				<div class="form-group">
					<input type="username" class="form-control" placeholder="用户名"
						required="" name="username" value="${admin.username }">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="密码"
						required="" name="password" value="${admin.password }">
				</div>
				<button type="submit" class="btn btn-primary block full-width m-b">登
					录</button>
			</form>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath }/js/jquery.min.js?v=2.1.4"></script>
	<script
		src="${pageContext.request.contextPath }/js/bootstrap.min.js?v=3.3.6"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>


</html>

