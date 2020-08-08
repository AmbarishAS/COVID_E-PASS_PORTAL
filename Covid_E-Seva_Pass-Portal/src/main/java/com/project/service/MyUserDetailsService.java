package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.project.controller.*;
import com.project.model.*;
import com.project.repository.*;
@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserRepositoryLogin repo;
	@Autowired
	private AdminLoginRepository admin;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		adminlogin adminlogin=admin.findByUsername(username);
		login login=repo.findByUsername(username);
		if(adminlogin!=null)
		{
			SpringController.first="adminModule.jsp";
			return new AdminPrincipal(adminlogin);
		}
		else
		{
		if(login==null)
			throw new UsernameNotFoundException("User not Found");
		SpringController.first="otpVerify.jsp";
		return new UserPrincipal(login);
		}
	}

}
