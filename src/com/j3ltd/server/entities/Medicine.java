package com.j3ltd.server.entities;

import java.io.Serializable;

@Entity
public class Medicine implements Serializable {
	private static final long serialVersionUID = 1L;
	private String	id;
	private String	name;
	private String	unit;
	private String	dose;
	private int		amount;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
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
}