package com.j3ltd.server.entities;

import java.io.Serializable;

@Entity
public class Prescription implements Serializable {
	private static final long serialVersionUID = 1L;
	private String	PrescriptionID;
	private String	PatientID;
	private String	PatientFirstName;
	private String	PatientLastName;
	private	String	MedicineID;
	private String	MedicineName;
	private int		Amount;
	private String	DoctorID;
	private String	DoctorFirstName;
	private String	DoctorLastName;
	private java.util.Date	PrescribeDate;
	private java.util.Date	timestamp;
	
	public String getPrescriptionID() {
		return PrescriptionID;
	}
	public void setPrescriptionID(String prescriptionID) {
		PrescriptionID = prescriptionID;
	}
	public String getPatientID() {
		return PatientID;
	}
	public void setPatientID(String patientID) {
		PatientID = patientID;
	}
	public String getPatientFirstName() {
		return PatientFirstName;
	}
	public void setPatientFirstName(String patientFirstName) {
		PatientFirstName = patientFirstName;
	}
	public String getPatientLastName() {
		return PatientLastName;
	}
	public void setPatientLastName(String patientLastName) {
		PatientLastName = patientLastName;
	}
	public String getMedicineID() {
		return MedicineID;
	}
	public void setMedicineID(String medicineID) {
		MedicineID = medicineID;
	}
	public String getMedicineName() {
		return MedicineName;
	}
	public void setMedicineName(String medicineName) {
		MedicineName = medicineName;
	}
	public int getAmount() {
		return Amount;
	}
	public void setAmount(int amount) {
		Amount = amount;
	}
	public String getDoctorID() {
		return DoctorID;
	}
	public void setDoctorID(String doctorID) {
		DoctorID = doctorID;
	}
	public String getDoctorFirstName() {
		return DoctorFirstName;
	}
	public void setDoctorFirstName(String doctorFirstName) {
		DoctorFirstName = doctorFirstName;
	}
	public String getDoctorLastName() {
		return DoctorLastName;
	}
	public void setDoctorLastName(String doctorLastName) {
		DoctorLastName = doctorLastName;
	}
	public java.util.Date getPrescribeDate() {
		return PrescribeDate;
	}
	public void setPrescribeDate(java.util.Date prescribeDate) {
		PrescribeDate = prescribeDate;
	}
	public java.util.Date getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(java.util.Date timestamp) {
		this.timestamp = timestamp;
	}
}