package com.j3ltd.server.entities;

import java.io.Serializable;

import com.github.jmkgreen.morphia.annotations.Embedded;

@Embedded
public class Address implements Serializable {
	private static final long serialVersionUID = 1L;
	private String line1;
	private String line2;
	private String line3;
	private String line4;
	private String postcode;
	private String country;

	public String getLine1() {
		return line1;
	}

	public void setLine1(String line1) {
		this.line1 = line1;
	}

	public String getLine2() {
		return line2;
	}

	public void setLine2(String line2) {
		this.line2 = line2;
	}

	public String getLine3() {
		return line3;
	}

	public void setLine3(String line3) {
		this.line3 = line3;
	}

	public String getLine4() {
		return line4;
	}

	public void setLine4(String line4) {
		this.line4 = line4;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
}