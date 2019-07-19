<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!-- Mirrored from www.zi-han.net/theme/hplus/table_bootstrap.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:03 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>智慧校园-维修记录列表</title>

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
							<h3 class="example-title">维修记录列表</h3>
							<div class="example">
								<form method="post" class="form-horizontal"
									action="${pageContext.request.contextPath }/web/repaire/list">
									<div class="form-group has-success">
										<label class="col-sm-1 control-label">报修id：</label>

										<div class="col-sm-3">
											<input type="text" class="form-control" name="rid">
										</div>
										<div class="form-group has-success">
											<label class="col-sm-1 control-label">报修主类型：</label>
											<div class="col-sm-2">
												<select class="form-control m-b" name="type">
													<option value="">请选择</option>
													<option value="公寓物品报修">公寓物品报修</option>
													<option value="公寓物品报修">公寓物品报修</option>
													<option value="公寓网络报修">公寓网络报修</option>
													<option value="教学楼物品报修">教学楼物品报修</option>
												</select>
											</div>

											<div class="form-group has-success">
												<label class="col-sm-1 control-label">维修状态：</label>
												<div class="col-sm-2">
													<select class="form-control m-b" name="repaire_state">
														<option value="">请选择</option>
														<option value="0">待维修</option>
														<option value="1">正在维修</option>
														<option value="2">维修完成</option>
													</select>
												</div>
											</div>
										</div>
										<label class="col-sm-1 control-label">报修人：</label>

										<div class="col-sm-2">
											<input type="text" class="form-control" name="name">
										</div>
										<div class="form-group has-success">
											<label class="col-sm-1 control-label">维修员姓名：</label>
											<div class="col-sm-2">
												<select class="form-control m-b" name="id">
													<option value="">请选择</option>
													<c:forEach var="repaireman" items="${repairemans}">
														<option value="${repaireman.id}">${repaireman.nickName}</option>
													</c:forEach>
												</select>
											</div>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<button type="button" class="btn btn-primary"
												onclick="document.forms[0].submit();">搜索</button>
										</div>
									</div>
								</form>
								<button type="button" class="btn btn-primary"
									onclick="document.forms[1].submit();">删除</button>
								<form action="${pageContext.request.contextPath}/web/repaire/delete" method="post">
									<table id="exampleTablePagination" data-toggle="table"
										data-query-params="queryParams" data-mobile-responsive="true"
										data-height="500" data-pagination="true"
										data-icon-size="outline">
										<thead>
											<tr>
											<th>
												<th data-field="rid">id</th>
												<th data-field="repaireName">报修人姓名</th>
												<th data-field=mainType>报修主类型</th>
												<th data-field="type">报修类型</th>
												<th data-field="budlingId">报修楼编号</th>
												<th data-field="roomNum">房间号</th>
												<th data-field="repaire_time">报修时间</th>
												<th data-field="repaireStatus">状态</th>
												<th data-field="all">查看详情</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${repaireBeans}" var="repaireBean">
												<tr>
													<td><input type="checkbox" name="ids" value="${repaireBean.rid}"></td>
													<td data-field="rid">${repaireBean.rid}</td>
													<td data-field="repaireName">${repaireBean.repaireName
														}</td>
													<td data-field=mainType>${repaireBean.mainType }</td>
													<td data-field="type">${repaireBean.type }</td>
													<td data-field="budlingId">${repaireBean.budlingId }</td>
													<td data-field="roomNum">${repaireBean.roomNum }</td>
													<td data-field="repaire_time"><fmt:formatDate
															value="${repaireBean.repaire_time }"
															pattern="yyyy-MM-dd HH:mm:ss" /></td>
													<td data-field="repaireStatus"><c:choose>
															<c:when test="${repaireBean.repaireStatus == '0' }">待维修</c:when>
															<c:when test="${repaireBean.repaireStatus == '1' }">维修中</c:when>
															<c:otherwise>已维修</c:otherwise>
														</c:choose></td>
													<td data-field="all"><a
														href="${pageContext.request.contextPath}/web/repaire/load?rid=${repaireBean.rid}">查看详情</a>
													</td>
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

	<script type="text/javascript">
	　$("#chk_all").click(function(){
		alert("efwef");
		 　　// 使用attr只能执行一次
		 　　$("input[name='ids']").attr("checked", $(this).attr("checked")); 
		 　　// 使用prop则完美实现全选和反选
		 　　$("input[name='ids']").prop("checked", $(this).prop("checked"));
		　　　　// 获取所有选中的项并把选中项的文本组成一个字符串
		 　　var str = '';
		 　　$($("input[name='ids']:checked")).each(function(){
		 　　str += $(this).next().text() + ',';
		 　　});
		 　　alert(str);
		　　});
	</script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/table_bootstrap.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:06 GMT -->
</html>
