package com.j3ltd.server.entities;

import java.io.Serializable;

@Entity
public class Person implements Serializable 
{
	private static final long serialVersionUID = 1L;
	private int    	id;
	private String 	password;
	private String 	firstName;
	private String 	lastName;
	private String 	age;
	private String 	gender;
	private String 	maritalStatus;
	private java.util.Date 	dateOfBirth;
	private java.util.Date 	iddateissued;
	private java.util.Date 	iddateexpired;

	private Address	actualaddress;
	private Address	currentaddress;
  
	private String	phone;
	private String 	mobile;
	private String	emergenncycall;
	private String	career;
	private String	bloodgroup;
	private String	nationality;
	private String	religion;
	private String	disease;
	private String	localelanguage;
	private String	localecountry;
	private String	email;
  
	private String	bp;
	private String	temp;
	private String	pulse;
	private String 	breathrate;
	private String	o2sat;
	private String	weight;
	private String	height;
	private String	bmi;
	private String	lmp;
	private String	symptom;
	private String 	doctor;
	private java.util.Date	timestamp;
	private Double	cost;

	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}  
	public java.util.Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(java.util.Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getGender() {
		return gender;
	}
	public void setGenders(String gender) {
		this.gender = gender;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmergenncycall() {
		return emergenncycall;
	}
	public void setEmergenncycall(String emergenncycall) {
		this.emergenncycall = emergenncycall;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getBp() {
		return bp;
	}
	public void setBp(String bp) {
		this.bp = bp;
	}
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
	}
	public String getPulse() {
		return pulse;
	}
	public void setPulse(String pulse) {
		this.pulse = pulse;
	}
	public String getBreathrate() {
		return breathrate;
	}
	public void setBreathrate(String breathrate) {
		this.breathrate = breathrate;
	}
	public String getO2sat() {
		return o2sat;
	}
	public void setO2sat(String o2sat) {
		this.o2sat = o2sat;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getBmi() {
		return bmi;
	}
	public void setBmi(String bmi) {
		this.bmi = bmi;
	}
	public String getLmp() {
		return lmp;
	}
	public void setLmp(String lmp) {
		this.lmp = lmp;
	}
	public String getSymptom() {
		return symptom;
	}
	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public java.util.Date getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(java.util.Date timestamp) {
		this.timestamp = timestamp;
	}
	public Double getCost() {
		return cost;
	}
	public void setCost(Double cost) {
		this.cost = cost;
	}
	public java.util.Date getIddateissued() {
		return iddateissued;
	}
	public void setIddateissued(java.util.Date iddateissued) {
		this.iddateissued = iddateissued;
	}
	public java.util.Date getIddateexpired() {
		return iddateexpired;
	}
	public void setIddateexpired(java.util.Date iddateexpired) {
		this.iddateexpired = iddateexpired;
	}
	public Address getActualaddress() {
		return actualaddress;
	}
	public void setActualaddress(Address actualaddress) {
		this.actualaddress = actualaddress;
	}
	public Address getCurrentaddress() {
		return currentaddress;
	}
	public void setCurrentaddress(Address currentaddress) {
		this.currentaddress = currentaddress;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getLocaleLanguage() {
		return localelanguage;
	}
	public void setLocaleLanguage(String localelanguage) {
		this.localelanguage = localelanguage;
	}
	public String getLocaleCountry() {
		return localecountry;
	}
	public void setLocaleCountry(String localecountry) {
		this.localecountry = localecountry;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}