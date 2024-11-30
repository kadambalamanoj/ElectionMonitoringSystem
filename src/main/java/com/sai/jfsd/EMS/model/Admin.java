package com.sai.jfsd.EMS.model;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="admin_table")
public class Admin 
{
	   @Id
	    private String aadhaar;
	    private String name;
	    private String email;
	    private String password;
	    private String phoneNumber;
	    private String location;
	    @Column(name = "created_at")
	    private LocalDateTime createdAt;
	    @Column(name = "approver_permissions")
	    private boolean approverPermissions;
		
		
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
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
		public String getPhoneNumber() {
			return phoneNumber;
		}
		public void setPhoneNumber(String phoneNumber) {
			this.phoneNumber = phoneNumber;
		}
		public String getLocation() {
			return location;
		}
		public void setLocation(String location) {
			this.location = location;
		}
		public LocalDateTime getCreatedAt() {
			return createdAt;
		}
		public void setCreatedAt(LocalDateTime createdAt) {
			this.createdAt = createdAt;
		}
		public boolean isApproverPermissions() {
			return approverPermissions;
		}
		public void setApproverPermissions(boolean approverPermissions) {
			this.approverPermissions = approverPermissions;
		}
		public String getAadhaar() {
			return aadhaar;
		}
		public void setAadhaar(String aadhaar) {
			this.aadhaar = aadhaar;
		}
}
