<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!-- Mirrored from www.zi-han.net/theme/hplus/table_bootstrap.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:03 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>智慧校园-用户列表</title>

<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/favicon.ico">
<link
	href="${pageContext.request.contextPath}/css/bootstrap.min14ed.css?v=3.3.6"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/font-awesome.min93e3.css?v=4.4.0"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/animate.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/style.min862f.css?v=4.1.0"
	rel="stylesheet">

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="ibox float-e-margins">
			<div class="ibox-content">
				<div class="row row-lg">
					<div class="col-sm-12">
						<div class="example-wrap">
							<h3 class="example-title">用户列表</h3>
							<div class="example">
								<form method="post" class="form-horizontal"
									action="${pageContext.request.contextPath}/web/user/list">
									<div class="example-wrap">
										<div class="example">
											<div class="form-group has-success">
												<div class="col-sm-1">
													<select class="form-control m-b" name="type">
														<option value="" selected="selected">请选择</option>
														<option value="公寓物品报修">公寓物品报修</option>
														<option value="公寓物品报修">公寓物品报修</option>
														<option value="公寓网络报修">公寓网络报修</option>
														<option value="教学楼物品报修">教学楼物品报修</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group has-success">
										<label class="col-sm-1 control-label">用户名：</label>

										<div class="col-sm-2">
											<input type="text" class="form-control" name="uid">
										</div>
										<label class="col-sm-1 control-label">名字：</label>

										<div class="col-sm-2">
											<input type="text" class="form-control" name="name">
										</div>
										<label class="col-sm-1 control-label">手机号：</label>

										<div class="col-sm-2">
											<input type="text" class="form-control" name="phone">
										</div>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<button type="button" class="btn btn-primary"
											onclick="document.forms[0].submit();">搜索</button>
									</div>
								</form>
								<button type="button" class="btn btn-primary"
									onClick="window.location.href='${pageContext.request.contextPath}/web/user/add'">添加</button>
								<button type="button" class="btn btn-primary"
									onclick="document.forms[1].submit();">删除</button>
								<form
									action="${pageContext.request.contextPath}/web/user/delete"
									method="post">
									<table id="exampleTablePagination" data-toggle="table"
										data-query-params="queryParams" data-mobile-responsive="true"
										data-height="500" data-pagination="true"
										data-icon-size="outline">
										<thead>
											<tr>
												<th></th>
												<th data-field="id">账号</th>
												<th data-field="name">姓名</th>
												<th data-field=password>密码</th>
												<th data-field="phone">手机号</th>
												<th data-field="time">注册时间</th>
												<th data-field="price">操作</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${users}" var="user">
												<tr>
													<td><input type="checkbox" value="${user.uid}"
														name="ids">
													</td>
													<td>${user.uid}</td>
													<td>${user.name}</td>
													<td>${user.password}</td>
													<td>${user.phone}</td>
													<td><fmt:formatDate value="${user.regist_time}"
															pattern="yyyy-MM-dd HH:mm:ss" />
													</td>
													<td>
														<div class="input-group-btn">
															<button data-toggle="dropdown"
																class="btn btn-white dropdown-toggle" type="button">
																操作 <span class="caret"></span>
															</button>
															<ul class="dropdown-menu">
																<li><a href="${pageContext.request.contextPath}/web/repaire/list?uid=${user.uid}">查看报修记录</a></li>
																<li><a href="${pageContext.request.contextPath}/web/user/editUserInfo?uid=${user.uid}">修改信息</a></li>
																<li><a href="${pageContext.request.contextPath}/web/user/editPassword?uid=${user.uid}">修改密码</a></li>
															</ul>
														</div> <%--<a
														href="${pageContext.request.contextPath}/web/repaire/list?uid=${user.uid}"></a>
														&nbsp;&nbsp;&nbsp;&nbsp; <a
														href="${pageContext.request.contextPath}/web/user/editUserInfo?uid=${user.uid}">修改信息</a>&nbsp;&nbsp;&nbsp;&nbsp;
														<a
														href="${pageContext.request.contextPath}/web/user/editPassword?uid=${user.uid}">修改密码</a>
													--%></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/demo/bootstrap-table-demo.min.js"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/table_bootstrap.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:06 GMT -->
</html>
