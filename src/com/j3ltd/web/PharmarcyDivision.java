package com.j3ltd.web;

import java.util.Date;

import com.github.jmkgreen.morphia.Datastore;
import com.github.jmkgreen.morphia.Morphia;
import com.github.jmkgreen.morphia.query.Query;
import com.github.jmkgreen.morphia.query.UpdateOperations;
import com.j3ltd.server.entities.Prescription;
import com.mongodb.Mongo;

public class PharmarcyDivision {
	Prescription prescription;
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