<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page errorPage="errorpage.jsp" %>  
<%try{%>
<f:view>  
<f:loadBundle basename="com.j3ltd.web.messages.ApplicationMessages" var="msg"/>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><h:outputText value="#{msg.pageTitle}"/></title>


<meta name="description" content="Response Premium Html Responsive Template - Portfolio Section" />
<meta name="keywords" content="Responsive Html, Responsive Template, Response, Filtered Portfolio" />
<meta name="apple-mobile-web-app-capable" content="yes" /> 
<meta name="apple-mobile-web-app-status-bar-style" content="grey" /> 
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;" /> 
<link rel="shortcut icon" href="http://www.derby-web-design-agency.co.uk/themes/response/images/favicon.png" /> 
<link rel="bookmark icon" href="http://www.derby-web-design-agency.co.uk/themes/response/images/favicon.png" /> 
<link href="css/main.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
<script src="js/twitter.js"></script> 
<script src="js/jquery.isotope.min.js"></script>      
<script src="js/custom.js"></script>   
<script>
$(document).ready(function(){

    var $container = $('#portfolio-container')
    // initialize Isotope
        $container.isotope({
            // options...
            resizable: false, // disable normal resizing
            layoutMode : 'fitRows',
			itemSelector : '.element3',
            animationEngine : 'best-available',

            // set columnWidth to a percentage of container width
            masonry: { columnWidth: $container.width() / 5 }
        });

        // update columnWidth on window resize
        $(window).smartresize(function(){
            $container.isotope({
            // update columnWidth to a percentage of container width
            masonry: { columnWidth: $container.width() / 5 }
            });
        });
        $container.imagesLoaded( function(){

                $container.isotope({
            // options...
                });
        });

        $('#portfolio-filter a').click(function(){
            var selector = $(this).attr('data-filter');
            $container.isotope({ filter: selector });
            return false;
        });
});
</script>
<script type="text/javascript" charset="utf-8">
  $(document).ready(function(){
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
                <li><a href="localhost:8080/DotC/welcome.jsf" class="social-google"></a></li>
                <li><a href="localhost:8080/DotC/doctor.jsf" class="social-facebook"></a></li>
                <li><a href="localhost:8080/DotC/Pharmarcy.jsf" class="social-twitter"></a></li>
                <li><a href="localhost:8080/DotC/Medicalrecord.jsf" class="social-linkedin"></a></li>
                </ul>
                
            </div>
            <!-- End Socialarea -->
            
            <!-- Start Logo area -->
           
            <!-- End Logo area -->
        
        </div>
        <!-- End Social & Logo area -->

</div>

<div id="main">
    <!-- Start H1 Title -->
    <div class="titlesnormal">
    
    	<h2>Registeration Module</h2>
    	<h1>Please fill in the registration form.</h1>
    	
        
        <span></span>
    
    </div>
    <!-- End H1 Title -->
    <!-- Start Main Body Wrap -->
    <div id="main-wrap">
        
        
        <!-- Start Box -->
        <div class="boxes-full">
        
        	<div class="boxes-padding fullpadding">
            	
                <!-- Start None Split Section -->
            	<div class="splitnone">
                
                	<div id="portfolio-container">
                    
                    	<!-- Start pharmarcy page here -->
						<h:form id="registerForm">
						<div class="center">
						<h:panelGrid columns="2"  
						  styleClass="form" 
						  headerClass="tableHeader"
						  footerClass="tableFooter"
						  rowClasses="tableRowOdd, tableRowEven">
						  <f:facet name="header">
							<h:outputFormat value="#{msg.registrationBoxTitle}">
							  <f:param value="*"/>
							</h:outputFormat>
						  </f:facet>
						  
						  <f:facet name="footer">
							<h:panelGroup>
							<h:commandButton value="#{msg.submit}" 
							  action="#{registrationBean.register}" />
							<h:commandButton value="#{msg.reset}" type="reset"/>
							</h:panelGroup>
						  </f:facet>
						   
						 <h:outputFormat value="#{msg.registrationPersonalInfo}"></h:outputFormat>
						 <br/>
						 <br/>
						 
						  <h:outputLabel for="firstName" value="#{msg.registrationName}"/>
						  <h:panelGroup>
						  <h:inputText id="firstName" value="#{registrationBean.person.firstName}"
							maxlength="255" size="30"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="firstName" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="lastName" value="#{msg.registrationSurname}"/>
						  <h:panelGroup>
						  <h:inputText id="lastName" value="#{registrationBean.person.lastName}"
							maxlength="255" size="30"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="lastName" styleClass="formUserError"/>
						  </h:panelGroup>
						   
						  <h:outputLabel for="dateOfBirth" value="#{msg.registrationDateOfBirth}"/>
						  <h:panelGroup>
						  <h:inputText id="dateOfBirth" value="#{registrationBean.person.dateOfBirth}">
							<f:convertDateTime pattern="dd/MM/yyyy"/>
						  </h:inputText>  <f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="dateOfBirth" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="age" value="#{msg.registrationAge}"/>
						  <h:panelGroup>
						  <h:inputText id="age" value="#{registrationBean.person.age}"
							maxlength="255" size="30"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="age" styleClass="formUserError"/>
						  </h:panelGroup>
						   
						  
						  
						  <h:outputLabel for="iddateissued" value="#{msg.registrationIdDateIssued}"/>
						  <h:panelGroup>
						  <h:inputText id="iddateissued" value="#{registrationBean.person.iddateissued}">
							<f:convertDateTime pattern="dd/MM/yyyy"/>
						  </h:inputText>  <f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="iddateissued" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="iddateexpired" value="#{msg.registrationIdDateExpired}"/>
						  <h:panelGroup>
						  <h:inputText id="iddateexpired" value="#{registrationBean.person.iddateexpired}">
							<f:convertDateTime pattern="dd/MM/yyyy"/>
						  </h:inputText>  <f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="iddateexpired" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="email" value="*#{msg.registrationEmail}"/>
						  <h:panelGroup>
						  <h:inputText id="email" value="#{registrationBean.person.email}" 
							maxlength="255" size="50" 
							required="true">
							  <f:validator validatorId="EmailValidator"/>
						  </h:inputText><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="email" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="emailConfirm" value="*#{msg.registrationEmailConfirm}"/>
						  <h:panelGroup>
						  <h:inputText id="emailConfirm" value="#{registrationBean.emailConfirm}" 
							maxlength="255" size="50" 
							required="true"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="emailConfirm" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="password" value="*#{msg.registrationPassword}"/>
						  <h:panelGroup>
						  <h:inputSecret id="password" value="#{registrationBean.person.password}" 
							maxlength="64" size="20" 
							required="true" redisplay="true">
							  <f:validateLength minimum="6"/>
						  </h:inputSecret><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="password" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="passwordConfirm" value="*#{msg.registrationPasswordConfirm}"/>
						  <h:panelGroup>
						  <h:inputSecret id="passwordConfirm" value="#{registrationBean.passwordConfirm}" 
							maxlength="64" size="20" 
							required="true" redisplay="true"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="passwordConfirm" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						 <h:outputFormat value="#{msg.registrationAddressAndWork}"></h:outputFormat>
						 <br/>
						 <br/>
						  
						  <h:outputLabel for="cline1" value="#{msg.registrationCurrentAddress1}"/>
						  <h:panelGroup>
						  <h:inputText id="cline1" value="#{registrationBean.person.currentaddress.line1}"
							maxlength="255" size="50"/>  <f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="cline1" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="cline2" value="#{msg.registrationCurrentAddress2}"/>
						  <h:panelGroup>
						  <h:inputText id="cline2" value="#{registrationBean.person.currentaddress.line2}"
							maxlength="255" size="50"/>  <f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="cline2" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="cline3" value="#{msg.registrationCurrentAddress3}"/>
						  <h:panelGroup>
						  <h:inputText id="cline3" value="#{registrationBean.person.currentaddress.line3}"
							maxlength="255" size="50"/>  <f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="cline3" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="cline4" value="#{msg.registrationCurrentAddress4}"/>
						  <h:panelGroup>
						  <h:inputText id="cline4" value="#{registrationBean.person.currentaddress.line4}"
							maxlength="255" size="50"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="cline4" styleClass="formUserError"/>
						  </h:panelGroup>
						  
							<h:outputLabel for="cpostcode" value="#{msg.registrationPostcode}"/>
						  <h:panelGroup>
						  <h:inputText id="cpostcode" value="#{registrationBean.person.currentaddress.postcode}"
							maxlength="50" size="20"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="cpostcode" styleClass="formUserError"/>  
						  </h:panelGroup>
						  
						  <h:outputLabel for="ccountry" value="#{msg.registrationCountry}"/>
						  <h:panelGroup>
						  <h:inputText id="ccountry" value="#{registrationBean.person.currentaddress.country}"
							maxlength="150" size="40"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="ccountry" styleClass="formUserError"/>
						  </h:panelGroup>
						  
							<h:outputLabel for="aline1" value="#{msg.registrationActualAddress1}"/>
						  <h:panelGroup>
						  <h:inputText id="aline1" value="#{registrationBean.person.actualaddress.line1}"
							maxlength="255" size="50"/>  <f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="aline1" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="aline2" value="#{msg.registrationActualAddress2}"/>
						  <h:panelGroup>
						  <h:inputText id="aline2" value="#{registrationBean.person.actualaddress.line2}"
							maxlength="255" size="50"/>  <f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="aline2" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="aline3" value="#{msg.registrationActualAddress3}"/>
						  <h:panelGroup>
						  <h:inputText id="aline3" value="#{registrationBean.person.actualaddress.line3}"
							maxlength="255" size="50"/>  <f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="aline3" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="aline4" value="#{msg.registrationActualAddress4}"/>
						  <h:panelGroup>
						  <h:inputText id="aline4" value="#{registrationBean.person.actualaddress.line4}"
							maxlength="255" size="50"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="aline4" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="apostcode" value="#{msg.registrationPostcode}"/>
						  <h:panelGroup>
						  <h:inputText id="apostcode" value="#{registrationBean.person.actualaddress.postcode}"
							maxlength="50" size="20"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="apostcode" styleClass="formUserError"/>  
						  </h:panelGroup>
						  
						  <h:outputLabel for="acountry" value="#{msg.registrationCountry}"/>
						  <h:panelGroup>
						  <h:inputText id="acountry" value="#{registrationBean.person.actualaddress.country}"
							maxlength="150" size="40"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="acountry" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  
						  
						  <h:outputLabel for="phone" value="#{msg.registrationPhone}"/>
						  <h:panelGroup>
						  <h:inputText id="phone" value="#{registrationBean.person.phone}"
							maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="phone" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="mobile" value="#{msg.registrationMobile}"/>
						  <h:panelGroup>
						  <h:inputText id="mobile" value="#{registrationBean.person.mobile}"
							maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="mobile" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="emergenncycall" value="#{msg.registrationEmergencyCall}"/>
						  <h:panelGroup>
						  <h:inputText id="emergenncycall" value="#{registrationBean.person.emergenncycall}"
							maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="emergenncycall" styleClass="formUserError"/>
						  </h:panelGroup>
						  
							<h:outputLabel for="career" value="#{msg.registrationCareer}"/>
						  <h:panelGroup>
						  <h:inputText id="career" value="#{registrationBean.person.career}"
							maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="career" styleClass="formUserError"/>
						  </h:panelGroup>
							
							<h:outputLabel for="bloodgroup" value="#{msg.registrationBloodGroup}"/>
						  <h:panelGroup>
						  <h:inputText id="bloodgroup" value="#{registrationBean.person.bloodgroup}"
							maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="bloodgroup" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="nationality" value="#{msg.registrationNationality}"/>
						  <h:panelGroup>
						  <h:inputText id="nationality" value="#{registrationBean.person.nationality}"
							maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="nationality" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="religion" value="#{msg.registrationReligion}"/>
						  <h:panelGroup>
						  <h:inputText id="religion" value="#{registrationBean.person.religion}"
							maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="religion" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  
						 <h:outputFormat value="#{msg.registrationRecords}"></h:outputFormat>
						 <br/>
						 <br/> 
						  
						  <h:outputLabel for="disease" value="#{msg.registrationDisease}"/>
						  <h:panelGroup>
						  <h:inputText id="disease" value="#{registrationBean.person.disease}"
							maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="disease" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="bp" value="#{msg.registrationBp}"/>
						  <h:panelGroup>
						  <h:inputText id="bp" value="#{registrationBean.person.bp}"
						  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="bp" styleClass="formUserError"/>
						  </h:panelGroup> 

						  <h:outputLabel for="temp" value="#{msg.registrationTemp}"/>
						  <h:panelGroup>
						  <h:inputText id="temp" value="#{registrationBean.person.temp}"
						  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="temp" styleClass="formUserError"/>
						  </h:panelGroup>

						  <h:outputLabel for="pulse" value="#{msg.registrationPulse}"/>
						  <h:panelGroup>
						  <h:inputText id="pulse" value="#{registrationBean.person.pulse}"
						  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="pulse" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="breathrate" value="#{msg.registrationBreathrate}"/>
						  <h:panelGroup>
						  <h:inputText id="breathrate" value="#{registrationBean.person.breathrate}"
						  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="breathrate" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="o2sat" value="#{msg.registrationO2sat}"/>
						  <h:panelGroup>
						  <h:inputText id="o2sat" value="#{registrationBean.person.breathrate}"
						  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="o2sat" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="weight" value="#{msg.registrationWeight}"/>
						  <h:panelGroup>
						  <h:inputText id="weight" value="#{registrationBean.person.weight}"
						  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="weight" styleClass="formUserError"/>
						  </h:panelGroup>  
						  
						  <h:outputLabel for="height" value="#{msg.registrationHeight}"/>
						  <h:panelGroup>
						  <h:inputText id="height" value="#{registrationBean.person.height}"
						  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="height" styleClass="formUserError"/>
						  </h:panelGroup>  
						  
						  <h:outputLabel for="bmi" value="#{msg.registrationBmi}"/>
						  <h:panelGroup>
						  <h:inputText id="bmi" value="#{registrationBean.person.bmi}"
						  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="bmi" styleClass="formUserError"/>
						  </h:panelGroup>
						  
						  <h:outputLabel for="lmp" value="#{msg.registrationImp}"/>
						  <h:panelGroup>
						  <h:inputText id="lmp" value="#{registrationBean.person.lmp}"
						  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="lmp" styleClass="formUserError"/>
						  </h:panelGroup>  

						  <h:outputLabel for="symptom" value="#{msg.registrationSymptom}"/>
						  <h:panelGroup>
						  <h:inputText id="symptom" value="#{registrationBean.person.symptom}"
						  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="symptom" styleClass="formUserError"/>
						  </h:panelGroup> 
						  
						  <h:outputLabel for="doctor" value="#{msg.registrationDoctor}"/>
						  <h:panelGroup>
						  <h:inputText id="doctor" value="#{registrationBean.person.doctor}"
						  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="doctor" styleClass="formUserError"/>
						  </h:panelGroup> 

						  <h:outputLabel for="time" value="#{msg.registrationTime}"/>
						  <h:panelGroup>
						  <h:inputText id="time" value="#{registrationBean.person.time}"
						  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="time" styleClass="formUserError"/>
						  </h:panelGroup> 
						  
						  <h:outputLabel for="cost" value="#{msg.registrationCost}"/>
						  <h:panelGroup>
						  <h:inputText id="cost" value="#{registrationBean.person.cost}"
						  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
						  <h:outputText value=" "/><h:message for="cost" styleClass="formUserError"/>
						  </h:panelGroup> 
						  
						</h:panelGrid>
						</div>
						</h:form>
						<!-- End pharmarcy page here -->
                    
                    </div>
                
                </div>
            	<!-- End None Split Section -->

            </div>

            <span class="box-arrow"></span>
        
        </div>
        <!-- End Box -->
    
    </div>
    <!-- End Main Body Wrap -->

</div>

    <!-- Start Footer Bottom -->
    <div id="footerbottom">
    
    	<div class="footerwrap">
        
        	<!-- Start Copyright Div -->
            <div id="Copyright">&copy;DotC 2012.
            <!-- End Copyright Div -->

            <!-- Start Social area -->
            <div class="socialfooter">
                
                <ul>
                <li><a href="localhost:8080/DotC/welcome.jsf" class="social-google"></a></li>
                <li><a href="localhost:8080/DotC/doctor.jsf" class="social-facebook"></a></li>
                <li><a href="localhost:8080/DotC/Pharmarcy.jsf" class="social-twitter"></a></li>
                <li><a href="localhost:8080/DotC/Medicalrecord.jsf" class="social-linkedin"></a></li>
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