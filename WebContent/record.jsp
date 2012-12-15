<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<h:outputFormat value="#{msg.registrationRecords}"></h:outputFormat>
					<br/>
					<br/>
					<h:outputLabel for="citizenID" value="#{msg.registrationID}"/>
					<h:panelGroup>
						<h:inputText id="citizenID" value="#{registrationBean.record.recordID}"
							maxlength="255" size="30"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="citizenID" styleClass="formUserError"/>
					</h:panelGroup>
						
					<h:outputLabel for="disease" value="#{msg.registrationDisease}"/>
					<h:panelGroup>
						<h:inputText id="disease" value="#{registrationBean.record.disease}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="disease" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="systolic" value="#{msg.registrationSystolic}"/>
					<h:panelGroup>
						<h:inputText id="systolic" value="#{registrationBean.record.systolic}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="systolic" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="diastolic" value="#{msg.registrationDiastolic}"/>
					<h:panelGroup>
						<h:inputText id="diastolic" value="#{registrationBean.record.diastolic}"
						maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" "/>
						<h:message for="diastolic" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="temp" value="#{msg.registrationTemp}"/>
					<h:panelGroup>
						<h:inputText id="temp" value="#{registrationBean.record.temp}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="temp" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="pulse" value="#{msg.registrationPulse}"/>
					<h:panelGroup>
						<h:inputText id="pulse" value="#{registrationBean.record.pulse}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="pulse" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="breathrate" value="#{msg.registrationBreathrate}"/>
					<h:panelGroup>
						<h:inputText id="breathrate" value="#{registrationBean.record.breathrate}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="breathrate" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="o2sat" value="#{msg.registrationO2sat}"/>
					<h:panelGroup>
						<h:inputText id="o2sat" value="#{registrationBean.record.o2sat}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="o2sat" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="weight" value="#{msg.registrationWeight}"/>
					<h:panelGroup>
						<h:inputText id="weight" value="#{registrationBean.record.weight}"
							maxlength="45" size="12" />
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="weight" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="height" value="#{msg.registrationHeight}"/>
					<h:panelGroup>
						<h:inputText id="height" value="#{registrationBean.record.height}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="height" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="lmp" value="#{msg.registrationLmp}"/>
					<h:panelGroup>
						<h:inputText id="lmp" value="#{registrationBean.record.lmp}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="lmp" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="symptom" value="#{msg.registrationSymptom}"/>
					<h:panelGroup>
						<h:inputText id="symptom" value="#{registrationBean.record.symptom}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="symptom" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="doctorid" value="#{msg.registrationDoctorid}"/>
					<h:panelGroup>
						<h:inputText id="doctorid" value="#{registrationBean.record.doctorID}"
							maxlength="45" size="12"/>
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="doctorid" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="doctorfirstname" value="#{msg.registrationDoctorfirstname}"/>
					<h:panelGroup>
						<h:inputText id="doctorfirstname" value="#{registrationBean.record.doctorFirstName}"
							maxlength="45" size="12" />
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="doctorfirstname" styleClass="formUserError"/>
					</h:panelGroup>
					
					<h:outputLabel for="doctorlastname" value="#{msg.registrationDoctorlastname}"/>
					<h:panelGroup>
						<h:inputText id="doctorlastname" value="#{registrationBean.record.doctorLastName}"
							maxlength="45" size="12" />
						<f:verbatim><br/></f:verbatim>
						<h:outputText value=" " />
						<h:message for="doctorlastname" styleClass="formUserError"/>
					</h:panelGroup>
				</h:panelGrid>
			</div>
		</h:form>
	</body>
</html>
</f:view>