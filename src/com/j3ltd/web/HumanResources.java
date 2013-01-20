package com.j3ltd.web;

import java.util.ArrayList;
import java.util.Locale;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import com.github.jmkgreen.morphia.Datastore;
import com.github.jmkgreen.morphia.Morphia;
import com.j3ltd.server.entities.Doctor;
import com.j3ltd.web.messages.MessageFactory;
import com.mongodb.Mongo;

public class HumanResources {
	Doctor doctor;
	private String passwordConfirm;
	private String emailConfirm;

	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}

	public String getPasswordConfirm() {
		return passwordConfirm;
	}

	public void setPasswordConfirm(String passwordConfirm) {
		this.passwordConfirm = passwordConfirm;
	}

	public String getEmailConfirm() {
		return emailConfirm;
	}

	public void setEmailConfirm(String emailConfirm) {
		this.emailConfirm = emailConfirm;
	}

	public String addDoctor() throws Exception {
		String[] temp = this.doctor.getRawSpecialization().split(",");
		ArrayList<String> s = new ArrayList<String>();
		Mongo mongo = new Mongo("localhost",27017);
		Morphia morphia = new Morphia();
		morphia.mapPackage("com.j3ltd.server.entities");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		for(String sp : temp){
			s.add(sp);
		}
		this.doctor.setSpecialization(s);
		ds.save(this.doctor);
		String toReturn = "failure";

		if (validateData()) {
			try {
				// save locale information, in case the user chose a language on the welcome page
				Locale locale = FacesContext.getCurrentInstance().getViewRoot().getLocale();
				doctor.setLocaleCountry(locale.getCountry());
				doctor.setLocaleLanguage(locale.getLanguage());
				toReturn = "success";
			} 
			catch (Exception exist) {
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
		if (!emailConfirm.equals(doctor.getEmail())) {
			ctx.addMessage("registerForm:emailConfirm", 
					new FacesMessage(FacesMessage.SEVERITY_ERROR, 
							msg.getMessage("errorEmailConfirm"), null));
			toReturn = false;
		}
		// check passwordConfirm is same as password
		if (!passwordConfirm.equals(doctor.getPassword())) {
			ctx.addMessage("registerForm:passwordConfirm", 
					new FacesMessage(FacesMessage.SEVERITY_ERROR, 
							msg.getMessage("errorPasswordConfirm"), null));
			toReturn = false;
		}
		return toReturn;
	}
}