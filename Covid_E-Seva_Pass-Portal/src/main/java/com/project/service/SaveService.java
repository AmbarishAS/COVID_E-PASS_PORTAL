package com.project.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.*;
import com.project.repository.*;
import java.util.*;
@Service
public class SaveService {
	@Autowired
	FormRepository repo;
	
	int id=0;
	public ModelAndView save(formdetails f,traveldetails tr,purposeofvisit pur,documents d,other o,status s)
	{
		Random rand=new Random();
		int random=rand.nextInt(1000);
		f.setTr(tr);
		f.setPurposedetails(pur);
		f.setDoc(d);
		f.setOther(o);
		s.setStatus("Not Decided");
		f.setStatus(s);
		f.setPassno(random);
		repo.save(f);
		ModelAndView model=new ModelAndView("SuccessfulSubmission.jsp");
		model.addObject("form",f);
		return model;
	}

}
