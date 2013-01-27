package com.j3ltd.server.entities;

import java.io.Serializable;

import com.github.jmkgreen.morphia.annotations.Entity;
import com.github.jmkgreen.morphia.annotations.Id;

@Entity("Medicine")
public class Medicine implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	private String id;
	private String type;
	private String name;
	private String dose;
	private int amount;
	private String usageDirection;
	private String rawString;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDose() {
		return dose;
	}

	public void setDose(String dose) {
		this.dose = dose;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getUsageDirection() {
		return usageDirection;
	}

	public void setUsageDirection(String usageDirection) {
		this.usageDirection = usageDirection;
	}

	public String getRawString() {
		return rawString;
	}

	public void setRawString(String rawString) {
		this.rawString = rawString;
	}
}