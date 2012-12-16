package com.j3ltd.web;

import java.util.Date;

import com.google.code.morphia.Datastore;
import com.google.code.morphia.Morphia;
import com.google.code.morphia.query.Query;
import com.j3ltd.server.entities.Record;
import com.mongodb.Mongo;

public class ManageRecord {
	Record record;
	
	public Record getRecord() {
		return record;
	}

	public void setRecord(Record record) {
		this.record = record;
	}

	public String diagRecord() throws Exception {
		Date EditDate = new Date();
		//Prepare Morphia Framework
		System.out.println("Setting up MongoDB...");
		Mongo mongo = new Mongo("localhost",27017);
		System.out.println("Setting up Morphia...");
		Morphia morphia = new Morphia();
		System.out.println("Mapping Entities...");
		morphia.mapPackage("com.j3ltd.server.entities");
		System.out.println("Create Datastore...");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		Query<Record> q = ds.createQuery(Record.class).field("PatientCitizenID").equal(this.record.getPatientCitizenID());
		//ops = ds.createUpdateOperations(Record.class).set("Medication", this.record.getMedication());
		System.out.println("Timestamping...");
		this.record.setDiagDate(EditDate);
		this.record.setTimestamp(EditDate);
		//Save the POJO
		System.out.println("Saving...");
		String toReturn = "failure";
		return toReturn;
	}
}
