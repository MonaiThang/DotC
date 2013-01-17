package com.j3ltd.web;

import java.util.Date;
import java.util.List;

import com.github.jmkgreen.morphia.Datastore;
import com.github.jmkgreen.morphia.Morphia;
import com.github.jmkgreen.morphia.query.Query;
import com.github.jmkgreen.morphia.query.UpdateOperations;
import com.j3ltd.server.entities.Prescription;
import com.mongodb.Mongo;

public class ManagePrescription {
	Prescription prescription;
	private List<Prescription> querySet;

	public Prescription getPrescription() {
		return prescription;
	}

	public void setPrescription(Prescription prescription) {
		this.prescription = prescription;
	}

	public List<Prescription> getQuerySet() {
		return querySet;
	}

	public void setQuerySet(List<Prescription> querySet) {
		this.querySet = querySet;
	}

	public String listPrescription() throws Exception {
		//Prepare Morphia Framework
		Mongo mongo = new Mongo("localhost",27017);
		Morphia morphia = new Morphia();
		morphia.mapPackage("com.j3ltd.server.entities");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		// Remove null value
		if(this.prescription.getPrescribeDate()==null)
			this.prescription.setPrescribeDate(new Date());
		if(this.prescription.getTimestamp()==null)
			this.prescription.setTimestamp(new Date());
		Query<Prescription> q = ds.createQuery(Prescription.class);
		q.or(
			q.criteria("PrescriptionID").equal(this.prescription.getPrescriptionID()),
			q.criteria("PatientID").equal(this.prescription.getPatientID()),
			q.criteria("PatientFirstName").equal(this.prescription.getPatientFirstName()),
			q.criteria("PatientLastName").equal(this.prescription.getPatientLastName()),
			q.criteria("DoctorID").equal(this.prescription.getDoctorID()),
			q.criteria("DoctorFirstName").equal(this.prescription.getDoctorFirstName()),
			q.criteria("DoctorLastName").equal(this.prescription.getDoctorLastName()),
			q.criteria("PrescribeDate").greaterThanOrEq(this.prescription.getPrescribeDate()),
			q.criteria("timestamp").greaterThanOrEq(this.prescription.getTimestamp()),
			q.criteria("Status").equal(this.prescription.getStatus())
		);
		querySet = q.asList();
		System.out.println("Query Result:");
		for(Prescription p : querySet){
			System.out.println(p.getPrescriptionID()+" "+p.getPatientID()+" "+p.getPatientFirstName()+" "+p.getPatientLastName()+" "+p.getRawStringList()+" "+p.getDoctorFirstName()+" "+p.getDoctorLastName()+" "+p.getStatus());
		}
		String toReturn = "failure";
		return toReturn;
	}

	public String changePrescriptionStatus() throws Exception {
		String result = "Fail";
		Date EditDate = new Date();
		System.out.println("Setting up MongoDB...");
		Mongo mongo = new Mongo("localhost",27017);
		System.out.println("Setting up Morphia...");
		Morphia morphia = new Morphia();
		System.out.println("Mapping Entities...");
		morphia.mapPackage("com.j3ltd.server.entities");
		System.out.println("Create Datastore...");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		Query<Prescription> q = ds.createQuery(Prescription.class).field("PrescriptionID").equal(this.prescription.getPrescriptionID());
		UpdateOperations<Prescription> ops = ds.createUpdateOperations(Prescription.class).set("Status", this.prescription.getStatus()).set("timestamp",EditDate);
		ds.findAndModify(q, ops);
		result = "Changing Status Completed.";
		return result;
	}
}
