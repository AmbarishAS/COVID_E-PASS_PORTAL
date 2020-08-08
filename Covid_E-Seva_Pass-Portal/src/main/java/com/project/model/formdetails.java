package com.project.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class formdetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	private String name;
	private String mobileno;
	private String idtype;
	private String idnumber;
	private Integer passno;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id", referencedColumnName = "id")
	private traveldetails tr;
	public traveldetails getTr() {
		return tr;
	}
	public void setTr(traveldetails tr) {
		this.tr = tr;
	}
	
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name= "id", referencedColumnName= "id")
	private purposeofvisit purposedetails;
	
	public purposeofvisit getPurposedetails() {
		return purposedetails;
	}
	public void setPurposedetails(purposeofvisit purposedetails) {
		this.purposedetails = purposedetails;
	}
	
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id", referencedColumnName = "id")
	private documents doc;
	public documents getDoc() {
		return doc;
	}
	public void setDoc(documents doc) {
		this.doc = doc;
	}
	
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id", referencedColumnName = "id")
	private other other;
	public other getOther() {
		return other;
	}
	public void setOther(other other) {
		this.other = other;
	}
	
	
	@OneToOne(cascade= CascadeType.ALL)
	@JoinColumn(name = "id", referencedColumnName = "id")
	private status status;
	
	public status getStatus() {
		return status;
	}
	public void setStatus(status status) {
		this.status = status;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getIdtype() {
		return idtype;
	}
	public void setIdtype(String idtype) {
		this.idtype = idtype;
	}
	public String getIdnumber() {
		return idnumber;
	}
	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}
	
	public Integer getPassno() {
		return passno;
	}
	public void setPassno(Integer passno) {
		this.passno = passno;
	}
	@Override
	public String toString() {
		return "formdetails [id=" + id + ", name=" + name + ", mobileno=" + mobileno + ", idtype=" + idtype
				+ ", idnumber=" + idnumber + ", passno=" + passno + ", tr=" + tr + ", purposedetails=" + purposedetails
				+ ", doc=" + doc + ", other=" + other + ", status=" + status + "]";
	}
	
	
	
	
	
	
}
