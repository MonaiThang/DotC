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
import com.github.jmkgreen.morphia.query.UpdateOperations;
import com.j3ltd.server.entities.Doctor;
import com.j3ltd.server.entities.Medicine;
import com.j3ltd.server.entities.Person;
import com.j3ltd.server.entities.Prescription;
import com.j3ltd.server.entities.Record;
import com.mongodb.Mongo;

public class HangoutRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Medicine> tempRxList;
	Medicine Rx;
	Prescription prescription;
	Record record;
	String temp, tempP;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, UnknownHostException {
		tempRxList = new ArrayList<Medicine>();
		Date EditDate = new Date();
		ArrayList<String> tempPrescriptionID;
		// Prepare Morphia Framework
		Mongo mongo = new Mongo("localhost", 27017);
		Morphia morphia = new Morphia();
		morphia.mapPackage("com.j3ltd.server.entities");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		Query<Record> qr = ds.createQuery(Record.class).field("RecordID")
				.equal(request.getParameter("RecordID").toString());
		record = qr.get();
		prescription = new Prescription();
		// prescription.setPatientID(request.getParameter("PatientID").toString());
		prescription.setDoctorID(request.getParameter("DoctorID").toString());
		String PostRx = request.getParameter("RxList").toString();
		String[] rawRxList = PostRx.split(";");
		int i = 1;
		temp = "";
		for (String rawRx : rawRxList) {
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
			if (i == 1)
				temp += Rx.getRawString();
			else
				temp += "\n" + Rx.getRawString();
			i++;
		}
		prescription.setMedicineList(tempRxList);
		prescription.setRawStringList(temp);
		Query<Person> qp = ds.createQuery(Person.class).field("citizenid")
				.equal(record.getPatientCitizenID());
		Person patient = qp.get();
		prescription.setPatientID(patient.getCitizenid());
		prescription.setPatientFirstName(patient.getFirstName());
		prescription.setPatientLastName(patient.getLastName());
		Query<Doctor> qd = ds.createQuery(Doctor.class).field("citizenid")
				.equal(prescription.getDoctorID());
		Doctor doctor = qd.get();
		prescription.setDoctorFirstName(doctor.getFirstName());
		prescription.setDoctorLastName(doctor.getLastName());
		// Generating Prescription ID
		if (ds.createQuery(Prescription.class).countAll() == 0)
			prescription.setPrescriptionID("1");
		else {
			Query<Prescription> q = ds.createQuery(Prescription.class).order(
					"-PrescriptionID");
			Prescription temp = q.get();
			long l = Long.parseLong(temp.getPrescriptionID()) + 1;
			prescription.setPrescriptionID(String.valueOf(l));
		}
		// Generating Prescription ID List to Record
		tempP = "";
		if (record.getPrescriptionID() == null) {
			tempPrescriptionID = new ArrayList<String>();
			tempP = prescription.getPrescriptionID().trim();
		} else {
			tempPrescriptionID = record.getPrescriptionID();
			tempP = record.getRawPrescriptionIDList().concat(",")
					.concat(prescription.getPrescriptionID()).trim();
		}
		tempPrescriptionID.add(prescription.getPrescriptionID());
		UpdateOperations<Record> ops = ds.createUpdateOperations(Record.class)
				.set("PrescriptionID", tempPrescriptionID)
				.set("rawPrescriptionIDList", tempP).set("DiagDate", EditDate)
				.set("timestamp", EditDate);
		ds.findAndModify(qr, ops);
		System.out.println("Sent POST request to backBean");
		insertPrescription();
		System.out.println("Finish inserting to MongoDB");
	}

	public String notePrescription(Medicine rx) {
		return rx.getName() + " " + rx.getType() + " "
				+ String.valueOf(rx.getAmount()) + "x" + rx.getDose() + " : "
				+ rx.getUsageDirection();
	}

	public String insertPrescription() throws UnknownHostException {
		String toReturn = "failure";
		Date PrescribeDate = new Date();
		// Prepare Morphia Framework
		Mongo mongo = new Mongo("localhost", 27017);
		Morphia morphia = new Morphia();
		morphia.mapPackage("com.j3ltd.server.entities");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		prescription.setPrescribeDate(PrescribeDate);
		prescription.setTimestamp(PrescribeDate);
		prescription.setStatus("Pending");
		// Save the POJO
		ds.save(prescription);
		return toReturn;
	}
}
