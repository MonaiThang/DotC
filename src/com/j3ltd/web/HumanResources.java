package com.j3ltd.web;

import com.github.jmkgreen.morphia.Datastore;
import com.github.jmkgreen.morphia.Morphia;
import com.j3ltd.server.entities.Doctor;
import com.mongodb.Mongo;

public class HumanResources {
	Doctor doctor;
	public String addDoctor() throws Exception {
		String result = "Fail";
		Mongo mongo = new Mongo("localhost",27017);
		Morphia morphia = new Morphia();
		morphia.mapPackage("com.j3ltd.server.entities");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		ds.save(this.doctor);
		result = "Add New Doctor Completed.";
		return result;
	}
}