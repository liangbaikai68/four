<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/form_validate.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:15 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>智慧校园-维修员注册</title>

<link rel="shortcut icon" href="favicon.ico">
<link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
<link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="ibox-title">
				<h5>维修员注册</h5>
			</div>
			<div class="ibox-content">
				<form class="form-horizontal m-t" id="signupForm">
					<div class="form-group">
						<label class="col-sm-3 control-label">用户名：</label>
						<div class="col-sm-5">
							<input id="id" name="id" class="form-control" type="text"
								aria-required="true" aria-invalid="true" class="error">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">名字：</label>
						<div class="col-sm-5">
							<input id="nickName" name="nickName" class="form-control"
								type="text" aria-required="true" aria-invalid="false"
								class="valid">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">密码：</label>
						<div class="col-sm-5">
							<input id="password" name="password" class="form-control"
								type="password">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">确认密码：</label>
						<div class="col-sm-5">
							<input id="confirm_password" name="confirm_password"
								class="form-control" type="password"> <span
								class="help-block m-b-none"> </span>
						</div>
					</div>
					<div class="form-group" id="divfirst">
						<label class="col-sm-3 control-label">手机号：</label>
						<div class="col-sm-5" id="divsecond">
							<input id="phone" name="phone" class="form-control" type="phone" />
						</div>
					</div>
					<%--<div class="form-group has-error">
                                <label class="col-sm-2 control-label">验证未通过</label>

                                <div class="col-sm-10">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
					--%>
					<div class="form-group">
						<div class="col-sm-8 col-sm-offset-3">
							<button class="btn btn-primary" type="submit" id="btn">提交</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js?v=2.1.4"></script>
	<script src="js/bootstrap.min.js?v=3.3.6"></script>
	<script src="js/plugins/validate/jquery.validate.min.js"></script>
	<script src="js/plugins/validate/messages_zh.min.js"></script>
	<script src="js/demo/form-validate-demo.min.js"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<script language="JavaScript">
		window.onload = function() {
			document.getElementById("btn").onclick = function() {
				var phoneElement = document.getElementById("phone");
				var pattern = new RegExp('^1[3|4|5|7|8]\\d{9}$');
				//	<i class="fa fa-times-circle has-error" style="color: #a94442;"></i>
				var str = LTrim(phoneElement.value);
				if (str.length == 0) {
					var divfElement = document.getElementById("divfirst");
					var divsElement = document.getElementById("divsecond");
					divfElement.className = "form-group has-error";
					var IElement = document.createElement("i");
					IElement.className = "fa fa-times-circle has-error";
					IElement.style = "color: #a94442";
					var textElement = document.createTextNode("请输入您的手机号");
					IElement.appendChild(textElement);
					if (divsElement.lastChild.nodeValue != null) {
						divsElement.appendChild(IElement);
						return false;
					} else {
						divsElement.removeChild(divsElement.lastChild)
						divsElement.appendChild(IElement);
						return false;
					}

				} else if (!pattern.test(phoneElement.value)) {
					var divfElement = document.getElementById("divfirst");
					var divsElement = document.getElementById("divsecond");
					divfElement.className = "form-group has-error";
					var IElement = document.createElement("i");
					IElement.className = "fa fa-times-circle has-error";
					IElement.style = "color: #a94442";
					var textElement = document.createTextNode("请输入有效的手机号");
					IElement.appendChild(textElement);
					if (divsElement.lastChild.nodeValue != null) {
						divsElement.appendChild(IElement);
						return false;
					} else {
						divsElement.removeChild(divsElement.lastChild)
						divsElement.appendChild(IElement);
						return false;
					}
				}
				return true;

			}
			function LTrim(str) {
				var i;
				for (i = 0; i < str.length; i++) {
					if (str.charAt(i) != " ")
						break;
				}
				str = str.substring(i, str.length);
				return str;
			}
		}
	</script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/form_validate.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:16 GMT -->
</html>
