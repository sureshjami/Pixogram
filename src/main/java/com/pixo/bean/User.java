package com.pixo.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User")
public class User {

	private String Name;
	private String EmailId;
	private String Password;
	private String ConPassword;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getConPassword() {
		return ConPassword;
	}
	public void setConPassword(String conPassword) {
		ConPassword = conPassword;
	}
	
	
	
}
