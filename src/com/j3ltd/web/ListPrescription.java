package com.j3ltd.web;

import java.util.List;

import com.github.jmkgreen.morphia.Datastore;
import com.github.jmkgreen.morphia.Morphia;
import com.github.jmkgreen.morphia.query.Query;
import com.j3ltd.server.entities.Prescription;
import com.mongodb.Mongo;

public class ListPrescription {
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
		System.out.println("Setting up MongoDB...");
		Mongo mongo = new Mongo("localhost",27017);
		System.out.println("Setting up Morphia...");
		Morphia morphia = new Morphia();
		System.out.println("Mapping Entities...");
		morphia.mapPackage("com.j3ltd.server.entities");
		System.out.println("Create Datastore...");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		//		Query<Record> q = ds.find(Record.class);
		//		q.and(
		//				q.criteria("PatientCitizenID").equal(this.record.getPatientCitizenID()),
		//				q.criteria("RecordID").equal(this.record.getRecordID())
		//		);
		Query<Prescription> q = ds.createQuery(Prescription.class);
		querySet = q.asList();
		System.out.println("Query Result:");
		for(Prescription p : querySet){
			System.out.println(p.getPatientID()+" "+p.getPatientFirstName()+" "+p.getPatientLastName()+" "+p.getDoctorFirstName()+" "+p.getDoctorLastName());
		}
		String toReturn = "failure";
		return toReturn;
	}
}
