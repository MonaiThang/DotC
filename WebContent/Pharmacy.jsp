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
<title>Pharmacy - Doctor on the Cloud</title>
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
					<li><a href="http://158.108.38.86:8080/DotC/Medicalrecord.jsf"
						class="social-search"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- End Socialarea -->
	<div class="titlesnormal">
		<div id="main">
			<h:form id="SearchPrescriptionForm">
				<h1>SEARCH PHARMACY</h1>
				<!-- start coding here -->
				<h:panelGroup>
					<h:panelGrid columns="2" styleClass="form"
						headerClass="tableHeader" footerClass="tableFooter"
						rowClasses="tableRowOdd, tableRowEven">
						<h:outputLabel for="PrescriptionID" value="Prescription ID" />
						<h:inputText id="PrescriptionID" maxlength="32"
							value="#{ManagePrescriptionBean.prescription.prescriptionID}" />
						<h:outputLabel for="PatientID" value="Patient's Citizen ID" />
						<h:inputText id="PatientID" maxlength="32"
							value="#{ManagePrescriptionBean.prescription.patientID}" />
						<h:outputLabel for="PatientFirstname" value="Patient's First Name" />
						<h:inputText id="PatientFirstName" maxlength="50"
							value="#{ManagePrescriptionBean.prescription.patientFirstName}" />
						<h:outputLabel for="PatientLastname" value="Patient's Last Name" />
						<h:inputText id="PatientLastName" maxlength="50"
							value="#{ManagePrescriptionBean.prescription.patientLastName}" />
						<h:outputLabel for="DoctorID" value="DoctorID" />
						<h:inputText id="DoctorID" maxlength="50"
							value="#{ManagePrescriptionBean.prescription.doctorID}" />
						<h:outputLabel for="DoctorFirstname" value="Doctor's First Name" />
						<h:inputText id="DoctorFirstName" maxlength="50"
							value="#{ManagePrescriptionBean.prescription.doctorFirstName}" />
						<h:outputLabel for="DoctorLastname" value="Doctor's Last Name" />
						<h:inputText id="DoctorLastName" maxlength="50"
							value="#{ManagePrescriptionBean.prescription.doctorLastName}" />
						<h:outputLabel for="PrescribeDate" value="Prescribe Date" />
						<h:inputText id="PrescribeDate" maxlength="50"
							value="#{ManagePrescriptionBean.prescription.prescribeDate}">
							<f:convertDateTime pattern="dd/MM/yyyy" />
						</h:inputText>
						<h:outputLabel for="timestamp" value="Timestamp" />
						<h:inputText id="timestamp" maxlength="50"
							value="#{ManagePrescriptionBean.prescription.timestamp}">
							<f:convertDateTime pattern="dd/MM/yyyy" />
						</h:inputText>
						<!--        			<fieldset>
				          <legend>Prescription Status</legend>
				          <p>
				             <label>Status : </label>
				             <select id = "status">
				               <option value = "Pending">Pending</option>
				               <option value = "Received">Received</option>
				             </select>
				          </p>
				       </fieldset>-->
						<h:outputLabel for="status" value="Prescription Status" />
						<h:selectOneMenu id="status"
							value="#{ManagePrescriptionBean.prescription.status}">
							<f:selectItem itemValue="Pending" itemLabel="Pending" />
							<f:selectItem itemValue="Paid" itemLabel="Paid" />
							<f:selectItem itemValue="Ready" itemLabel="Ready" />
							<f:selectItem itemValue="Received" itemLabel="Received" />
						</h:selectOneMenu>
					</h:panelGrid>
					<h:commandButton value="Search" type="submit"
						action="#{ManagePrescriptionBean.listPrescription}" />
					<h:commandButton value="Reset" type="reset" />
				</h:panelGroup>
				<!-- end of coding -->
			</h:form>
			<br />
			<h2>Prescription</h2>
			<div style="text-align: center">
				<h:dataTable value="#{ManagePrescriptionBean.querySet}" var="q">
					<h:column>
						<f:facet name="header">
							<h:outputText value="ID" />
						</f:facet>
						<h:outputText value="#{q.prescriptionID}" />
					</h:column>
					<h:column>
						<f:facet name="header">
							<h:outputText value="Patient Citizen ID" />
						</f:facet>
						<h:outputText value="#{q.patientID}" />
					</h:column>
					<h:column>
						<f:facet name="header">
							<h:outputText value="Patient First Name" />
						</f:facet>
						<h:outputText value="#{q.patientFirstName}" />
					</h:column>
					<h:column>
						<f:facet name="header">
							<h:outputText value="Patient Last Name" />
						</f:facet>
						<h:outputText value="#{q.patientLastName}" />
					</h:column>
					<h:column>
						<f:facet name="header">
							<h:outputText value="Medicine" />
						</f:facet>
						<h:outputText value="#{q.rawStringList}" />
					</h:column>
					<h:column>
						<f:facet name="header">
							<h:outputText value="Doctor First Name" />
						</f:facet>
						<h:outputText value="#{q.doctorFirstName}" />
					</h:column>
					<h:column>
						<f:facet name="header">
							<h:outputText value="Doctor Last Name" />
						</f:facet>
						<h:outputText value="#{q.doctorLastName}" />
					</h:column>
					<h:column>
						<f:facet name="header">
							<h:outputText value="Status" />
						</f:facet>
						<h:outputText value="#{q.status}" />
					</h:column>
				</h:dataTable>
			</div>
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
						<li><a href="http://158.108.38.86:8080/DotC/Medicalrecord.jsf"
							class="social-search"></a></li>
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