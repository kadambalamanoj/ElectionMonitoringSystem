package com.sai.jfsd.EMS.service;

import com.sai.jfsd.EMS.model.User;
import com.sai.jfsd.EMS.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl  implements UserService
{
	@Autowired
	private UserRepository userrepository;

	@Override
	public String UserRegistration(User user) 
	{
		userrepository.save(user);
		return "User Registered Successfully";
		
	}

}
