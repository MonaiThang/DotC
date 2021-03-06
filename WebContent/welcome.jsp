<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ page errorPage="errorpage.jsp"%>
<f:view>
	<f:loadBundle basename="com.j3ltd.web.messages.ApplicationMessages"
		var="msg" />
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome - Doctor on the Cloud</title>
<meta name="description"
	content="Doctor on the Cloud (DotC) Welcome Page" />
<meta name="keywords"
	content="Cloud Computing, Medical, Telemedicine, Web Application" />
<link rel="shortcut icon"
	href="http://www.derby-web-design-agency.co.uk/themes/response/images/favicon.png" />
<link rel="bookmark icon"
	href="http://www.derby-web-design-agency.co.uk/themes/response/images/favicon.png" />
<link href="css/main.css" rel="stylesheet" type="text/css">
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="grey" />
<meta name="viewport"
	content="width=device-width; initial-scale=1.0; maximum-scale=1.0;" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.0.0.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
<script src="js/custom.js"></script>
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
		currentDiv.removeClass('current').addClass('previous').fadeOut('2000');
		nextDiv.fadeIn('3000').addClass('current', function() {
			currentDiv.fadeOut('2000', function() {
				currentDiv.removeClass('previous');
			});
		});
	}
	//// End Simple Sliders ////
</script>
<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		$("a[rel^='prettyPhoto']").prettyPhoto();
	});
</script>
</head>
<body>
	<h:form>
		<div id="main">
			<!-- Start Slider Wrapping -->
			<div id="sliderwrap">
				<!-- Start Slider -->
				<div id="slider" class="nivoSlider">
					<img src="images/slider-banners/slider01.jpg" alt="" /> <img
						src="images/slider-banners/slider02.jpg" alt="" /> <img
						src="images/slider-banners/slider03.jpg" alt="" />
				</div>
				<!-- End Slider -->
				<!-- Start Slider HTML Captions -->
				<div id="htmlcaption" class="nivo-html-caption">
					<strong>This</strong> is an example of a <em>HTML</em> caption with
					<a href="#">a link</a>.
				</div>
				<!-- End Slider HTML Captions -->
			</div>
			<!-- End Slider Wrapping -->
			<!-- Start H1 Title -->
			<div class="titles">
				<div class="featured-titles">
					<div class="pageTitle">
						<h:outputText value="#{msg.dotc}" />
					</div>
					<div class="pageTitle">
						<h:outputText value="#{msg.doctoronthecloud}" />
					</div>
					<div class="featured-text">A cost-effective simple telemedicine
						solution for rural areas.</div>
					<f:facet name="header">
						<h:outputText value="#{msg.welcomeBoxTitle}" />
					</f:facet>
					<span></span>
				</div>
			</div>
			<!-- End H1 Title -->
			<!-- Start Main Body Wrap -->
			<div id="main-wrap">
				<!-- Start Featured Boxes -->
				<div class="boxes-third boxes-first">
					<div class="boxes-padding">
						<div class="bti">
							<div class="featured-images">
								<img src="images/register.png" width="48" height="48"
									alt="Responsive">
							</div>
							<div class="featured-titles">
<%-- 								<h:commandLink action="register" id="register"> --%>
<%-- 									<h:outputText value="#{msg.register}" /> --%>
<%-- 								</h:commandLink> --%>
								<h:outputLink value="register.jsf">Register</h:outputLink>
							</div>
						</div>
						<div class="featured-text">
							<br /> <br />For new patient must register before login.
						</div>
					</div>
					<span class="box-arrow"></span>
				</div>
				<div class="boxes-third">
					<div class="boxes-padding">
						<div class="bti">
							<div class="featured-images">
								<img src="images/record.png" width="48" height="48"
									alt="Responsive">
							</div>
							<div class="featured-titles">
								<h:outputLink value="record.jsf">Records</h:outputLink>
							</div>
						</div>
						<div class="featured-text">
							<br /> <br />For new medical records.
						</div>
					</div>
					<span class="box-arrow"></span>
				</div>
				<div class="boxes-third">
					<div class="boxes-padding">
						<div class="bti">
							<div class="featured-images">
								<img src="images/gpluslogo.png" width="53" height="53"
									alt="Responsive">
							</div>
							<div class="featured-titles">
								<h:outputLink value="doctor.jsf">Doctor</h:outputLink>
							</div>
						</div>
						<div class="featured-text">
							<br /> <br />Meet the doctor here !!!
						</div>
					</div>
					<span class="box-arrow"></span>
				</div>
				<div class="boxes-third">
					<div class="boxes-padding">
						<div class="bti">
							<div class="featured-images">
								<img src="images/rx.png" width="48" height="48" alt="Responsive">
							</div>
							<div class="featured-titles">
								<h:outputLink value="Pharmacy.jsf">Pharmacy</h:outputLink>
							</div>
						</div>
						<div class="featured-text">
							<br /> <br />View your prescription.
						</div>
					</div>
					<span class="box-arrow"></span>
				</div>
				<div class="boxes-third boxes-last">
					<div class="boxes-padding">
						<div class="bti">
							<div class="featured-images">
								<img src="images/search.png" width="48" height="48"
									alt="Responsive">
							</div>
							<div class="featured-titles">
								<h:outputLink value="Medicalrecord.jsf">Search</h:outputLink>
							</div>
						</div>
						<div class="featured-text">
							<br /> <br />Search your medical record.
						</div>
					</div>
					<span class="box-arrow"></span>
				</div>
				<!-- End Featured Boxes -->
			</div>
		</div>
	</h:form>
</body>
	</html>
</f:view>