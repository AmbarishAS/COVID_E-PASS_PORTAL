package com.project.service;
import com.project.repository.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.*;
@Service
public class EpassService {
	@Autowired
	FormRepository repo;
	public ModelAndView display()
	{
		try
		{
		ModelAndView model=new ModelAndView("pass.jsp");
		int id=PassService.id;
		formdetails form=repo.findById(id);
		System.out.println(form);
		model.addObject("form",form);
		return model;
		}
		catch(Exception e)
		{
			System.out.print(e);
			return null;
		}
	}

}
