package com.sai.jfsd.EMS.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sai.jfsd.EMS.model.Citizen;

public interface CitizenRepository extends JpaRepository<Citizen, String>
{
  
}
