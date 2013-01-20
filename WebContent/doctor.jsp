<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<f:view>
<f:loadBundle basename="com.j3ltd.web.messages.ApplicationMessages" var="msg"/>
<html>
<head>
<title>Meet the doctor.</title>
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
                <li><a href="localhost:8080/DotC/Pharmarcy.jsf" class="social-pharmacy"></a></li>
                <li><a href="localhost:8080/DotC/Medicalrecord.jsf" class="social-search"></a></li>
                </ul>
                
            </div>
            <!-- End Socialarea -->
            
            <!-- Start Logo area -->
            <div id="logo">
              <a href="https://plus.google.com/hangouts/_?gid=1073697113757" style="text-decoration:none;">
			  <img src="https://ssl.gstatic.com/s2/oz/images/stars/hangout/1/gplus-hangout-60x230-normal.png"
			    alt="Start a Hangout"
			    style="border:0;width:230px;height:60px;"/>
			</a>
            </div>
            <!-- End Logo area -->
        
        </div>
        <!-- End Social & Logo area -->

</div>
<div class="titlesnormal">
	<div id="main">
    <!-- Start H1 Title -->
    <H1>Patient's Record</H1>
	<h:form>
	
			<div class="center">
			
				<h:panelGrid columns="2" styleClass="form" headerClass="tableHeader"
					footerClass="tableFooter" rowClasses="tableRowOdd, tableRowEven">
					<f:facet name="footer">
						<h:panelGroup>
							<h:commandButton value="#{msg.submit}"
								action="#{ManageRecordBean.diagRecord}"/>
							<h:commandButton value="#{msg.reset}" type="reset"/>
						</h:panelGroup>
					</f:facet>

					<h:outputLabel for="recordID" value="#{msg.registrationID}"/>
					<h:panelGroup>
						<h:inputText id="recordID" value="#{ManageRecordBean.record.recordID}"
							maxlength="255" size="141"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="recordID" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="citizenID" value="#{msg.registrationCitizenID}"/>
					<h:panelGroup>
						<h:inputText id="citizenID" value="#{ManageRecordBean.record.patientCitizenID}"
							maxlength="255" size="141"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="citizenID" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="Medication" value="#{msg.registrationMedication}"/>
					<h:panelGroup>
						<h:inputText id="Medication" value="#{ManageRecordBean.record.medication}"
							maxlength="255" size="141"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="Medication" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="Diagnosis" value="#{msg.registrationDiagnosis}"/>
					<h:panelGroup>
						<h:inputText id="Diagnosis" value="#{ManageRecordBean.record.diagnosis}"
							maxlength="255" size="141"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value="" />
						<h:message for="Diagnosis" styleClass="formUserError"/>
					</h:panelGroup>
					
				</h:panelGrid>
			</div>
		</h:form>
    </div>
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
                    
                    	<!-- Start 4 column portfolio -->
                        <div class="element3 web">
                        
                        	<div class="portfoliowrap">
                                                
                                <div class="title">Dr.Napat Phetkuea<span class="titlearrow"></span></div>
                                <div class="portfolioimage">
                                	<a href="images/latest-projects/larger-images/1.jpg" 
                                		rel="prettyPhoto" 
                                		title="Dr.Napat Phetkuea">
                                	
                                	<img src="images/latest-projects/1.jpg" 
                                		alt="Coronary care unit.
                                		     Specialist:xxxxxxx xxxxxxx
                                		     xxxxxxxxxxxx
                                		     xxxxxxxxxxxxxxxx
                                		     xxxxxxxxxxxxxxxxxxx
                                		     xxxxxxxxxxxxxxxx
                                		     xxxxxxxxxxxxxxxxxxxxxxxxxx
                                		     Working hour:7:00-15:00"
                               			/>
                                	</a></div>
                                <div class="text">Coronary care unit.<span class="textarrow"></span></div>
                            
                            </div>
                        
                        </div>

                        <div class="element3 graphic">
                        
                        	<div class="portfoliowrap">
                                                
                                <div class="title">Dr. Pisacha Srinuan<span class="titlearrow"></span></div>
                                <div class="portfolioimage"><a href="images/latest-projects/larger-images/2.jpg" rel="prettyPhoto" title="DR.Pisacha Srinuan">
                                <img src="images/latest-projects/2.jpg" 
                                alt="Operating room. 				
                                Specialist:xxxxxxx xxxxxxx
                                		     xxxxxxxxxxxx
                                		     xxxxxxxxxxxxxxxx
                                		     xxxxxxxxxxxxxxxxxxx
                                		     xxxxxxxxxxxxxxxx
                                		     xxxxxxxxxxxxxxxxxxxxxxxxxx
                                		     Working hour:8:00-20:00" />
                                </a></div>
                                <div class="text">Operating room.<span class="textarrow"></span></div>
                            
                            </div>
                        
                        </div>

                        <div class="element3 logo">
                        
                        	<div class="portfoliowrap">
                                                
                                <div class="title">Dr. Chavit Denninnart<span class="titlearrow"></span></div>
                                <div class="portfolioimage">
                                <a href="images/latest-projects/larger-images/3.jpg" rel="prettyPhoto" title="DR.Chavit Denninnart">
                                <img src="images/latest-projects/3.jpg" alt="Psychiatric hospital.
                                Specialist:xxxxxxx xxxxxxx
                                		     xxxxxxxxxxxx
                                		     xxxxxxxxxxxxxxxx
                                		     xxxxxxxxxxxxxxxxxxx
                                		     xxxxxxxxxxxxxxxx
                                		     xxxxxxxxxxxxxxxxxxxxxxxxxx
                                		     Working hour:12:00-22:00" />
                                </a></div>
                                <div class="text">Psychiatric hospital.<span class="textarrow"></span></div>
                            
                            </div>
                        
                        </div>

                        <div class="element3 print">
                        
                        	<div class="portfoliowrap">
                                                
                                <div class="title">DR.Kriaivit Techawitayapakorn<span class="titlearrow"></span></div>
                                <div class="portfolioimage"><a href="images/latest-projects/larger-images/4.jpg" rel="prettyPhoto" title="DR.Kriaivit Techawitayapakorn"><img src="images/latest-projects/4.jpg" alt="Department of surgery." /></a></div>
                                <div class="text">Department of surgery.<span class="textarrow"></span></div>
                            
                            </div>
                        
                        </div>
                        
                        <div class="element3 web">
                        
                        	<div class="portfoliowrap">
                                                
                                <div class="title">DR.Kitipol Kanda<span class="titlearrow"></span></div>
                                <div class="portfolioimage"><a href="images/latest-projects/larger-images/5.jpg" rel="prettyPhoto" title="DR.Kitipol Kanda"><img src="images/latest-projects/5.jpg" alt="Intensive-care unit." /></a></div>
                                <div class="text">Intensive-care unit.<span class="textarrow"></span></div>
                            
                            </div>
                        
                        </div>

                        <div class="element3 web">
                        
                        	<div class="portfoliowrap">
                                                
                                <div class="title">DR.Prapon Trakietikul<span class="titlearrow"></span></div>
                                <div class="portfolioimage"><a href="images/latest-projects/larger-images/6.jpg" rel="prettyPhoto" title="DR.Prapon Trakietikul"><img src="images/latest-projects/6.jpg" alt="Emergency department." /></a></div>
                                <div class="text">Emergency department.<span class="textarrow"></span></div>
                            
                            </div>
                        
                        </div>

                        <div class="element3 graphic web">
                        
                        	<div class="portfoliowrap">
                                                
                                <div class="title">DR.Sittichai Seeta<span class="titlearrow"></span></div>
                                <div class="portfolioimage"><a href="images/latest-projects/larger-images/7.jpg" rel="prettyPhoto" title="DR.Sittichai Seeta"><img src="images/latest-projects/7.jpg" alt="Coronary care unit." /></a></div>
                                <div class="text">Coronary care unit.<span class="textarrow"></span></div>
                            
                            </div>
                        
                        </div>

                        <div class="element3 Web">
                        
                        	<div class="portfoliowrap">
                                                
                                <div class="title">DR.Nuttapol Kietkobchai<span class="titlearrow"></span></div>
                                <div class="portfolioimage"><a href="images/latest-projects/larger-images/8.jpg" rel="prettyPhoto" title="DR.Nuttapol Kietkobchai"><img src="images/latest-projects/8.jpg" alt="Physical therapy." /></a></div>
                                <div class="text">Physical therapy.<span class="textarrow"></span></div>
                            
                            </div>
                        
                        </div>
                        
                        <div class="element3 web">
                        
                        	<div class="portfoliowrap">
                                                
                                <div class="title">DR.Supasit Janedittakarn<span class="titlearrow"></span></div>
                                <div class="portfolioimage"><a href="images/latest-projects/larger-images/9.jpg" rel="prettyPhoto" title="DR.Supasit Janedittakarn"><img src="images/latest-projects/9.jpg" alt="Urgent care." /></a></div>
                                <div class="text">Urgent care.<span class="textarrow"></span></div>
                            
                            </div>
                        
                        </div>
                        <!-- End 4 column portfolio -->
                    
                    </div>
                
                </div>
            	<!-- End None Split Section -->

            </div>

            <span class="box-arrow"></span>
        
        </div>
        <!-- End Box -->
    
    </div>
    <!-- End Main Body Wrap -->

    <!-- Start Footer Bottom -->
    <div id="footerbottom">
    
    	<div class="footerwrap">
        
        	<!-- Start Copyright Div -->
            <div id="Copyright">&copy;DotC 2013.
            <!-- End Copyright Div -->

            <!-- Start Social area -->
            <div class="socialfooter">
                
                <ul>
                <li><a href="localhost:8080/DotC/welcome.jsf" class="social-welcome"></a></li>
                <li><a href="localhost:8080/DotC/register.jsf" class="social-register"></a></li>
                <li><a href="localhost:8080/DotC/record.jsf" class="social-record"></a></li>
                <li><a href="localhost:8080/DotC/Pharmarcy.jsf" class="social-pharmacy"></a></li>
                <li><a href="localhost:8080/DotC/Medicalrecord.jsf" class="social-search"></a></li>
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