package com.j3ltd.web;

import java.io.IOException;
import java.net.UnknownHostException;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.jmkgreen.morphia.Datastore;
import com.github.jmkgreen.morphia.Morphia;
import com.github.jmkgreen.morphia.query.Query;
import com.j3ltd.server.entities.Medicine;
import com.j3ltd.server.entities.MedicineList;
import com.j3ltd.server.entities.Person;
import com.j3ltd.server.entities.Prescription;
import com.mongodb.Mongo;

public class HangoutRequest extends HttpServlet{
	private static final long serialVersionUID = 1L;
	MedicineList RxList;
	List<Medicine> tempRxList;
	Medicine Rx;
	Prescription prescription;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException,UnknownHostException{
		RxList = new MedicineList();
		tempRxList = new List<Medicine>() {
			
			@Override
			public <T> T[] toArray(T[] a) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Object[] toArray() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public List<Medicine> subList(int fromIndex, int toIndex) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public int size() {
				// TODO Auto-generated method stub
				return 0;
			}
			
			@Override
			public Medicine set(int index, Medicine element) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public boolean retainAll(Collection<?> c) {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public boolean removeAll(Collection<?> c) {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public Medicine remove(int index) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public boolean remove(Object o) {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public ListIterator<Medicine> listIterator(int index) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public ListIterator<Medicine> listIterator() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public int lastIndexOf(Object o) {
				// TODO Auto-generated method stub
				return 0;
			}
			
			@Override
			public Iterator<Medicine> iterator() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public boolean isEmpty() {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public int indexOf(Object o) {
				// TODO Auto-generated method stub
				return 0;
			}
			
			@Override
			public Medicine get(int index) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public boolean containsAll(Collection<?> c) {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public boolean contains(Object o) {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public void clear() {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public boolean addAll(int index, Collection<? extends Medicine> c) {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public boolean addAll(Collection<? extends Medicine> c) {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public void add(int index, Medicine element) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public boolean add(Medicine e) {
				// TODO Auto-generated method stub
				return false;
			}
		};
		prescription = new Prescription();
		prescription.setPatientID(request.getParameter("PatientID").toString());
		prescription.setDoctorID(request.getParameter("DoctorID").toString());
		String PostRx = request.getParameter("RxList").toString();
		String[] rawRxList = PostRx.split(";");
		int i = 1;
		for(String rawRx : rawRxList){
			Rx = new Medicine();
			Rx.setRawString(rawRx.trim());
			String[] RxAttribute = rawRx.split(",");
			Rx.setType(RxAttribute[0].trim());
			Rx.setName(RxAttribute[1].trim());
			Rx.setDose(RxAttribute[2].trim());
			Rx.setAmount(Integer.parseInt(RxAttribute[3].trim()));
			Rx.setUsageDirection(RxAttribute[4].trim());
			Rx.setId(String.valueOf(i));
			tempRxList.add(Rx);
			i++;
		}
		RxList.setMedicineList(tempRxList);
		//Prepare Morphia Framework
		System.out.println("Setting up MongoDB...");
		Mongo mongo = new Mongo("localhost",27017);
		System.out.println("Setting up Morphia...");
		Morphia morphia = new Morphia();
		System.out.println("Mapping Entities...");
		morphia.mapPackage("com.j3ltd.server.entities");
		System.out.println("Create Datastore...");
		Datastore ds = morphia.createDatastore(mongo, "dotc");
		Query<Person> qp = ds.createQuery(Person.class).field("id").equal(prescription.getPatientID());
		Person patient = qp.get();
		prescription.setPatientFirstName(patient.getFirstName());
		prescription.setPatientLastName(patient.getLastName());
		Query<Person> qd = ds.createQuery(Person.class).field("id").equal(prescription.getDoctorID());
		Person doctor = qd.get();
		prescription.setDoctorFirstName(doctor.getFirstName());
		prescription.setDoctorLastName(doctor.getLastName());
		System.out.println("Sent POST request to backBean");
		insertPrescription();
		System.out.println("Finish inserting to MongoDB");
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
