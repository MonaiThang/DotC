<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<f:view>
    <html lang="en">
        <head>
            <title>Medical Records</title>
        </head>
        <body>
        	<h:form id="SearchRecordForm">
        		<h:panelGrid columns="3" styleClass="form" headerClass="tableHeader" footerClass="tableFooter" rowClasses="tableRowOdd, tableRowEven">
	        		<h:outputLabel for="PatientCitizenID" value="Patient's Citizen ID"/>
        			<h:inputText id="PatientCitizenID" maxlength="32" value="#{MedicalRecordBean.Record.PatientCitizenID}"/>
        			<h:message for="error" style="color:red" />
        			
	        		<h:outputLabel for="PatientFirstname" value="Patient's First Name"/>
        			<h:inputText id="PatientFirstName" maxlength="50" value="#{MedicalRecordBean.Record.PatientFirstName}"/>
        			<h:message for="error" style="color:red" />
	        		
	        		<h:outputLabel for="PatientLastname" value="Patient's Last Name"/>
        			<h:inputText id="PatientLastName" maxlength="50" value="#{MedicalRecordBean.Record.PatientLastName}"/>
        			<h:message for="error" style="color:red" />
    	    		
    	    		<h:outputLabel for="DoctorFirstname" value="Doctor's First Name"/>
        			<h:inputText id="DoctorFirstName" maxlength="50" value="#{MedicalRecordBean.Record.DoctorFirstName}"/>
        			<h:message for="error" style="color:red" />
        			
        			<h:outputLabel for="DoctorLastname" value="Doctor's Last Name"/>
        			<h:inputText id="DoctorLastName" maxlength="50" value="#{MedicalRecordBean.Record.DoctorLastName}"/>
        			<h:message for="error" style="color:red" />
        		</h:panelGrid>
        		<h:panelGroup>
	        		<h:commandButton value="Search" type="submit" action="#{SearchRecordBean.search}" />
	        		<h:commandButton value="Reset" type="reset"/>
        		</h:panelGroup>
        	</h:form>
        </body>
    </html>
</f:view>