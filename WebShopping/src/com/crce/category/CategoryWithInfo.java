package com.crce.category;

public class CategoryWithInfo {
	private String c_name;
	private String userName;
	private String password;
	public CategoryWithInfo(String c_name, String userName, String password) {
		super();
		this.c_name = c_name;
		this.userName = userName;
		this.password = password;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "CategoryWithInfo [c_name=" + c_name + ", userName=" + userName + ", password=" + password + "]";
	}
	
	
	
}
