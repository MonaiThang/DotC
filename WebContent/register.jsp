<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page errorPage="errorpage.jsp" %>  
<f:view>  
<f:loadBundle basename="com.j3ltd.web.messages.ApplicationMessages" var="msg"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><h:outputText value="#{msg.pageTitle}"/></title>
<link href="styles.css" rel="stylesheet" type="text/css">
</head>
<body> 

<h:form id="registerForm">
<div class="pageTitle"><h:outputText value="#{msg.registration}"/></div>
<br/>
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
  
    <h:outputLabel for="gender" value="#{msg.registrationGender}"/>
  <h:panelGroup>
  <h:inputText id="gender" value="#{registrationBean.person.gender}"
    maxlength="255" size="30"/><f:verbatim><br/></f:verbatim>
  <h:outputText value=" "/><h:message for="gender" styleClass="formUserError"/>
  </h:panelGroup>
  
  <h:outputLabel for="age" value="#{msg.registrationAge}"/>
  <h:panelGroup>
  <h:inputText id="age" value="#{registrationBean.person.age}"
    maxlength="255" size="30"/><f:verbatim><br/></f:verbatim>
  <h:outputText value=" "/><h:message for="age" styleClass="formUserError"/>
  </h:panelGroup>
   
  <h:outputLabel for="maritalStatus" value="#{msg.registrationMaritalStatus}"/>
  <h:panelGroup>
  <h:inputText id="maritalStatus" value="#{registrationBean.person.maritalStatus}"
    maxlength="255" size="30"/><f:verbatim><br/></f:verbatim>
  <h:outputText value=" "/><h:message for="maritalStatus" styleClass="formUserError"/>
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
</body>
</html>
</f:view>