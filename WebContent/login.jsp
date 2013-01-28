<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page errorPage="errorpage.jsp"%>
<%
	try {
%>
<f:view>
	<f:loadBundle basename="com.j3ltd.web.messages.ApplicationMessages"
		var="msg" />
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Complete - Doctor on the Cloud</title>
<meta name="description"
	content="Response Premium Html Responsive Template - Portfolio Section" />
<meta name="keywords"
	content="Responsive Html, Responsive Template, Response, Filtered Portfolio" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="grey" />
<meta name="viewport"
	content="width=device-width; initial-scale=1.0; maximum-scale=1.0;" />
<link rel="shortcut icon"
	href="http://www.derby-web-design-agency.co.uk/themes/response/images/favicon.png" />
<link rel="bookmark icon"
	href="http://www.derby-web-design-agency.co.uk/themes/response/images/favicon.png" />
<link href="css/web-style.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.0.0.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/custom.js"></script>
<script>
	$(document).ready(function() {
		var $container = $('#portfolio-container')
		// initialize Isotope
		$container.isotope({
			// options...
			resizable : false, // disable normal resizing
			layoutMode : 'fitRows',
			itemSelector : '.element3',
			animationEngine : 'best-available',
			// set columnWidth to a percentage of container width
			masonry : {
				columnWidth : $container.width() / 5
			}
		});
		// update columnWidth on window resize
		$(window).smartresize(function() {
			$container.isotope({
				// update columnWidth to a percentage of container width
				masonry : {
					columnWidth : $container.width() / 5
				}
			});
		});
		$container.imagesLoaded(function() {
			$container.isotope({
			// options...
			});
		});
		$('#portfolio-filter a').click(function() {
			var selector = $(this).attr('data-filter');
			$container.isotope({
				filter : selector
			});
			return false;
		});
	});
</script>
<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		$("a[rel^='prettyPhoto']").prettyPhoto();
	});
</script>
</head>
<body>
	<div id="header">
		<div class="clear"></div>
		<!-- Start Social & Logo area -->
		<div id="header_small">
			<!-- Start Social area -->
			<div class="social">
				<ul>
					<li><a href="http://158.108.38.86:8080/DotC/welcome.jsf"
						class="social-welcome"></a></li>
					<li><a href="http://158.108.38.86:8080/DotC/register.jsf"
						class="social-register"></a></li>
					<li><a href="http://158.108.38.86:8080/DotC/record.jsf"
						class="social-record"></a></li>
					<li><a href="http://158.108.38.86:8080/DotC/doctor.jsf"
						class="social-doctor"></a></li>
					<li><a href="http://158.108.38.86:8080/DotC/Pharmacy.jsf"
						class="social-pharmacy"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- End Socialarea -->
	<div class="titlesnormal">
		<div id="main">
			<h1>Congratulations !!</h1>
			<h1>Your registration is now complete !</h1>
		</div>
	</div>
	<!-- Start Footer Bottom -->
	<div id="footerbottom">
		<div class="footerwrap">
			<!-- Start Copyright Div -->
			<div id="Copyright">
				&copy;DotC 2013.
				<!-- End Copyright Div -->
				<!-- Start Social area -->
				<div class="socialfooter">
					<ul>
						<li><a href="http://158.108.38.86:8080/DotC/welcome.jsf"
							class="social-welcome"></a></li>
						<li><a href="http://158.108.38.86:8080/DotC/register.jsf"
							class="social-register"></a></li>
						<li><a href="http://158.108.38.86:8080/DotC/record.jsf"
							class="social-record"></a></li>
						<li><a href="http://158.108.38.86:8080/DotC/doctor.jsf"
							class="social-doctor"></a></li>
						<li><a href="http://158.108.38.86:8080/DotC/Pharmacy.jsf"
							class="social-pharmacy"></a></li>
					</ul>
				</div>
				<!-- End Socialarea -->
			</div>
		</div>
	</div>
	<!-- End Footer Bottom -->
	<!-- End Footer -->
	<!-- Start Scroll To Top Div -->
	<div id="scrolltab"></div>
	<!-- End Scroll To Top Div -->
	<script>
		//// Start Simple Sliders ////
		$(function() {
			setInterval("rotateDiv()", 10000);
		});
		function rotateDiv() {
			var currentDiv = $("#simpleslider div.current");
			var nextDiv = currentDiv.next();
			if (nextDiv.length == 0)
				nextDiv = $("#simpleslider div:first");
			currentDiv.removeClass('current').addClass('previous').fadeOut(
					'2000');
			nextDiv.fadeIn('3000').addClass('current', function() {
				currentDiv.fadeOut('2000', function() {
					currentDiv.removeClass('previous');
				});
			});
		}
		//// End Simple Sliders ////
	</script>
</body>
	</html>
</f:view>
<%
	} catch (Exception ex) {
		ex.printStackTrace();
	}
%>