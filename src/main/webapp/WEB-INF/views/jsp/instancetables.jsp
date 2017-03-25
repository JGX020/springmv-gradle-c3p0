<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lumino - Tables</title>

	<spring:url value="/resources/core/css/datepicker3.css" var="coreCss" />
	<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
	<spring:url value="/resources/core/css/styles.css" var="styleCss" />
	<spring:url value="/resources/core/tables/data1.json" var="data1Js" />
	<spring:url value="/resources/core/css/bootstrap-table.css" var="boostraptableCss" />
	<link href="${bootstrapCss}" rel="stylesheet" />
	<link href="${coreCss}" rel="stylesheet" />
	<link href="${styleCss}" rel="stylesheet">
	<link href="${boostraptableCss}" rel="stylesheet">

	<!--[if lt IE 9]>
	<spring:url value="/resources/core/js/html5shiv.js" var="coreJs"></spring:url>
	<spring:url value="/resources/core/js/respond.min.js" var="respondJs"></spring:url>
	<script src="${coreJs}"></script>
	<script src="${respondJs}"></script>
<![endif]-->

</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>Lumino</span>Admin</a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> User <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<li><a href="index.html"><span class="glyphicon glyphicon-dashboard"></span> Dashboard</a></li>
			<li><a href="widgets.html"><span class="glyphicon glyphicon-th"></span> Widgets</a></li>
			<li><a href="charts.html"><span class="glyphicon glyphicon-stats"></span> Charts</a></li>
			<li class="active"><a href="tables.html"><span class="glyphicon glyphicon-list-alt"></span> Tables</a></li>
			<li><a href="forms.html"><span class="glyphicon glyphicon-pencil"></span> Forms</a></li>
			<li><a href="panels.html"><span class="glyphicon glyphicon-info-sign"></span> Alerts &amp; Panels</a></li>
			<li class="parent ">
				<a href="#">
					<span class="glyphicon glyphicon-list"></span> Dropdown <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li>
						<a class="" href="#">
							<span class="glyphicon glyphicon-share-alt"></span> Sub Item 1
						</a>
					</li>
					<li>
						<a class="" href="#">
							<span class="glyphicon glyphicon-share-alt"></span> Sub Item 2
						</a>
					</li>
					<li>
						<a class="" href="#">
							<span class="glyphicon glyphicon-share-alt"></span> Sub Item 3
						</a>
					</li>
				</ul>
			</li>
			<li role="presentation" class="divider"></li>
			<li><a href="login.html"><span class="glyphicon glyphicon-user"></span> Login Page</a></li>
		</ul>
		<div class="attribution">Template by <a href="http://www.medialoot.com/item/lumino-admin-bootstrap-template/">Medialoot</a></div>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">Tables</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Tables</h1>
			</div>
		</div><!--/.row-->
				
		<a id="a1" href="#">111</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Advanced Table</div>
					<div class="panel-body">
						<table id="table1" data-toggle="table"  data-url="/spring4/resources/core/tables/data1.json" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						    <thead id="tb">
						    <tr>
						        <th data-field="state" data-checkbox="true" >Item ID</th>
						        <th data-field="name" data-sortable="true">实例名称</th>
						        <th data-field="name2"  data-sortable="true">镜像名称</th>
						        <th data-field="price" data-sortable="true">IP地址</th>
								<th data-field="price" data-sortable="true">实例类型</th>
								<th data-field="price" data-sortable="true">密钥对</th>
								<th data-field="price" data-sortable="true">状态</th>
								<th data-field="price" data-sortable="true">可用域</th>
								<th data-field="price" data-sortable="true">任务</th>
                                <th data-field="price" data-sortable="true">电源状态</th>
								<th data-field="price" data-sortable="true">创建后时间</th>
								</tr>
						    </thead>
						</table>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
		
						<script>
						    $(function () {
							
						        $('#hover, #striped, #condensed').click(function () {
						            var classes = 'table';
						
						            if ($('#hover').prop('checked')) {
						                classes += ' table-hover';
						            }
						            if ($('#condensed').prop('checked')) {
						                classes += ' table-condensed';
						            }
						            $('#table-style').bootstrapTable('destroy')
						                .bootstrapTable({
						                    classes: classes,
						                    striped: $('#striped').prop('checked')
						                });
						        });
						    });
						
						    function rowStyle(row, index) {
						        var classes = ['active', 'success', 'info', 'warning', 'danger'];
						
						        if (index % 2 === 0 && index / 2 < classes.length) {
						            return {
						                classes: classes[index / 2]
						            };
						        }
						        return {};
						    }
						</script>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
		
		
	</div><!--/.main-->

	<spring:url value="/resources/core/js/jquery-1.11.1.min.js" var="jqueryJs"></spring:url>
	<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs"></spring:url>
	<spring:url value="/resources/core/js/chart.min.js" var="chartminJs"></spring:url>
	<spring:url value="/resources/core/js/chart-data.js" var="chartdataJs"></spring:url>
	<spring:url value="/resources/core/js/easypiechart.js" var="easychartJs"></spring:url>
	<spring:url value="/resources/core/js/easypiechart-data.js" var="easychartdataJs"></spring:url>
	<spring:url value="/resources/core/js/bootstrap-datepicker.js" var="bootstrapdateJs"></spring:url>
	<spring:url value="/resources/core/js/bootstrap-table.js" var="bootstraptableJs"></spring:url>
	<script src="${jqueryJs}"></script>
	<script src="${bootstrapJs}"></script>
	<script src="${chartminJs}"></script>
	<script src="${chartdataJs}"></script>
	<script src="${easychartJs}"></script>
	<script src="${easychartdataJs}"></script>
	<script src="${bootstrapdateJs}"></script>
	<script src="${bootstraptableJs}"></script>
	<script>
	$("#a1").click(function(){
	console.log($("#table1").bootstrapTable('getSelections')[0].id)
	});
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>
