<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/form_validate.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:15 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>智慧校园-用户编辑</title>

<link rel="${pageContext.request.contextPath}/shortcut icon"
	href="favicon.ico">
<link
	href="${pageContext.request.contextPath}/css/bootstrap.min14ed.css?v=3.3.6"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/font-awesome.min93e3.css?v=4.4.0"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/animate.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/style.min862f.css?v=4.1.0"
	rel="stylesheet">

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="ibox-title">
				<h5>信息修改</h5>
			</div>
			<div class="ibox-content">
				<form class="form-horizontal m-t" id="signupForm"
					action="${pageContext.request.contextPath }/web/user/updateInfo"
					method="post">
					<div class="form-group">
						<label class="col-sm-3 control-label">用户名：</label>
						<div class="col-sm-5">
							<input id="id" name="id" class="form-control" type="text"
								aria-required="true" aria-invalid="true" class="error"
								value="${user.uid }" disabled>
						</div>
						<font style="color: #a94442">${msg }</font>
					</div>
					<input type="hidden" name="id" value="${user.uid }">
					<div class="form-group">
						<label class="col-sm-3 control-label">姓名：</label>
						<div class="col-sm-5">
							<input id="nickName" name="nickName" class="form-control"
								type="text" aria-required="true" aria-invalid="false"
								class="valid" value="${user.name }">
						</div>
					</div>
					<div class="form-group" id="divfirst">
						<label class="col-sm-3 control-label">手机号：</label>
						<div class="col-sm-5" id="divsecond">
							<input id="phone" name="phone" class="form-control" type="phone"
								value="${user.phone }" />
						</div>
					</div>

					<div class="form-group" id="divfirst">
						<label class="col-sm-3 control-label">性别：</label>
						<div class="radio">
							<label> <input type="radio"
								<c:if test="${user.sex eq '男'}">checked= ""</c:if> value="男"
								id="optionsRadios1" name="sex">男</label> <label> <input
								type="radio" <c:if test="${user.sex eq '女'}">checked = ""</c:if>
								value="女" id="optionsRadios2" name="sex">女</label>
						</div>
					</div>
					<div class="form-group" id="divfirst">
						<label class="col-sm-3 control-label">学院：</label>
						<div class="col-sm-2">

							<select class="form-control m-b" name="college">
								<option value="计算机工程学院"
									<c:if test="${user.college eq '计算机工程学院' }">selected</c:if>>计算机工程学院</option>
								<option value="机电与车辆工程学院"
									<c:if test="${user.college eq '机电与车辆工程学院' }">selected</c:if>>机电与车辆工程学院</option>
								<option value="信息与控制工程学院"
									<c:if test="${user.college eq '机电与车辆工程学院' }">selected</c:if>>机电与车辆工程学院</option>
								<option value="经济管理学院"
									<c:if test="${user.college eq '经济管理学院' }">selected</c:if>>经济管理学院</option>
								<option value="数学与信息科学学院"
									<c:if test="${user.college eq '数学与信息科学学院' }">selected</c:if>>数学与信息科学学院</option>
								<option value="物理与光电工程学院"
									<c:if test="${user.college eq '物理与光电工程学院' }">selected</c:if>>物理与光电工程学院</option>
								<option value="化学与环境工程学院"
									<c:if test="${user.college eq '化学化工与环境工程学院' }">selected</c:if>>化学化工与环境工程学院</option>
								<option value="生物与农业工程学院"
									<c:if test="${user.college eq '生物与农业工程学院' }">selected</c:if>>生物与农业工程学院</option>
								<option value="文学与新闻传播学院"
									<c:if test="${user.college eq '文学与新闻传播学院' }">selected</c:if>>文学与新闻传播学院</option>
								<option value="外国语学院"
									<c:if test="${user.college eq '外国语学院' }">selected</c:if>>外国语学院</option>
								<option value="法学院"
									<c:if test="${user.college eq '法学院' }"></c:if>>法学院</option>
								<option value="历史文化与旅游学院"
									<c:if test="${user.college eq '历史文化与旅游学院' }">selected</c:if>>历史文化与旅游学院</option>
								<option value="音乐学院"
									<c:if test="${user.college eq '音乐学院' }">selected</c:if>>音乐学院</option>
								<option value="美术学院"
									<c:if test="${user.college eq '美术学院' }">selected</c:if>>美术学院</option>
								<option value="体育学院"
									<c:if test="${user.college eq '体育学院' }">selected</c:if>>体育学院</option>
								<option value="教师教育学院"
									<c:if test="${user.college eq '教师教育学院' }">selected</c:if>>教师教育学院</option>
								<option value="建筑工程学院"
									<c:if test="${user.college eq '建筑工程学院' }">selected</c:if>>建筑工程学院</option>
								<option value="北海国际学院"
									<c:if test="${user.college eq '北海国际学院' }">selected</c:if>>北海国际学院</option>
								<option value="马克思主义学院"
									<c:if test="${user.college eq '马克思主义学院' }">selected</c:if>>马克思主义学院</option>
								<option value="传媒学院"
									<c:if test="${user.college eq '传媒学院' }">selected</c:if>>传媒学院</option>
							</select>
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
	<script
		src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/validate/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/validate/messages_zh.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/demo/form-validate-demo.min.js"></script>
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
