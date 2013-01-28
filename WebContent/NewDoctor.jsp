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
<title>New Doctor - Doctor on the Cloud</title>
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
					<li><a href="http://158.108.38.86:8080/DotC/record.jsf"
						class="social-record"></a></li>
					<li><a href="http://158.108.38.86:8080/DotC/doctor.jsf"
						class="social-doctor"></a></li>
					<li><a href="http://158.108.38.86:8080/DotC/Pharmacy.jsf"
						class="social-pharmacy"></a></li>
					<li><a href="http://158.108.38.86:8080/DotC/Medicalrecord.jsf"
						class="social-search"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- End Socialarea -->
	<div class="titlesnormal">
		<div id="main">
			<h:form id="registerForm">
				<!-- <div class="pageTitle"><h:outputText value="#{msg.registration}"/></div> -->
				<h1>Registration Page</h1>
				<h:outputFormat value="#{msg.registrationBoxTitle}">
					<f:param value="*" />
				</h:outputFormat>
				<br />
				<div class="center">
					<h:panelGrid columns="2" styleClass="form"
						headerClass="tableHeader" footerClass="tableFooter"
						rowClasses="tableRowOdd, tableRowEven">
						<f:facet name="footer">
							<h:panelGroup>
								<h:commandButton value="#{msg.submit}"
									action="#{HRBean.addDoctor}" />
								<h:commandButton value="#{msg.reset}" type="reset" />
							</h:panelGroup>
						</f:facet>
						<!--  <h:outputFormat value="#{msg.registrationPersonalInfo}"></h:outputFormat> -->
						<br />
						<h1>Personal Information.</h1>
						<h:outputLabel value=" " />
						<h:outputLabel for="citizenID"
							value="#{msg.registrationCitizenID}" />
						<h:panelGroup>
							<h:inputText id="citizenID" value="#{HRBean.doctor.citizenid}"
								maxlength="255" size="30" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="citizenID" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="firstName" value="#{msg.registrationName}" />
						<h:panelGroup>
							<h:inputText id="firstName" value="#{HRBean.doctor.firstName}"
								maxlength="255" size="30" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="firstName" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="lastName" value="#{msg.registrationSurname}" />
						<h:panelGroup>
							<h:inputText id="lastName" value="#{HRBean.doctor.lastName}"
								maxlength="255" size="30" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="lastName" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="gender" value="#{msg.registrationGender}" />
						<h:panelGroup>
							<h:selectOneMenu id="gender" value="#{HRBean.doctor.gender}">
								<f:selectItem itemValue="Male" itemLabel="Male" />
								<f:selectItem itemValue="Female" itemLabel="Female" />
							</h:selectOneMenu>
							<h:outputText value=" " />
							<h:message for="gender" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="dateOfBirth"
							value="#{msg.registrationDateOfBirth}" />
						<h:panelGroup>
							<h:inputText id="dateOfBirth"
								value="#{HRBean.doctor.dateOfBirth}">
								<f:convertDateTime pattern="dd/MM/yyyy" />
							</h:inputText>
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="dateOfBirth" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="age" value="#{msg.registrationAge}" />
						<h:panelGroup>
							<h:inputText id="age" value="#{HRBean.doctor.age}"
								maxlength="255" size="20" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="age" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="iddateissued"
							value="#{msg.registrationIdDateIssued}" />
						<h:panelGroup>
							<h:inputText id="iddateissued"
								value="#{HRBean.doctor.iddateissued}">
								<f:convertDateTime pattern="dd/MM/yyyy" />
							</h:inputText>
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="iddateissued" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="iddateexpired"
							value="#{msg.registrationIdDateExpired}" />
						<h:panelGroup>
							<h:inputText id="iddateexpired"
								value="#{HRBean.doctor.iddateexpired}">
								<f:convertDateTime pattern="dd/MM/yyyy" />
							</h:inputText>
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="iddateexpired" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="email" value="*#{msg.registrationEmail}" />
						<h:panelGroup>
							<h:inputText id="email" value="#{HRBean.doctor.email}"
								maxlength="255" size="30" required="true">
								<f:validator validatorId="EmailValidator" />
							</h:inputText>
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="email" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="emailConfirm"
							value="*#{msg.registrationEmailConfirm}" />
						<h:panelGroup>
							<h:inputText id="emailConfirm"
								value="#{registrationBean.emailConfirm}" maxlength="255"
								size="30" required="true" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="emailConfirm" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="password" value="*#{msg.registrationPassword}" />
						<h:panelGroup>
							<h:inputSecret id="password" value="#{HRBean.doctor.password}"
								maxlength="64" size="30" required="true" redisplay="true">
								<f:validateLength minimum="6" />
							</h:inputSecret>
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="password" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="passwordConfirm"
							value="*#{msg.registrationPasswordConfirm}" />
						<h:panelGroup>
							<h:inputSecret id="passwordConfirm"
								value="#{registrationBean.passwordConfirm}" maxlength="64"
								size="30" required="true" redisplay="true" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="passwordConfirm" styleClass="formUserError" />
						</h:panelGroup>
						<!-- <h:outputFormat value="#{msg.registrationAddressAndWork}"></h:outputFormat> -->
						<br />
						<h1>Address and work.</h1>
						<h:outputLabel value=" " />
						<h:outputLabel for="cline1"
							value="#{msg.registrationCurrentAddress1}" />
						<h:panelGroup>
							<h:inputText id="cline1"
								value="#{HRBean.doctor.currentaddress.line1}" maxlength="255"
								size="50" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="cline1" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="cline2"
							value="#{msg.registrationCurrentAddress2}" />
						<h:panelGroup>
							<h:inputText id="cline2"
								value="#{HRBean.doctor.currentaddress.line2}" maxlength="255"
								size="50" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="cline2" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="cline3"
							value="#{msg.registrationCurrentAddress3}" />
						<h:panelGroup>
							<h:inputText id="cline3"
								value="#{HRBean.doctor.currentaddress.line3}" maxlength="255"
								size="50" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="cline3" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="cline4"
							value="#{msg.registrationCurrentAddress4}" />
						<h:panelGroup>
							<h:inputText id="cline4"
								value="#{HRBean.doctor.currentaddress.line4}" maxlength="255"
								size="50" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="cline4" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="cpostcode" value="#{msg.registrationPostcode}" />
						<h:panelGroup>
							<h:inputText id="cpostcode"
								value="#{HRBean.doctor.currentaddress.postcode}" maxlength="50"
								size="50" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="cpostcode" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="ccountry" value="#{msg.registrationCountry}" />
						<h:panelGroup>
							<h:inputText id="ccountry"
								value="#{HRBean.doctor.currentaddress.country}" maxlength="150"
								size="50" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="ccountry" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="aline1"
							value="#{msg.registrationActualAddress1}" />
						<h:panelGroup>
							<h:inputText id="aline1"
								value="#{HRBean.doctor.actualaddress.line1}" maxlength="255"
								size="50" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="aline1" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="aline2"
							value="#{msg.registrationActualAddress2}" />
						<h:panelGroup>
							<h:inputText id="aline2"
								value="#{HRBean.doctor.actualaddress.line2}" maxlength="255"
								size="50" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="aline2" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="aline3"
							value="#{msg.registrationActualAddress3}" />
						<h:panelGroup>
							<h:inputText id="aline3"
								value="#{HRBean.doctor.actualaddress.line3}" maxlength="255"
								size="50" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="aline3" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="aline4"
							value="#{msg.registrationActualAddress4}" />
						<h:panelGroup>
							<h:inputText id="aline4"
								value="#{HRBean.doctor.actualaddress.line4}" maxlength="255"
								size="50" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="aline4" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="apostcode" value="#{msg.registrationPostcode}" />
						<h:panelGroup>
							<h:inputText id="apostcode"
								value="#{HRBean.doctor.actualaddress.postcode}" maxlength="50"
								size="50" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="apostcode" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="acountry" value="#{msg.registrationCountry}" />
						<h:panelGroup>
							<h:inputText id="acountry"
								value="#{HRBean.doctor.actualaddress.country}" maxlength="150"
								size="50" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="acountry" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="phone" value="#{msg.registrationPhone}" />
						<h:panelGroup>
							<h:inputText id="phone" value="#{HRBean.doctor.phone}"
								maxlength="45" size="20" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="phone" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="mobile" value="#{msg.registrationMobile}" />
						<h:panelGroup>
							<h:inputText id="mobile" value="#{HRBean.doctor.mobile}"
								maxlength="45" size="20" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="mobile" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="emergenncycall"
							value="#{msg.registrationEmergencyCall}" />
						<h:panelGroup>
							<h:inputText id="emergenncycall"
								value="#{HRBean.doctor.emergenncycall}" maxlength="45" size="20" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="emergenncycall" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="career" value="#{msg.registrationCareer}" />
						<h:panelGroup>
							<h:inputText id="career" value="#{HRBean.doctor.career}"
								maxlength="45" size="20" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="career" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="bloodgroup"
							value="#{msg.registrationBloodGroup}" />
						<h:panelGroup>
							<h:inputText id="bloodgroup" value="#{HRBean.doctor.bloodgroup}"
								maxlength="45" size="20" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="bloodgroup" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="nationality"
							value="#{msg.registrationNationality}" />
						<h:panelGroup>
							<h:inputText id="nationality"
								value="#{HRBean.doctor.nationality}" maxlength="45" size="20" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="nationality" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="religion" value="#{msg.registrationReligion}" />
						<h:panelGroup>
							<h:inputText id="religion" value="#{HRBean.doctor.religion}"
								maxlength="45" size="20" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="religion" styleClass="formUserError" />
						</h:panelGroup>
						<h:outputLabel for="specialization"
							value="#{msg.registrationSpecialization}" />
						<h:panelGroup>
							<h:inputText id="specialization"
								value="#{HRBean.doctor.rawSpecialization}" maxlength="256"
								size="50" />
							<f:verbatim>
								<br />
							</f:verbatim>
							<h:outputText value=" " />
							<h:message for="specialization" styleClass="formUserError" />
						</h:panelGroup>
					</h:panelGrid>
				</div>
			</h:form>
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
						<li><a href="http://158.108.38.86:8080/DotC/record.jsf"
							class="social-record"></a></li>
						<li><a href="http://158.108.38.86:8080/DotC/doctor.jsf"
							class="social-doctor"></a></li>
						<li><a href="http://158.108.38.86:8080/DotC/Pharmacy.jsf"
							class="social-pharmacy"></a></li>
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
		var currentDiv=$("#simpleslider div.current");
		var nextDiv= currentDiv.next ();
		if (nextDiv.length ==0)
			nextDiv=$("#simpleslider div:first");
		currentDiv.removeClass('current').addClass('previous').fadeOut('2000');
		nextDiv.fadeIn('3000').addClass('current',function() {
			currentDiv.fadeOut('2000', function () {currentDiv.removeClass('previous');});
		});
	}
	//// End Simple Sliders //// 
</script>
</body>
	</html>
</f:view>
<%}catch(Exception ex){
	ex.printStackTrace();
}%>