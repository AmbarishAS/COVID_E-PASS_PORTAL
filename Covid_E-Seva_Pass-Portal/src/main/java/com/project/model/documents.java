package com.project.model;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
@Entity
public class documents {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	@Lob
	private byte[] fromdocument;
	@Lob
	private byte[] todocument;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public byte[] getFromdocument() {
		return fromdocument;
	}
	public void setFromdocument(byte[] fromdocument) {
		this.fromdocument = fromdocument;
	}
	public byte[] getTodocument() {
		return todocument;
	}
	public void setTodocument(byte[] todocument) {
		this.todocument = todocument;
	}
	@Override
	public String toString() {
		return "documents [id=" + id + ", fromdocument=" + Arrays.toString(fromdocument) + ", todocument="
				+ Arrays.toString(todocument) + "]";
	}
	
}
