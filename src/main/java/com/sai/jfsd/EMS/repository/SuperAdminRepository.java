package com.sai.jfsd.EMS.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.sai.jfsd.EMS.model.SuperAdmin;

@Repository
public interface SuperAdminRepository extends JpaRepository<SuperAdmin, String> {

    @Query("select a from SuperAdmin a where a.aadhaar = ?1 and a.password = ?2 and a.role = ?3")
    public SuperAdmin checksuperadminlogin(String aadhaar, String pwd, String role);
}
