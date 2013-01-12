package com.j3ltd.server.entities;

import java.io.Serializable;
import java.util.Date;

import org.bson.types.ObjectId;

import com.github.jmkgreen.morphia.annotations.Embedded;
import com.github.jmkgreen.morphia.annotations.Entity;
import com.github.jmkgreen.morphia.annotations.Id;


@Entity("Person")
public class Person implements Serializable 
{
	private static final long serialVersionUID = 1L;
	@Id
	private ObjectId id;
	private String	citizenid;
	private String 	password;
	private String 	firstName;
	private String 	lastName;
	private String 	age;
	private String 	gender;
	private String 	maritalStatus;
	private Date 	dateOfBirth;
	private Date 	iddateissued;
	private Date 	iddateexpired;
	@Embedded
	private Address	actualaddress;
	@Embedded
	private Address	currentaddress;

	private String	phone;
	private String 	mobile;
	private String	emergenncycall;
	private String	career;
	private String	bloodgroup;
	private String	nationality;
	private String	religion;
	private String	localeLanguage;
	private String	localeCountry;
	private String	email;

	
	public ObjectId getId() {
		return id;
	}
	public void setId(ObjectId id) {
		this.id = id;
	}
	public String getCitizenid() {
		return citizenid;
	}
	public void setCitizenid(String citizenid) {
		this.citizenid = citizenid;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
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
	public void setGender(String gender) {
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
	public Date getIddateissued() {
		return iddateissued;
	}
	public void setIddateissued(Date iddateissued) {
		this.iddateissued = iddateissued;
	}
	public Date getIddateexpired() {
		return iddateexpired;
	}
	public void setIddateexpired(Date iddateexpired) {
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
		return localeLanguage;
	}
	public void setLocaleLanguage(String localeLanguage) {
		this.localeLanguage = localeLanguage;
	}
	public String getLocaleCountry() {
		return localeCountry;
	}
	public void setLocaleCountry(String localeCountry) {
		this.localeCountry = localeCountry;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}