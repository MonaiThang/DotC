package com.j3ltd.web;

import com.google.code.morphia.Datastore;
import com.google.code.morphia.Morphia;
import com.google.code.morphia.query.Query;
import com.j3ltd.server.entities.Record;
import com.mongodb.Mongo;

public class SearchRecord {
	Record record;
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
		Query q = ds.createQuery(Record.class).field("PatientFirstName").equal("Monai");
		//record = (Record) q.get();
//		for (Record record : q)
//			  print(r);
		//List<Record> r = q.asList();
		//Save the POJO
		return null;
	}
}
