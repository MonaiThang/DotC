package com.j3ltd.web;

import java.util.List;

import com.google.code.morphia.Datastore;
import com.google.code.morphia.Morphia;
import com.google.code.morphia.query.Query;
import com.j3ltd.server.entities.Record;
import com.mongodb.Mongo;

public class SearchRecord {
	Record record;
	List<Record> querySet;
	public Record getRecord() {	return record;	}
	public void setRecord(Record record) {	this.record = record;	}
	
	public String search() throws Exception{
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
		Query<Record> q = ds.createQuery(Record.class).field("PatientFirstName").equal(this.record.getPatientFirstName());
		querySet = q.asList();
		System.out.println("Query Result:");
		for(Record r : querySet){
			System.out.println(r.getPatientCitizenID()+" "+r.getPatientFirstName()+" "+r.getPatientLastName()+" "+r.getTimestamp());
		}
		return null;
	}
}