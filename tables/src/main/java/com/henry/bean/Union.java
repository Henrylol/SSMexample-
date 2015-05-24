package com.henry.bean;

import java.util.Date;

public class Union {

	private Long id;
	private String userName;
	private Date birthday;
	private Company company; 

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName == null ? null : userName.trim();
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	 public Company getCompany() { return company; }
	 
	 public void setCompany(Company company) { this.company = company; }
	 

}
