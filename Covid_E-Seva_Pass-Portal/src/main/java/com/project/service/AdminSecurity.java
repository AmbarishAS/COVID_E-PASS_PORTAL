package com.project.service;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.project.controller.*;
import com.project.model.*;
import com.project.repository.*;;
@Component

public class AdminSecurity {
	@Autowired
	AdminLoginRepository admin;
	static Map<String,String>map=new HashMap<>();
	static
	{
		map.put("root","$2a$10$ReFoahvUw3uB6Pla0XBRiuDg/TrE.heiSwgZsyEkaFLFr.lGiI/je");
	}
	public boolean validate(String name,String password)
	{
		try
		{
		adminlogin al=admin.findByUsername(name);
		if(al==null)
			return false;
		if(al.getPassword().equals(map.get(password)))
		{
			SpringController.adminSecurity="set";
			return true;
		}
		}
		catch(Exception e)
		{
			System.out.println(e);
			return false;
		}
		return false;
	}

}
