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
        	<h:dataTable value="#{SearchRecordBean.search.querySet}" var="q">
        		<h:column><f:facet name="header">Record ID</f:facet>#{q.recordID}</h:column>
        		<h:column><f:facet name="header">Patient's Citizen ID</f:facet>#{q.patientCitizenID}</h:column>
        		<h:column><f:facet name="header">Patient's First Name</f:facet>#{q.patientFirstName}</h:column>
        		<h:column><f:facet name="header">Patient's Last Name</f:facet>#{q.patientLastName}</h:column>
        		<h:column><f:facet name="header">Doctor's First Name</f:facet>#{q.doctorFirstName}</h:column>
        		<h:column><f:facet name="header">Doctor's Last Name</f:facet>#{q.doctorLastName}</h:column>
        	</h:dataTable>
        </body>
    </html>
</f:view>