package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.model.formdetails;
import com.project.model.status;
import com.project.repository.FormRepository;
import com.project.repository.StatusRepository;

@Service
public class StatusUpdateService {
	@Autowired
	FormRepository repo;
	
	@Autowired
	StatusRepository repo1;
	
	public String send(int id,String status)
	{
		try
		{
		formdetails form=repo.findById(id);
		status s=repo1.findById(id);
		s.setStatus(status);
		form.setStatus(s);
		repo.save(form);
		return id+" status generated successfull";
		}
		catch(Exception e)
		{
			System.out.print(e);
			return "Invalid";
		}
	}

}
