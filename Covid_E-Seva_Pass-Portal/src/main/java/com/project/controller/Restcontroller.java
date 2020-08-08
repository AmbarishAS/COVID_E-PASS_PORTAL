package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.model.*;
import com.project.repository.*;
import com.project.service.*;

@RestController
public class Restcontroller {
	@Autowired
	FormRepository repo;
	
	@Autowired
	OtpSevice otp;
	
	@Autowired
	StatusRepository repo1;
	
	@Autowired
	AdminSecurity admin;
	
	@Autowired
	PassService pass;
	
	@Autowired
	StatusUpdateService service;
	
	@Autowired
	StatusCheck status;
	
	@RequestMapping("/details/{id}")
	public formdetails getRecord(@PathVariable("id") int id)
	{
		formdetails form=repo.findById(id);
		return form;
	}
	
	
	@RequestMapping("/alldetails")
	public List<formdetails> details()
	{
		return repo.findAll();
	}
	
	
	@RequestMapping("/number/{mobileno}")
	public String sendOtp(@PathVariable("mobileno")String mobileno)
	{	
		return otp.sendOTP(mobileno);	
	}
	
	
	@RequestMapping("/verify/{mobileno}")
	public String verifyOtp(@PathVariable("mobileno")String mobileno,OtpSystem otpSystem)
	{
		return otp.verifyOTP(mobileno,otpSystem);
	}
	
	
	@RequestMapping("/statusupdate")
	public String send(int id,String status)
	{
		return service.send(id, status);
	}
	
	@RequestMapping("/set")
	public String set(String name,String pass)
	{
		admin.validate(name,pass);
		return "ok";
	}
	
	
	@RequestMapping("/pass")
	public String pass(int id)
	{
		pass.modify(id);
		return "ok";
	}
	
	@RequestMapping("/statuscheck")
	public String statusCheck(int id)
	{
		return status.check(id);
	}
}
