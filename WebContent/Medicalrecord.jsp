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
		<title>Search your record.</title>
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
		<script type="text/javascript" src="js/style-table.js"></script>
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
                <li><a href="localhost:8080/DotC/welcome.jsf" class="social-welcome"></a></li>
                <li><a href="localhost:8080/DotC/register.jsf" class="social-register"></a></li>
                <li><a href="localhost:8080/DotC/record.jsf" class="social-record"></a></li>
                <li><a href="localhost:8080/DotC/doctor.jsf" class="social-doctor"></a></li>
                <li><a href="localhost:8080/DotC/Pharmarcy.jsf" class="social-pharmacy"></a></li>
                </ul>
                
            </div>
      	</div>
      	
</div>
<!-- End Socialarea -->
<div class="titlesnormal">
	<div id="main">
        	<h:form id="SearchRecordForm">
        	<h1>Search your record</h1> 
        		<h:panelGroup>
	        		<h:panelGrid columns="10" styleClass="form" headerClass="tableHeader" footerClass="tableFooter" rowClasses="tableRowOdd, tableRowEven">
		        		<h:outputLabel for="PatientCitizenID" value="Patient's Citizen ID"/>
	        			<h:inputText id="PatientCitizenID" maxlength="32" value="#{SearchRecordBean.record.patientCitizenID}"/>
	        			
		        		<h:outputLabel for="PatientFirstname" value="Patient's First Name"/>
	        			<h:inputText id="PatientFirstName" maxlength="50" value="#{SearchRecordBean.record.patientFirstName}"/>
		        		
		        		<h:outputLabel for="PatientLastname" value="Patient's Last Name"/>
	        			<h:inputText id="PatientLastName" maxlength="50" value="#{SearchRecordBean.record.patientLastName}"/>
	    	    		
	    	    		<h:outputLabel for="DoctorFirstname" value="Doctor's First Name"/>
	        			<h:inputText id="DoctorFirstName" maxlength="50" value="#{SearchRecordBean.record.doctorFirstName}"/>
	        			
	        			<h:outputLabel for="DoctorLastname" value="Doctor's Last Name"/>
	        			<h:inputText id="DoctorLastName" maxlength="50" value="#{SearchRecordBean.record.doctorLastName}"/>
	        		</h:panelGrid>
        		</h:panelGroup>
        		<h:panelGroup>
	        		<h:commandButton value="Search" type="submit" action="#{SearchRecordBean.search}" />
	        		<h:commandButton value="Reset" type="reset"/>
        		</h:panelGroup>
        	</h:form>

			<br/>
        	<h:dataTable value="#{SearchRecordBean.querySet}" var="q">
        	
        		<h:column>
        			<f:facet name="header"></f:facet>
        			<h:outputText value="#{q.recordID}"/>
        		</h:column>
        		<h:column>
        			<f:facet name="header"></f:facet>
        			<h:outputText value="#{q.patientCitizenID}"/>
        		</h:column>
        		<h:column>
        			<f:facet name="header"></f:facet>
        			<h:outputText value="#{q.patientFirstName}"/>
        		</h:column>
        		<h:column>
        			<f:facet name="header"></f:facet>
        			<h:outputText value="#{q.patientLastName}"/>
        		</h:column>
        		<h:column>
        			<f:facet name="header"></f:facet>
        			<h:outputText value="#{q.doctorFirstName}"/>
        		</h:column>
        		<h:column>
        			<f:facet name="header"></f:facet>
        			<h:outputText value="#{q.doctorLastName}"/>
        		</h:column>
        	</h:dataTable>
 
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
                <li><a href="localhost:8080/DotC/welcome.jsf" class="social-welcome"></a></li>
                <li><a href="localhost:8080/DotC/register.jsf" class="social-register"></a></li>
                <li><a href="localhost:8080/DotC/record.jsf" class="social-record"></a></li>
                <li><a href="localhost:8080/DotC/doctor.jsf" class="social-doctor"></a></li>
                <li><a href="localhost:8080/DotC/Pharmarcy.jsf" class="social-pharmacy"></a></li>
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