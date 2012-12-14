<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<f:view>
<f:loadBundle basename="com.j3ltd.web.messages.ApplicationMessages" var="msg"/>

    <html lang="en">
        <head>
			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<title>Patient's Record</title>
			<link href="styles.css" rel="stylesheet" type="text/css">
		</head>
        <body>
        <div class="center">
		<h:panelGrid columns="2"  
		  styleClass="form" 
		  headerClass="tableHeader"
		  footerClass="tableFooter"
		  rowClasses="tableRowOdd, tableRowEven">
		  <f:facet name="footer">
		    <h:panelGroup>
		    <h:commandButton value="#{msg.submit}" 
		      action="#{registrationBean.register}" />
		    <h:commandButton value="#{msg.reset}" type="reset"/>
		    </h:panelGroup>
		  </f:facet>
			<h:outputFormat value="#{msg.registrationRecords}"></h:outputFormat>
				 <br/>
				 <br/> 
				  
				  <h:outputLabel for="citizenID" value="#{msg.registrationID}"/>
				  <h:panelGroup>
				  <h:inputText id="citizenID" value="#{registrationBean.person.id}"
				    maxlength="255" size="30"/><f:verbatim><br/></f:verbatim>
				  <h:outputText value=" "/><h:message for="citizenID" styleClass="formUserError"/>
				  </h:panelGroup>
				  
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
				  
				  <h:outputLabel for="doctorid" value="#{msg.registrationDoctorid}"/>
				  <h:panelGroup>
				  <h:inputText id="doctorid" value="#{registrationBean.person.doctorid}"
				  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
				  <h:outputText value=" "/><h:message for="doctorid" styleClass="formUserError"/>
				  </h:panelGroup>
				  
				  <h:outputLabel for="doctorfirstname" value="#{msg.registrationDoctorfirstname}"/>
				  <h:panelGroup>
				  <h:inputText id="doctorfirstname" value="#{registrationBean.person.doctorfirstname}"
				  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
				  <h:outputText value=" "/><h:message for="doctorfirstname" styleClass="formUserError"/>
				  </h:panelGroup> 
				  
				  <h:outputLabel for="doctorlastname" value="#{msg.registrationDoctorlastname}"/>
				  <h:panelGroup>
				  <h:inputText id="doctorlastname" value="#{registrationBean.person.doctorlastname}"
				  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
				  <h:outputText value=" "/><h:message for="doctorlastname" styleClass="formUserError"/>
				  </h:panelGroup>  
				  
				  <h:outputLabel for="cost" value="#{msg.registrationCost}"/>
				  <h:panelGroup>
				  <h:inputText id="cost" value="#{registrationBean.person.cost}"
				  maxlength="45" size="12"/><f:verbatim><br/></f:verbatim>
				  <h:outputText value=" "/><h:message for="cost" styleClass="formUserError"/>
				  </h:panelGroup>
		</h:panelGrid>
		</div>
        </body>
    </html>
</f:view>