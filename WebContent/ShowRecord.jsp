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
<title>Record Viewer - Doctor on the Cloud</title>
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
<link href="css/main.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.0.0.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/custom.js"></script>
<script type="text/javascript" src="js/style-table.js"></script>
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
			<h:form id="SearchRecordForm">
				<h1>Show Record Detail</h1>
				<h:panelGroup>
					<h:panelGrid columns="10" styleClass="form"
						headerClass="tableHeader" footerClass="tableFooter"
						rowClasses="tableRowOdd, tableRowEven">
						<h:outputLabel for="RecordID" value="Record ID" />
						<h:inputText id="RecordID" maxlength="32"
							value="#{ManageRecordBean.record.recordID}" />
					</h:panelGrid>
				</h:panelGroup>
				<h:panelGroup>
					<h:commandButton value="Search" type="submit"
						action="#{ManageRecordBean.showRecord}" />
					<h:commandButton value="Reset" type="reset" />
				</h:panelGroup>
			</h:form>
			<br />
			<h2>Record Detail</h2>
			<h:panelGrid id="RecordSesult" columns="2">
				<f:facet name="header">
					<h:outputText value="Record Detail" />
				</f:facet>
				<h:outputLabel for="HeaderRecordID" value="Record ID" />
				<h:outputLabel for="RecordID"
					value="#{ManageRecordBean.record.recordID}" />
				<h:outputLabel for="HeaderPatientCitizenID"
					value="Patient's Citizen ID" />
				<h:outputLabel for="PatientCitizenID"
					value="#{ManageRecordBean.record.patientCitizenID}" />
				<h:outputLabel for="HeaderPatientFirstName"
					value="Patient's First Name" />
				<h:outputLabel for="PatientFirstName"
					value="#{ManageRecordBean.record.patientFirstName}" />
				<h:outputLabel for="HeaderPatientLastName"
					value="Patient's Last Name" />
				<h:outputLabel for="PatientLastName"
					value="#{ManageRecordBean.record.patientLastName}" />
				<h:outputLabel for="HeaderDoctorCitizenID"
					value="Primary Doctor's Citizen ID" />
				<h:outputLabel for="DoctorCitizenID"
					value="#{ManageRecordBean.record.doctorID}" />
				<h:outputLabel for="HeaderDoctorFirstName"
					value="Primary Doctor's First Name" />
				<h:outputLabel for="DoctorFirstName"
					value="#{ManageRecordBean.record.doctorFirstName}" />
				<h:outputLabel for="HeaderDoctorLastName"
					value="Primary Doctor's Last Name" />
				<h:outputLabel for="DoctorLastName"
					value="#{ManageRecordBean.record.doctorLastName}" />
				<h:outputLabel for="HeaderSystolic" value="Systolic" />
				<h:outputLabel for="Systolic"
					value="#{ManageRecordBean.record.systolic}" />
				<h:outputLabel for="HeaderDiastolic" value="Diastolic" />
				<h:outputLabel for="Diastolic"
					value="#{ManageRecordBean.record.diastolic}" />
				<h:outputLabel for="HeaderTemperature" value="Temperature" />
				<h:outputLabel for="Temperature"
					value="#{ManageRecordBean.record.temp}" />
				<h:outputLabel for="HeaderPulse" value="Pulse" />
				<h:outputLabel for="Pulse" value="#{ManageRecordBean.record.pulse}" />
				<h:outputLabel for="HeaderBreathRate" value="BreathRate" />
				<h:outputLabel for="BreathRate"
					value="#{ManageRecordBean.record.breathrate}" />
				<h:outputLabel for="HeaderO2Sat" value="Oxygen (O2) Saturation" />
				<h:outputLabel for="O2Sat" value="#{ManageRecordBean.record.o2sat}" />
				<h:outputLabel for="HeaderWeight" value="Weight" />
				<h:outputLabel for="Weight"
					value="#{ManageRecordBean.record.weight}" />
				<h:outputLabel for="HeaderHeight" value="Height" />
				<h:outputLabel for="Height"
					value="#{ManageRecordBean.record.height}" />
				<h:outputLabel for="HeaderBMI" value="Body Mass Index (BMI)" />
				<h:outputLabel for="BMI" value="#{ManageRecordBean.record.bmi}" />
				<h:outputLabel for="HeaderLMP" value="Last Menstrual Period (LMP)" />
				<h:outputLabel for="LMP" value="#{ManageRecordBean.record.lmp}" />
				<h:outputLabel for="HeaderSymptom" value="Symptom" />
				<h:outputLabel for="Symptom"
					value="#{ManageRecordBean.record.symptom}" />
				<h:outputLabel for="HeaderDisease" value="Disease" />
				<h:outputLabel for="Disease"
					value="#{ManageRecordBean.record.disease}" />
				<h:outputLabel for="HeaderMedication" value="Medication" />
				<h:outputLabel for="Medication"
					value="#{ManageRecordBean.record.medication}" />
				<h:outputLabel for="HeaderDiagnosis" value="Diagnosis" />
				<h:outputLabel for="Diagnosis"
					value="#{ManageRecordBean.record.diagnosis}" />
				<h:outputLabel for="HeaderPrescriptionID" value="Prescription ID" />
				<h:outputLabel for="PrescriptionID"
					value="#{ManageRecordBean.record.rawPrescriptionIDList}" />
				<h:outputLabel for="HeaderTimestamp" value="Timestamp" />
				<h:outputLabel for="Timestamp"
					value="#{ManageRecordBean.record.timestamp}" />
				<h:outputLabel for="HeaderRegisDate" value="Registration Date" />
				<h:outputLabel for="RegisDate"
					value="#{ManageRecordBean.record.regisDate}" />
				<h:outputLabel for="HeaderDiagDate" value="Diagnosis Date" />
				<h:outputLabel for="DiagDate"
					value="#{ManageRecordBean.record.diagDate}" />
			</h:panelGrid>
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