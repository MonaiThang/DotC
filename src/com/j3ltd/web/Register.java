package com.j3ltd.web;

import java.util.Date;
import java.util.Locale;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import com.github.jmkgreen.morphia.Datastore;
import com.github.jmkgreen.morphia.Morphia;
import com.github.jmkgreen.morphia.query.Query;
import com.j3ltd.server.entities.Doctor;
import com.j3ltd.server.entities.Person;
import com.j3ltd.server.entities.Record;
import com.j3ltd.web.messages.MessageFactory;
import com.mongodb.Mongo;

public class Register {

	Person person;
	Record record;
	private String passwordConfirm;
	private String emailConfirm;

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public Record getRecord() {
		return record;
	}

	public void setRecord(Record record) {
		this.record = record;
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

	public String register() throws Exception {
		// Prepare Morphia Framework
		Mongo mongo = new Mongo("localhost", 27017);
		Morphia morphia = new Morphia();
		morphia.mapPackage("com.j3ltd.server.entities");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		// Save the POJO
		System.out.println("Saving...");
		ds.save(this.person);
		String toReturn = "failure";
		if (validateData()) {
			try {
				// save locale information, in case the user chose a language on
				// the welcome page
				Locale locale = FacesContext.getCurrentInstance().getViewRoot()
						.getLocale();
				person.setLocaleCountry(locale.getCountry());
				person.setLocaleLanguage(locale.getLanguage());

				// Context context = new InitialContext();
				// EntityFacade entities = (EntityFacade)
				// context.lookup("EntityFacadeBean/remote");
				// person = entities.createPerson(person);
				toReturn = "success";
			}
			// catch (PersonEntityExistsException exist) {
			catch (Exception exist) {
				MessageFactory msg = new MessageFactory();
				FacesContext ctx = FacesContext.getCurrentInstance();

				ctx.addMessage(
						"registerForm:email",
						new FacesMessage(FacesMessage.SEVERITY_ERROR, msg
								.getMessage("errorEmailExists"), null));
			}
		}
		return toReturn;
	}

	public String insertRecord() throws Exception {
		Date RegisDate = new Date();
		// Prepare Morphia Framework
		Mongo mongo = new Mongo("localhost", 27017);
		Morphia morphia = new Morphia();
		morphia.mapPackage("com.j3ltd.server.entities");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		Query<Person> qp = ds.createQuery(Person.class).field("citizenid")
				.equal(this.record.getPatientCitizenID());
		Person patient = qp.get();
		this.record.setPatientFirstName(patient.getFirstName());
		this.record.setPatientLastName(patient.getLastName());
		Query<Doctor> qd = ds.createQuery(Doctor.class).field("citizenid")
				.equal(this.record.getDoctorID());
		Doctor doctor = qd.get();
		this.record.setDoctorFirstName(doctor.getFirstName());
		this.record.setDoctorLastName(doctor.getLastName());
		this.record.setRegisDate(RegisDate);
		this.record.setTimestamp(RegisDate);
		this.record.setBmi(this.record.getWeight(), this.record.getHeight());
		if (ds.createQuery(Record.class).countAll() == 0)
			this.record.setRecordID("1");
		else {
			Query<Record> q = ds.createQuery(Record.class).order("-RecordID");
			Record temp = q.get();
			long l = Long.parseLong(temp.getRecordID()) + 1;
			this.record.setRecordID(String.valueOf(l));
		}
		// Save the POJO
		System.out.println("Saving...");
		ds.save(this.record);

		String toReturn = "failure";

		return toReturn;
	}

	private boolean validateData() {
		boolean toReturn = true;
		MessageFactory msg = new MessageFactory();
		FacesContext ctx = FacesContext.getCurrentInstance();

		// check emailConfirm is same as email
		if (!emailConfirm.equals(person.getEmail())) {
			ctx.addMessage(
					"registerForm:emailConfirm",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, msg
							.getMessage("errorEmailConfirm"), null));
			toReturn = false;
		}
		// check passwordConfirm is same as password
		if (!passwordConfirm.equals(person.getPassword())) {
			ctx.addMessage(
					"registerForm:passwordConfirm",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, msg
							.getMessage("errorPasswordConfirm"), null));
			toReturn = false;
		}
		return toReturn;
	}
}