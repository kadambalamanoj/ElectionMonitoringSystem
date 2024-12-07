package com.sai.jfsd.EMS.service;

import java.util.List;

import com.sai.jfsd.EMS.model.Admin;

public interface AdminService 
{
	   public String AddAdmin(Admin admin);
	   public List<Admin> ViewAlladmins();
	   public Admin ViewAdminByID(long aadhaar);
	   public String updateAdmin(Admin admin);
	   public  String deleteadmin(long aadhaar);

}
