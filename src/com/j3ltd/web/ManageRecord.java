package com.j3ltd.web;

import java.util.Date;
import java.util.List;

import com.github.jmkgreen.morphia.Datastore;
import com.github.jmkgreen.morphia.Morphia;
import com.github.jmkgreen.morphia.query.Query;
import com.github.jmkgreen.morphia.query.UpdateOperations;
import com.j3ltd.server.entities.Record;
import com.mongodb.Mongo;

public class ManageRecord {
	Record record;
	private List<Record> querySet;
	
	public Record getRecord() {
		return record;
	}

	public void setRecord(Record record) {
		this.record = record;
	}
	
	public List<Record> getQuerySet() {
		return querySet;
	}

	public void setQuerySet(List<Record> querySet) {
		this.querySet = querySet;
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
		//		Query<Record> q = ds.find(Record.class);
		//		q.and(
		//				q.criteria("PatientCitizenID").equal(this.record.getPatientCitizenID()),
		//				q.criteria("RecordID").equal(this.record.getRecordID())
		//		);
		Query<Record> q = ds.createQuery(Record.class).field("PatientCitizenID").equal(this.record.getPatientCitizenID()).order("-RegisDate").limit(1);
		UpdateOperations<Record> ops = ds.createUpdateOperations(Record.class).set("Medication", this.record.getMedication()).set("Diagnosis",this.record.getDiagnosis()).set("DiagDate",EditDate).set("timestamp",EditDate);
		//Save the POJO
		System.out.println("Saving...");
		//ds.updateFirst(q, ops);
		ds.findAndModify(q, ops);
		String toReturn = "failure";
		return toReturn;
	}
	
	public String searchRecord() throws Exception{
		//Prepare Morphia Framework
		System.out.println("Setting up MongoDB...");
		Mongo mongo = new Mongo("localhost",27017);
		System.out.println("Setting up Morphia...");
		Morphia morphia = new Morphia();
		System.out.println("Mapping Entities...");
		morphia.mapPackage("com.j3ltd.server.entities");
		System.out.println("Create Datastore...");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		//Create query
		Query<Record> q = ds.createQuery(Record.class);
		//Create criteria
		q.or(
			q.criteria("PatientCitizenID").equal(this.record.getPatientCitizenID()),
			q.criteria("PatientFirstName").equal(this.record.getPatientFirstName()),
			q.criteria("PatientLastName").equal(this.record.getPatientLastName()),
			q.criteria("DoctorFirstName").equal(this.record.getDoctorFirstName()),
			q.criteria("DoctorLastName").equal(this.record.getDoctorLastName())
		);
		querySet = q.asList();
		System.out.println("Query Result:");
		for(Record r : querySet){
			System.out.println(r.getPatientCitizenID()+" "+r.getPatientFirstName()+" "+r.getPatientLastName()+" "+r.getDoctorFirstName()+" "+r.getDoctorLastName());
		}
		return null;
	}
}
