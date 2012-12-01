package com.j3ltd.web;

import com.j3ltd.server.sessionremote.*;
import com.j3ltd.server.entities.*;
import com.j3ltd.server.exceptions.*;
import com.j3ltd.web.messages.*;

import com.mongodb.Mongo;
import com.google.code.morphia.Datastore;
import com.google.code.morphia.Morphia;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.faces.context.*;
import javax.faces.application.*;
import javax.naming.Context;
import javax.naming.InitialContext;

public class Register {

	Person person;
	private String passwordConfirm;
	private String emailConfirm;

	public Person getPerson() {	return person;	}
	public void setPerson(Person person) {	this.person = person;	}
	
	public String register() throws Exception {
		//Set DateTime Format
		DateFormat RegisDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date RegisDate = new Date();
		//ExternalContext ec = FacesContext.getCurrentInstance().getExternalContext();
		//Map<String, String[]> paramValues = ec.getRequestParameterValuesMap();
		//Prepare Morphia Framework
		System.out.println("Setting up MongoDB...");
		Mongo mongo = new Mongo("localhost",27017);
		System.out.println("Setting up Morphia...");
		Morphia morphia = new Morphia();
		System.out.println("Mapping Entities...");
		morphia.mapPackage("com.j3ltd.server.entities");
		System.out.println("Create Datastore...");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		System.out.println("Timestamping...");
		this.person.setTime(RegisDateFormat.format(RegisDate));
		//Save the POJO
		System.out.println("Saving...");
		ds.save(this.person);
		
		String toReturn = "failure";
		   
		if (validateData()) {
			try {
				// save locale information, in case the user chose a language on the welcome page
				Locale locale = FacesContext.getCurrentInstance().getViewRoot().getLocale();
				person.setLocaleCountry(locale.getCountry());
				person.setLocaleLanguage(locale.getLanguage());
				
				Context context = new InitialContext();
				EntityFacade entities = (EntityFacade) context.lookup("EntityFacadeBean/remote");
				person = entities.createPerson(person);
				toReturn = "success";
			} 
			catch (PersonEntityExistsException exist) {
				MessageFactory msg = new MessageFactory();
				FacesContext ctx = FacesContext.getCurrentInstance();
				
				ctx.addMessage("registerForm:email", 
						new FacesMessage(FacesMessage.SEVERITY_ERROR, 
								msg.getMessage("errorEmailExists"), null));
			}					
		}
		return toReturn;
	}
	
	private boolean validateData() {
		boolean toReturn = true;
		MessageFactory msg = new MessageFactory();
		FacesContext ctx = FacesContext.getCurrentInstance();
		
		// check emailConfirm is same as email
		if (!emailConfirm.equals(person.getEmail())) {
			ctx.addMessage("registerForm:emailConfirm", 
					new FacesMessage(FacesMessage.SEVERITY_ERROR, 
							msg.getMessage("errorEmailConfirm"), null));
			toReturn = false;
		}
		// check passwordConfirm is same as password
		if (!passwordConfirm.equals(person.getPassword())) {
			ctx.addMessage("registerForm:passwordConfirm", 
					new FacesMessage(FacesMessage.SEVERITY_ERROR, 
							msg.getMessage("errorPasswordConfirm"), null));
			toReturn = false;
		}
		return toReturn;
	}
	
	public String getEmailConfirm() {
		return emailConfirm;
	}

	public void setEmailConfirm(String emailConfirm) {
		this.emailConfirm = emailConfirm;
	}

	public String getPasswordConfirm() {
		return passwordConfirm;
	}

	public void setPasswordConfirm(String passwordConfirm) {
		this.passwordConfirm = passwordConfirm;
	}
}