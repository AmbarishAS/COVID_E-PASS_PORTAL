package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class traveldetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	private String statefrom;
	private String districtfrom;
	private String addressfrom;
	private String districtto;
	private String addressto;
	private String pinno;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStatefrom() {
		return statefrom;
	}
	public void setStatefrom(String statefrom) {
		this.statefrom = statefrom;
	}
	public String getDistrictfrom() {
		return districtfrom;
	}
	public void setDistrictfrom(String districtfrom) {
		this.districtfrom = districtfrom;
	}
	public String getDistrictto() {
		return districtto;
	}
	public void setDistrictto(String districtto) {
		this.districtto = districtto;
	}
	public String getAddressto() {
		return addressto;
	}
	public void setAddressto(String addressto) {
		this.addressto = addressto;
	}
	
	public String getAddressfrom() {
		return addressfrom;
	}
	public void setAddressfrom(String addressfrom) {
		this.addressfrom = addressfrom;
	}
	public String getPinno() {
		return pinno;
	}
	public void setPinno(String pinno) {
		this.pinno = pinno;
	}
	@Override
	public String toString() {
		return "traveldetails [id=" + id + ", statefrom=" + statefrom + ", districtfrom=" + districtfrom + ", from="
				+ addressfrom + ", districtto=" + districtto + ", addressto=" + addressto + ", pin=" + pinno + "]";
	}
	

}
