<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!-- Mirrored from www.zi-han.net/theme/hplus/table_bootstrap.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:03 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>智慧校园-维修记录</title>

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
							<h3 class="example-title">维修记录</h3>
							<div class="example">
								<%--<button type="button" class="btn btn-primary"
									onClick="window.location.href='${pageContext.request.contextPath}/web/repairman/add'">添加</button>
								<button type="button" class="btn btn-primary"
									onclick="document.forms[1].submit();">删除</button>
								--%>
								<table id="exampleTablePagination" data-toggle="table"
									data-height="240">
									<thead>
										<tr>
											<th data-field="name">名称</th>
											<th data-field="all">详情</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td data-field="rid">id</td>
											<td>${repaireBean.rid }</td>
										</tr>
										<tr>
											<td data-field="repaireName">报修人姓名</td>
											<td>${repaireBean.repaireName }</td>
										</tr>
										<tr>
											<td data-field=mainType>报修描述</td>
											<td>${repaireBean.repaireDes }</td>
										</tr>
										<tr>
											<td data-field="type">报修物品</td>
											<td><c:forEach items="${repaireBean.goods }" var="good" varStatus="status">
													${good}
													<c:if test="${ not status.last}">
														,
													</c:if>
											</c:forEach></td>
										</tr>
										<tr>
											<td data-field="budlingId">所处地点</td>
											<td>${repaireBean.repaireName }</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="example-wrap">
							<h3 class="example-title">报修单状态</h3>
							<div class="example">
								<%--<button type="button" class="btn btn-primary"
									onClick="window.location.href='${pageContext.request.contextPath}/web/repairman/add'">添加</button>
								<button type="button" class="btn btn-primary"
									onclick="document.forms[1].submit();">删除</button>
								--%>
								<table id="exampleTablePagination" data-toggle="table"
									data-height="350">
									<thead>
										<tr>
											<th data-field="name">名称</th>
											<th data-field="all">详情</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td data-field="repaireName">接单人</td>
											<td>${repaireBean.repairman.nickName }</td>
										</tr>
										<tr>
											<td data-field=mainType>接单时间</td>
											
											<td><fmt:formatDate value="${repaireBean.repaire_time }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
										</tr>
										<tr>
											<td data-field="type">维修完成时间</td>
											<td><fmt:formatDate value="${repaireBean.get_repaire_time }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
										</tr>
										<tr>
											<td data-field="budlingId">维修结果</td>
											<td><fmt:formatDate value="${repaireBean.over_time }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
										</tr>
										<tr>
											<td data-field="budlingId">评论</td>
											<td>${repaireBean.evaluate }</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5">
								<div class="ibox float-e-margins">
									<div class="ibox-title">
										<h5>保修图片</h5>
									</div>
									<div class="ibox-content">
										<div class="carousel slide" id="carousel1">
											<div class="carousel-inner">
												<c:forEach items="${repaireBean.imgUrl}" var="url" varStatus="status">
													<div class="item <c:if test="${status.first}">active</c:if>">
														<img alt="image" class="img-responsive"
															src="${pageContext.request.contextPath }/${url }">
													</div>
												</c:forEach>
											</div>
											<a data-slide="prev" href="carousel.html#carousel1"
												class="left carousel-control"> <span class="icon-prev"></span>
											</a> <a data-slide="next" href="carousel.html#carousel1"
												class="right carousel-control"> <span class="icon-next"></span>
											</a>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/js/content.min.js?v=1.0.0"></script>
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
