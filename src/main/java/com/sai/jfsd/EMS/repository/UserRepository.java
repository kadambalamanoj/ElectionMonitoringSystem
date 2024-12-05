package com.sai.jfsd.EMS.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Repository;
import com.sai.jfsd.EMS.model.User;
@Repository
public interface UserRepository extends JpaRepository<User, String>
{
	
}

