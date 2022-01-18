package com.crce.register;

public class Register {
	private String fname;
	private String lname;
	private String email;
	private long contact;
	private String gender;
	private String username;
	private String password;
	private String role;
	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Register() {
	}
	
	public Register(String fname, String lname, String email, long contact, String gender, String username,String password,String role) {
		
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.contact = contact;
		this.gender = gender;
		this.username = username;
		this.password = password;
		this.role=role;
	}
	

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact2) {
		this.contact = contact2;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Register [fname=" + fname + ", lname=" + lname + ", email=" + email + ", contact=" + contact
				+ ", gender=" + gender + ", username=" + username + ", password=" + password + ", role=" + role + "]";
	}

	
	
	
	
}
