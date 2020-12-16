package com.shop.entity;

import java.util.Date;

public class Admin {
	private long AdminId;
	private String AdminUsername;
	private String AdminPassword;
	private String AdminName;
	private Date CreatedDate;

	public Admin() {
	}

	public long getAdminId() {
		return AdminId;
	}

	public void setAdminId(long adminId) {
		AdminId = adminId;
	}

	public String getAdminUsername() {
		return AdminUsername;
	}

	public void setAdminUsername(String adminUsername) {
		AdminUsername = adminUsername;
	}

	public String getAdminPassword() {
		return AdminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		AdminPassword = adminPassword;
	}

	public String getAdminName() {
		return AdminName;
	}

	public void setAdminName(String adminName) {
		AdminName = adminName;
	}

	public Date getCreatedDate() {
		return CreatedDate;
	}

	public void setCreatedDate(Date createdDate) {
		CreatedDate = createdDate;
	}

}
