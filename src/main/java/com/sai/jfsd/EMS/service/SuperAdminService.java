package com.sai.jfsd.EMS.service;

import com.sai.jfsd.EMS.model.Admin;
import com.sai.jfsd.EMS.model.SuperAdmin;

public interface SuperAdminService
{
	//public String addadmin(Admin a);
   public SuperAdmin checksuperadminlogin(String aadhaar,String pwd,String role);

}
