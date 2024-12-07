package com.sai.jfsd.EMS.service;

import com.sai.jfsd.EMS.model.Admin;
import com.sai.jfsd.EMS.repository.AdminRepository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;

	@Override
	public String AddAdmin(Admin admin) {
        if (adminRepository.existsByAadhaar(admin.getAadhaar())) {
            return "Admin with Aadhaar " + admin.getAadhaar() + " already exists!";
        }
        adminRepository.save(admin);
        return "Admin added successfully!";
    }
	@Override
	public List<Admin> ViewAlladmins() {
		return (List<Admin>) adminRepository.findAll();

	}
	@Override
	public Admin ViewAdminByID(long aadhaar) 
	{
		return adminRepository.findById(aadhaar).get();
	}
	@Override
	public String updateAdmin(Admin admin) {
	    // Retrieve the existing admin from the database
	    Admin existingAdmin = adminRepository.findById(admin.getAadhaar()).orElseThrow(() -> new RuntimeException("Admin not found"));

	    // Update fields
	    existingAdmin.setName(admin.getName());
	    existingAdmin.setAge(admin.getAge());
	    existingAdmin.setDateofbirth(admin.getDateofbirth());
	    existingAdmin.setEmail(admin.getEmail());
	    existingAdmin.setGender(admin.getGender());
	    existingAdmin.setPhoneno(admin.getPhoneno());
	    existingAdmin.setPlace(admin.getPlace());
	    existingAdmin.setPassword(admin.getPassword());
	    
	    // Only update image if a new image is uploaded
	    if (admin.getImage() != null) {
	        existingAdmin.setImage(admin.getImage());
	    }

	    // Save updated admin back to the database
	    adminRepository.save(existingAdmin);
	    return "Admin Updated Successfully";
	}
	public String deleteadmin(long aadhaar) 
	{
		adminRepository.deleteById(aadhaar);
		return "Employee Deleted Successfully";
	}
	


}
