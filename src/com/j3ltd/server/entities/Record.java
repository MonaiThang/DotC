package com.j3ltd.server.entities;

import java.io.Serializable;

@Entity
public class Record implements Serializable {
	private static final long serialVersionUID = 1L;
	private int RecordID;
	
	private String PatientCitizenID;
	private String PatientFirstName;
	private String PatientLastName;
	
	private String DoctorFirstName;
	private String DoctorLastName;
  
	private int systolic;
	private int diastolic;
	private Double temp;
	private int pulse;
	private int breathrate;
	private Double o2sat;
	private Double weight;
	private Double height;
	private Double bmi;
	private String lmp;
	private String symptom;
	private String disease;
	private java.util.Date timestamp;
	private Double cost;
	
	@Id
	@GeneratedValue
	public int getRecordID() {	return RecordID;	}
	public void setRecordID(int RecordID) {	this.RecordID = RecordID;	}

	public String getPatientCitizenID() {	return PatientCitizenID;	}
	public void setPatientCitizenID(String PatientCitizenID) {	this.PatientCitizenID = PatientCitizenID;	}
	public String getPatientFirstName() {	return PatientFirstName;	}
	public void setPatientFirstName(String PatientFirstName) {	this.PatientFirstName = PatientFirstName;	}
	public String getPatientLastName() {	return PatientLastName;	}
	public void setPatientLastName(String PatientLastName) {	this.PatientLastName = PatientLastName;	}

	public String getDoctorFirstName() {	return DoctorFirstName;	}
	public void setDoctorFirstName(String DoctorFirstName) {	this.DoctorFirstName = DoctorFirstName;	}
	public String getDoctorLastName() {	return DoctorLastName;	}
	public void setDoctorLastName(String DoctorLastName) {	this.DoctorLastName = DoctorLastName;	}

	public int getSystolic() {	return systolic;	}
	public void setSystolic(int systolic) {	this.systolic = systolic;	}

	public int getDiastolic() {	return diastolic;	}
	public void setDiastolic(int diastolic) {	this.diastolic = diastolic;	}

	public Double getTemp() {	return temp;	}
	public void setTemp(Double temp) {	this.temp = temp;	}

	public int getPulse() {	return pulse;	}
	public void setPulse(int pulse) {	this.pulse = pulse;	}

	public int getBreathrate() {	return breathrate;	}
	public void setBreathrate(int breathrate) {	this.breathrate = breathrate;	}

	public Double getO2sat() {	return o2sat;	}
	public void setO2sat(Double o2sat) {	this.o2sat = o2sat;	}

	public Double getWeight() {	return weight;	}
	public void setWeight(Double weight) {	this.weight = weight;	}

	public Double getHeight() {	return height;	}
	public void setHeight(Double height) {	this.height = height;	}

	public Double getBmi() {	return bmi;	}
	public void setBmi(Double weight, Double height) {	this.bmi = weight/Math.pow(height,2);	}

	public String getLmp() {	return lmp;	}
	public void setLmp(String lmp) {	this.lmp = lmp;	}

	public String getSymptom() {	return symptom;	}
	public void setSymptom(String symptom) {	this.symptom = symptom;	}

	public String getDisease() {	return disease;	}
	public void setDisease(String disease) {	this.disease = disease;	}

	public Double getCost() {	return cost;	}
	public void setCost(Double cost) {	this.cost = cost;	}

	public java.util.Date getTimestamp() {	return timestamp;	}
	public void setTimestamp(java.util.Date timestamp) {	this.timestamp = timestamp;	}
}