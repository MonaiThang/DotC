package com.j3ltd.web;

import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.jmkgreen.morphia.Datastore;
import com.github.jmkgreen.morphia.Morphia;
import com.github.jmkgreen.morphia.query.Query;
import com.j3ltd.server.entities.Medicine;
import com.j3ltd.server.entities.Person;
import com.j3ltd.server.entities.Prescription;
import com.mongodb.Mongo;

public class HangoutRequest extends HttpServlet{
	private static final long serialVersionUID = 1L;
	List<Medicine> tempRxList;
	Medicine Rx;
	Prescription prescription;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException,UnknownHostException{
		tempRxList = new ArrayList<Medicine>();
		prescription = new Prescription();
		prescription.setPatientID(request.getParameter("PatientID").toString());
		prescription.setDoctorID(request.getParameter("DoctorID").toString());
		String PostRx = request.getParameter("RxList").toString();
		String[] rawRxList = PostRx.split(";");
		int i = 1;
		for(String rawRx : rawRxList){
			Rx = new Medicine();
			String[] RxAttribute = rawRx.split(",");
			Rx.setId(String.valueOf(i));
			Rx.setType(RxAttribute[0].trim());
			Rx.setName(RxAttribute[1].trim());
			Rx.setDose(RxAttribute[2].trim());
			Rx.setAmount(Integer.parseInt(RxAttribute[3].trim()));
			Rx.setUsageDirection(RxAttribute[4].trim());
			Rx.setRawString(notePrescription(Rx));
			tempRxList.add(Rx);
			i++;
		}
		prescription.setMedicineList(tempRxList);
		//Prepare Morphia Framework
		System.out.println("Setting up MongoDB...");
		Mongo mongo = new Mongo("localhost",27017);
		System.out.println("Setting up Morphia...");
		Morphia morphia = new Morphia();
		System.out.println("Mapping Entities...");
		morphia.mapPackage("com.j3ltd.server.entities");
		System.out.println("Create Datastore...");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		Query<Person> qp = ds.createQuery(Person.class).field("citizenid").equal(prescription.getPatientID());
		Person patient = qp.get();
		prescription.setPatientFirstName(patient.getFirstName());
		prescription.setPatientLastName(patient.getLastName());
		Query<Person> qd = ds.createQuery(Person.class).field("citizenid").equal(prescription.getDoctorID());
		Person doctor = qd.get();
		prescription.setDoctorFirstName(doctor.getFirstName());
		prescription.setDoctorLastName(doctor.getLastName());
		if(ds.createQuery(Prescription.class).countAll()==0)
			prescription.setPrescriptionID("1");
		else {
			Query<Prescription> q = ds.createQuery(Prescription.class).order("-PrescriptionID");
			Prescription temp = q.get();
			long l = Long.parseLong(temp.getPrescriptionID())+1;
			prescription.setPrescriptionID(String.valueOf(l));
		}
		System.out.println("Sent POST request to backBean");
		insertPrescription();
		System.out.println("Finish inserting to MongoDB");
	}
	public String notePrescription(Medicine rx){
		return rx.getName()+" "+rx.getType()+" "+String.valueOf(rx.getAmount())+"x"+rx.getDose()+" : "+rx.getUsageDirection();
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
		prescription.setPrescribeDate(PrescribeDate);
		prescription.setTimestamp(PrescribeDate);
		prescription.setStatus("Pending");
		//Save the POJO
		System.out.println("Saving...");
		ds.save(prescription);
		return toReturn;
	}
}
