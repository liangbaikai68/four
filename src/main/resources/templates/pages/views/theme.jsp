<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/graph_flot.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:59 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name=“viewport” content=“width=device-width, initial-scale=1.0,
	minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes” />

<title>H+ 后台主题UI框架 - Flot图表</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

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

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
			<div class="col-sm-6">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>保修类型</h5>
					</div>
					<div class="ibox-content">

						<div class="echarts" id="flot-pie-chart1"></div>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>公寓物品报修</h5>
					</div>
					<div class="ibox-content">

						<div class="echarts" id="flot-pie-chart2"></div>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>公寓网络报修</h5>
					</div>
					<div class="ibox-content">

						<div class="echarts" id="flot-pie-chart3"></div>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>教学楼物品报修</h5>
					</div>
					<div class="ibox-content">

						<div class="echarts" id="flot-pie-chart4"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath }/js/jquery.min.js?v=2.1.4"></script>
	<script
		src="${pageContext.request.contextPath }/js/plugins/flot/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/plugins/flot/jquery.flot.resize.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/plugins/flot/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/content.min.js?v=1.0.0"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<script type="text/javascript">
	$(function() {
		    {
		        var e1 = [{
		            label: "公寓物品报修",
		            data: ${goods_type[0]},
		            color: "#ed7d31"
		        },{
		            label: "公寓网络报修",
		            data: ${goods_type[1]},
		            color: "#a5a5a5"
		        },
		        {
		            label: "教学楼物品报修",
		            data: ${goods_type[2]},
		            color: "#5b9bd5"
		        }],e2 = [{
		            label: "沙窗",
		            data: ${apartmentGoodsCount[0]},
		            color: "#ed7d31"
		        },{
		            label: "灯管",
		            data: ${apartmentGoodsCount[1]},
		            color: "#a5a5a5"
		        },
		        {
		            label: "门锁",
		            data: ${apartmentGoodsCount[2]},
		            color: "#5b9bd5"
		        },{
		            label: "管道",
		            data: ${apartmentGoodsCount[3]},
		            color: "#70ad47"
		        },{
		            label: "电风扇",
		            data: ${apartmentGoodsCount[4]},
		            color: "#ffc000"
		        },{
		            label: "冲水阀",
		            data: ${apartmentGoodsCount[5]},
		            color: "#997300"
		        },{
		            label: "其他",
		            data: ${apartmentGoodsCount[6]},
		            color: "#9e480e"
		        }],e3 = [{
		            label: "接口检测",
		            data: ${apartmentNetCount[0]},
		            color: "#ed7d31"
		        },{
		            label: "网线检测",
		            data: ${apartmentNetCount[1]},
		            color: "#a5a5a5"
		        },
		        {
		            label: "路由器检测",
		            data: ${apartmentNetCount[2]},
		            color: "#5b9bd5"
		        },{
		            label: "其他",
		            data: ${apartmentNetCount[3]},
		            color: "#70ad47"
		        }],e4 = [{
		            label: "门锁",
		            data: ${schoolGoodsCount[0]},
		            color: "#ed7d31"
		        },{
		            label: "电风扇",
		            data: ${schoolGoodsCount[1]},
		            color: "#a5a5a5"
		        },
		        {
		            label: "投影仪",
		            data: ${schoolGoodsCount[2]},
		            color: "#5b9bd5"
		        },{
		            label: "黑板",
		            data: ${schoolGoodsCount[3]},
		            color: "#70ad47"
		        },{
		            label: "灯管",
		            data: ${schoolGoodsCount[4]},
		            color: "#ffc000"
		        },{
		            label: "课桌",
		            data: ${schoolGoodsCount[5]},
		            color: "#997300"
		        },{
		            label: "多媒体讲台",
		            data: ${schoolGoodsCount[6]},
		            color: "#997300"
		        },{
		            label: "其他",
		            data: ${schoolGoodsCount[7]},
		            color: "#9e480e"
		        }];
		        $.plot($("#flot-pie-chart1"), e1, {
		            series: {
		                pie: {
		                    show: !0
		                }
		            },
		            grid: {
		                hoverable: !0
		            },
		            tooltip: !0,
		            tooltipOpts: {
		                content: "%p.0%, %s",
		                shifts: {
		                    x: 20,
		                    y: 0
		                },
		                defaultTheme: !1
		            }
		        })
		        $.plot($("#flot-pie-chart2"), e2, {
		            series: {
		                pie: {
		                    show: !0
		                }
		            },
		            grid: {
		                hoverable: !0
		            },
		            tooltip: !0,
		            tooltipOpts: {
		                content: "%p.0%, %s",
		                shifts: {
		                    x: 20,
		                    y: 0
		                },
		                defaultTheme: !1
		            }
		        })
		        $.plot($("#flot-pie-chart3"), e3, {
		            series: {
		                pie: {
		                    show: !0
		                }
		            },
		            grid: {
		                hoverable: !0
		            },
		            tooltip: !0,
		            tooltipOpts: {
		                content: "%p.0%, %s",
		                shifts: {
		                    x: 20,
		                    y: 0
		                },
		                defaultTheme: !1
		            }
		        })
		        $.plot($("#flot-pie-chart4"), e4, {
		            series: {
		                pie: {
		                    show: !0
		                }
		            },
		            grid: {
		                hoverable: !0
		            },
		            tooltip: !0,
		            tooltipOpts: {
		                content: "%p.0%, %s",
		                shifts: {
		                    x: 20,
		                    y: 0
		                },
		                defaultTheme: !1
		            }
		        })
		    }
		})
	</script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/graph_flot.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:02 GMT -->
</html>

