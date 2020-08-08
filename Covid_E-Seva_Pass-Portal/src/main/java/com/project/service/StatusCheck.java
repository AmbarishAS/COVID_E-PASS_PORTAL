package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.repository.FormRepository;
import com.project.model.*;
@Service
public class StatusCheck {
@Autowired
FormRepository repo;
public String check(int number)
	{
	 try
	 {
		formdetails form=repo.findByPassno(number);
		String sta=form.getStatus().getStatus();
		if(sta.equals("yes"))
			return "ok";
		else
			return "error";
	 }
	 catch(Exception e)
	 {
		 System.out.println(e);
		 return "error";
	 }
	}
}
