package com.r3sys.customer;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="customer_details") 
@Component 
public class Customer {
	
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Id
	private int ano;
	private String aname;
	private String email;
	private String password;
	private String amob;
	private int abal;
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAmob() {
		return amob;
	}
	public void setAmob(String amob) {
		this.amob = amob;
	}
	public int getAbal() {
		return abal;
	}
	public void setAbal(int abal) {
		this.abal = abal;
	}
	@Override
	public String toString() {
		return "Customer [ano=" + ano + ", aname=" + aname + ", email=" + email + ", password=" + password + ", amob="
				+ amob + ", abal=" + abal + "]";
	}
	
	

}

	

