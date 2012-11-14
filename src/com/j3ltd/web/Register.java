package com.j3ltd.web;



import com.j3ltd.server.sessionremote.*;
import com.j3ltd.server.entities.*;
import com.j3ltd.server.exceptions.*;
import com.j3ltd.web.messages.*;
import java.util.*;

import javax.faces.context.*;
import javax.faces.application.*;
import javax.naming.Context;
import javax.naming.InitialContext;




public class Register {

	Person person;
	private String passwordConfirm;
	private String emailConfirm;

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}
	
	public String register() throws Exception {
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
