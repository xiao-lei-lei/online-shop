package com.code2.demo.entity;

public class CrmUser {
	
	private String userName;
	private String password;
	
	public CrmUser() {
		// TODO Auto-generated constructor stub
	}
	
	public CrmUser(String userName, String password) {
		this.userName = userName;
		this.password = password;
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
	
	

}
