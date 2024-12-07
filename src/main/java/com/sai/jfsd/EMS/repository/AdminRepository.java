package com.sai.jfsd.EMS.repository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import java.util.List;

import com.sai.jfsd.EMS.model.Admin;

@Repository
public interface AdminRepository extends CrudRepository<Admin, Long> {
    boolean existsByAadhaar(Long aadhaar);
    @Query("from Admin a where a.place=?1")
    List<Admin> viewalladminssbyplace(String place);
}

