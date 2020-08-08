package com.project.model;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class other {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	private byte[] idproof;
	private String vehicle;
	private String vehicleno;
	private String date;
	private String additionalpersons;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public byte[] getIdproof() {
		return idproof;
	}
	public void setIdproof(byte[] idproof) {
		this.idproof = idproof;
	}
	public String getVehicle() {
		return vehicle;
	}
	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}
	public String getVehicleno() {
		return vehicleno;
	}
	public void setVehicleno(String vehicleno) {
		this.vehicleno = vehicleno;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getAdditionalpersons() {
		return additionalpersons;
	}
	public void setAdditionalpersons(String additionalpersons) {
		this.additionalpersons = additionalpersons;
	}
	@Override
	public String toString() {
		return "other [id=" + id + ", idproof=" + Arrays.toString(idproof) + ", vehicle=" + vehicle + ", vehicleno="
				+ vehicleno + ", date=" + date + ", additionalpersons=" + additionalpersons + "]";
	}
	
	

}
