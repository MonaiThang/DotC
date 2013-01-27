package com.j3ltd.server.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.bson.types.ObjectId;

import com.github.jmkgreen.morphia.annotations.Entity;
import com.github.jmkgreen.morphia.annotations.Id;

@Entity("Prescription")
public class Prescription implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	private ObjectId id;
	private String PrescriptionID;
	private String PatientID;
	private String PatientFirstName;
	private String PatientLastName;
	private List<Medicine> MedicineList;
	private String DoctorID;
	private String DoctorFirstName;
	private String DoctorLastName;
	private String Status;
	private Date PrescribeDate;
	private Date timestamp;
	private String rawStringList;

	public ObjectId getId() {
		return id;
	}

	public void setId(ObjectId id) {
		this.id = id;
	}

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

	public List<Medicine> getMedicineList() {
		return MedicineList;
	}

	public void setMedicineList(List<Medicine> medicineList) {
		MedicineList = medicineList;
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

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	public Date getPrescribeDate() {
		return PrescribeDate;
	}

	public void setPrescribeDate(Date prescribeDate) {
		PrescribeDate = prescribeDate;
	}

	public Date getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}

	public String getRawStringList() {
		return rawStringList;
	}

	public void setRawStringList(String rawString) {
		this.rawStringList = rawString;
	}
}