package com.project.model;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class status {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	private String status;
	@Lob
	private byte[]pass;
	private String doctype;
	private String docname;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public byte[] getPass() {
		return pass;
	}
	public void setPass(byte[] pass) {
		this.pass = pass;
	}
	
	public String getDocname() {
		return docname;
	}
	public void setDocname(String docname) {
		this.docname = docname;
	}
	public String getDoctype() {
		return doctype;
	}
	public void setDoctype(String doctype) {
		this.doctype = doctype;
	}
	@Override
	public String toString() {
		return "status [id=" + id + ", status=" + status + ", pass=" + Arrays.toString(pass) + ", docname=" + docname
				+ ", doctype=" + doctype + "]";
	}
	
	

}
