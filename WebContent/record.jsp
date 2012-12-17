<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page errorPage="errorpage.jsp" %>  
<%try{%>
<f:view>  
<f:loadBundle basename="com.j3ltd.web.messages.ApplicationMessages" var="msg"/>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Medical Records.</title>
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
      	</div>
      	
</div>
<!-- End Socialarea -->
<div class="titlesnormal">
	<div id="main">
		<h:form>
			<div class="center">
				<h:panelGrid columns="2" styleClass="form" headerClass="tableHeader"
					footerClass="tableFooter" rowClasses="tableRowOdd, tableRowEven">
					<f:facet name="footer">
						<h:panelGroup>
							<h:commandButton value="#{msg.submit}"
								action="#{registrationBean.insertRecord}"/>
							<h:commandButton value="#{msg.reset}" type="reset"/>
						</h:panelGroup>
					</f:facet>
					
					
					<!-- <h:outputFormat value="#{msg.registrationRecords}"></h:outputFormat> -->
					<h1>Medical Record</h1>
		  			<h:outputLabel value=" "/>
					<h:outputLabel for="recordID" value="#{msg.registrationID}"/>
					<h:panelGroup>
						<h:inputText id="recordID" value="#{registrationBean.record.recordID}"
							maxlength="255" size="30"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="recordID" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="citizenID" value="#{msg.registrationCitizenID}"/>
					<h:panelGroup>
						<h:inputText id="citizenID" value="#{registrationBean.record.patientCitizenID}"
							maxlength="255" size="30"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="citizenID" styleClass="formUserError"/>
					</h:panelGroup>
						
					<h:outputLabel for="disease" value="#{msg.registrationDisease}"/>
					<h:panelGroup>
						<h:inputText id="disease" value="#{registrationBean.record.disease}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="disease" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="systolic" value="#{msg.registrationSystolic}"/>
					<h:panelGroup>
						<h:inputText id="systolic" value="#{registrationBean.record.systolic}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="systolic" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="diastolic" value="#{msg.registrationDiastolic}"/>
					<h:panelGroup>
						<h:inputText id="diastolic" value="#{registrationBean.record.diastolic}"
						maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=""/>
						<h:message for="diastolic" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="temp" value="#{msg.registrationTemp}"/>
					<h:panelGroup>
						<h:inputText id="temp" value="#{registrationBean.record.temp}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="temp" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="pulse" value="#{msg.registrationPulse}"/>
					<h:panelGroup>
						<h:inputText id="pulse" value="#{registrationBean.record.pulse}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="pulse" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="breathrate" value="#{msg.registrationBreathrate}"/>
					<h:panelGroup>
						<h:inputText id="breathrate" value="#{registrationBean.record.breathrate}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="breathrate" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="o2sat" value="#{msg.registrationO2sat}"/>
					<h:panelGroup>
						<h:inputText id="o2sat" value="#{registrationBean.record.o2sat}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="o2sat" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="weight" value="#{msg.registrationWeight}"/>
					<h:panelGroup>
						<h:inputText id="weight" value="#{registrationBean.record.weight}"
							maxlength="45" size="12" />
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="weight" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="height" value="#{msg.registrationHeight}"/>
					<h:panelGroup>
						<h:inputText id="height" value="#{registrationBean.record.height}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="height" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="lmp" value="#{msg.registrationLmp}"/>
					<h:panelGroup>
						<h:inputText id="lmp" value="#{registrationBean.record.lmp}"
							maxlength="45" size="12">
							<f:convertDateTime pattern="dd/MM/yyyy"/>
						</h:inputText>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="lmp" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="symptom" value="#{msg.registrationSymptom}"/>
					<h:panelGroup>
						<h:inputText id="symptom" value="#{registrationBean.record.symptom}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="symptom" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="doctorid" value="#{msg.registrationDoctorid}"/>
					<h:panelGroup>
						<h:inputText id="doctorid" value="#{registrationBean.record.doctorID}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="doctorid" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="doctorfirstname" value="#{msg.registrationDoctorfirstname}"/>
					<h:panelGroup>
						<h:inputText id="doctorfirstname" value="#{registrationBean.record.doctorFirstName}"
							maxlength="45" size="12" />
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="doctorfirstname" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="doctorlastname" value="#{msg.registrationDoctorlastname}"/>
					<h:panelGroup>
						<h:inputText id="doctorlastname" value="#{registrationBean.record.doctorLastName}"
							maxlength="45" size="12" />
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="doctorlastname" styleClass="formUserError"/>
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