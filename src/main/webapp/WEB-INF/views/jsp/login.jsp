<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Forms</title>

	<spring:url value="/resources/core/css/datepicker3.css" var="coreCss" />
	<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
	<spring:url value="/resources/core/css/styles.css" var="styleCss" />
	<link href="${bootstrapCss}" rel="stylesheet" />
	<link href="${coreCss}" rel="stylesheet" />
	<link href="${styleCss}" rel="stylesheet">
<!--[if lt IE 9]>
	<spring:url value="/resources/core/js/html5shiv.js" var="coreJs"></spring:url>
	<spring:url value="/resources/core/js/respond.min.js" var="respondJs"></spring:url>
	<script src="${coreJs}"></script>
	<script src="${respondJs}"></script>
<![endif]-->

</head>

<body>
	
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Log in</div>
				<div class="panel-body">
					<form role="form" >
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="E-mail" name="email" type="email" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password" name="password" type="password" value="">
							</div>
							<div class="checkbox">
								<label>
									<input name="remember" type="checkbox" value="Remember Me">Remember Me
								</label>
							</div>
							<a id="button1" class="btn btn-primary">Login</a>
						</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->



	<spring:url value="/resources/core/js/jquery-1.11.1.min.js" var="jqueryJs"></spring:url>
	<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs"></spring:url>
	<spring:url value="/resources/core/js/chart.min.js" var="chartminJs"></spring:url>
	<spring:url value="/resources/core/js/chart-data.js" var="chartdataJs"></spring:url>
	<spring:url value="/resources/core/js/easypiechart.js" var="easychartJs"></spring:url>
	<spring:url value="/resources/core/js/easypiechart-data.js" var="easychartdataJs"></spring:url>
	<spring:url value="/resources/core/js/bootstrap-datepicker.js" var="bootstrapdateJs"></spring:url>
	<script src="${jqueryJs}"></script>
	<script src="${bootstrapJs}"></script>
	<script src="${chartminJs}"></script>
	<script src="${chartdataJs}"></script>
	<script src="${easychartJs}"></script>
	<script src="${easychartdataJs}"></script>
	<script src="${bootstrapdateJs}"></script>
	<script>
		$('#button1').click(function () {
		    var form=document.forms[0];
			form.action="/spring4/login"
			form.method = "post"
			form.submit();
        })
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
