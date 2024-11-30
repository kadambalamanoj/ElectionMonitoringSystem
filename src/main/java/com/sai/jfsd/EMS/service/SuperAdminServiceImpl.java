package com.sai.jfsd.EMS.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sai.jfsd.EMS.model.SuperAdmin;
import com.sai.jfsd.EMS.repository.SuperAdminRepository;

@Service
public class SuperAdminServiceImpl implements SuperAdminService {
    @Autowired
    private SuperAdminRepository superadminRepository;

    @Override
    public SuperAdmin checksuperadminlogin(String aadhaar, String pwd, String role) {
        return  superadminRepository.checksuperadminlogin(aadhaar, pwd, role) ;      
    }
}
