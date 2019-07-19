<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/graph_echarts.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:59 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>H+ 后台主题UI框架 - 百度ECHarts</title>
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
		<div class="row">
			<div class="col-sm-6">
					<div class="ibox-content">
						<div class="echarts" id="echarts-line-chart"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js?v=2.1.4"></script>
	<script src="js/bootstrap.min.js?v=3.3.6"></script>
	<script src="js/plugins/echarts/echarts-all.js"></script>
	<script src="js/content.min.js?v=1.0.0"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<script type="text/javascript">
		$(function() {
			var e = echarts.init(document.getElementById("echarts-line-chart")), a = {
				title : {
					text : "未来一周气温变化"
				},
				tooltip : {
					trigger : "axis"
				},
				legend : {
					data : [ "最高气温", "最低气温" ]
				},
				grid : {
					x : 40,
					x2 : 40,
					y2 : 24
				},
				calculable : !0,
				xAxis : [ {
					type : "category",
					boundaryGap : !1,
					data : [ 1, 2, 3, 4, 5, 6, 7 ]
				} ],
				yAxis : [ {
					type : "value",
					axisLabel : {
						formatter : "{value} °C"
					}
				} ],
				series : [ {
					name : "最高气温",
					type : "line",
					data : [ 11, 11, 15, 13, 12, 13, 10 ],
					markPoint : {
						data : [ {
							type : "max",
							name : "最大值"
						}, {
							type : "min",
							name : "最小值"
						} ]
					},
					markLine : {
						data : [ {
							type : "average",
							name : "平均值"
						} ]
					}
				}, {
					name : "最低气温",
					type : "line",
					data : [ 1, -2, 2, 5, 3, 2, 0 ],
					markPoint : {
						data : [ {
							name : "周最低",
							value : -2,
							xAxis : 1,
							yAxis : -1.5
						} ]
					},
					markLine : {
						data : [ {
							type : "average",
							name : "平均值"
						} ]
					}
				} ]
			};
			e.setOption(a), $(window).resize(e.resize);
		});
	</script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/graph_echarts.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:59 GMT -->
</html>
