package com.j3ltd.web;

import java.net.UnknownHostException;
import java.util.Date;

import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.jmkgreen.morphia.Datastore;
import com.github.jmkgreen.morphia.Morphia;
import com.github.jmkgreen.morphia.query.Query;
import com.j3ltd.server.entities.Person;
import com.j3ltd.server.entities.Prescription;
import com.mongodb.Mongo;

public class HangoutRequest extends HttpServlet{
	private static final long serialVersionUID = 1L;
	Prescription prescription;
	Person doctor;
	Person patient;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws UnknownHostException{
		request = (HttpServletRequest)FacesContext.getCurrentInstance().getExternalContext().getRequest();
		prescription.setPatientID(request.getParameter("PatientID"));
		prescription.setPatientFirstName(request.getParameter("PatientFirstName"));
		prescription.setPatientLastName(request.getParameter("PatientLastName"));
		prescription.setDoctorID(request.getParameter("DoctorID"));
		//Prepare Morphia Framework
		System.out.println("Setting up MongoDB...");
		Mongo mongo = new Mongo("localhost",27017);
		System.out.println("Setting up Morphia...");
		Morphia morphia = new Morphia();
		System.out.println("Mapping Entities...");
		morphia.mapPackage("com.j3ltd.server.entities");
		System.out.println("Create Datastore...");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		Query<Person> q = ds.createQuery(Person.class).field("DoctorID").equal(prescription.getPatientID());
		Person p = q.get();
		prescription.setDoctorFirstName(p.getFirstName());
		prescription.setDoctorLastName(p.getLastName());
       	insertPrescription();
       	System.out.println("Sent POST request to backBean\n");
	}
	public String insertPrescription() throws UnknownHostException{
		String toReturn = "failure";
		Date PrescribeDate = new Date();
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
		this.prescription.setPrescribeDate(PrescribeDate);
		this.prescription.setTimestamp(PrescribeDate);
		//Save the POJO
		System.out.println("Saving...");
		ds.save(this.prescription);
		return toReturn;
	}
}
