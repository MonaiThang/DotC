package com.j3ltd.web;

import java.util.Date;

import com.github.jmkgreen.morphia.Datastore;
import com.github.jmkgreen.morphia.Morphia;
import com.github.jmkgreen.morphia.query.Query;
import com.github.jmkgreen.morphia.query.UpdateOperations;
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
		Query<Record> q = ds.find(Record.class);
		q.and(
				q.criteria("PatientCitizenID").equal(this.record.getPatientCitizenID()),
				q.criteria("RecordID").equal(this.record.getRecordID())
		);
		UpdateOperations<Record> ops = ds.createUpdateOperations(Record.class).set("Medication", this.record.getMedication()).set("Diagnosis",this.record.getDiagnosis()).set("DiagDate",EditDate).set("timestamp",EditDate);
		//Save the POJO
		System.out.println("Saving...");
		ds.updateFirst(q, ops);
		String toReturn = "failure";
		return toReturn;
	}
}
