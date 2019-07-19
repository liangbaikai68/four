<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
%>
<%
	String str = "{label : \"bar\",data : [ [ 1, 34 ], [ 2, 25 ], [ 3, 19 ], [ 4, 34 ], [ 5, 32 ],[ 6, 44 ] ]";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/graph_flot.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:59 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>H+ 后台主题UI框架 - Flot图表</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

<link rel="shortcut icon" href="favicon.ico">
<link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
<link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

<link href="css/animate.min.css" rel="stylesheet">
<link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row"></div>
		<div class="row">
			<div class="col-sm-6">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>饼状图</h5>
					</div>
					<div class="ibox-content">
						<div class="flot-chart">
							<div class="flot-chart-content" id="flot-pie-chart"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<script src="js/jquery.min.js?v=2.1.4"></script>
	<script src="js/bootstrap.min.js?v=3.3.6"></script>
	<script src="js/plugins/flot/jquery.flot.js"></script>
	<script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
	<script src="js/plugins/flot/jquery.flot.resize.js"></script>
	<script src="js/plugins/flot/jquery.flot.pie.js"></script>
	<script src="js/content.min.js?v=1.0.0"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<script type="text/javascript">
		$(function() {
			{
				var e = [ {
					label : "公寓物品报修",
					data : 21,
					color : "#d3d3d3"
				}, {
					label : "公寓网络报修",
					data : 3,
					color : "#bababa"
				}, {
					label : "教学楼报修",
					data : 15,
					color : "#79d2c0"
				} ];
				$.plot($("#flot-pie-chart"), e, {
					series : {
						pie : {
							show : !0
						}
					},
					grid : {
						hoverable : !0
					},
					tooltip : !0,
					tooltipOpts : {
						content : "%p.0%, %s",
						shifts : {
							x : 20,
							y : 0
						},
						defaultTheme : !1
					}
				})
			}
			o("right"), $("button").click(function() {
				o($(this).text())
			})
		});
	</script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/graph_flot.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:02 GMT -->
</html>

