package com.project.controller;

import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.*;
import com.project.repository.*;
import com.project.service.*;

@Controller
public class SpringController {
	@Autowired
	FormRepository repo;
	
	@Autowired
	StatusService status;
	
	@Autowired
	SaveService save;
	
	@Autowired
	EpassService epass;
	
	@Autowired
	DownloadFileService download;
	
	public static String first="otpVerify.jsp";
	public static String adminSecurity=null;
	
	
	@RequestMapping(value="/")
	public String index()
	{
		return first;
	}
	
	
	@RequestMapping("/home")
	public String home()
	{
		return "home.jsp";
	}
	
	
	@RequestMapping(value="/apply")
	public String apply()
	{
		return "apply.jsp";
	}
	
	
	@RequestMapping("/login")
	public String login()
	{
		return "login.jsp";
	}
	
	
	@RequestMapping("/admin")
	public String adminLogin()
	{
		return "login.jsp";
	}
	
	
	@RequestMapping("/viewdetails")
	public String viewDetails()
	{
		if(adminSecurity!=null)
		return "viewDetails.jsp";
		else
			return "login.jsp";
	}
	
	
	@RequestMapping("/adminmodule")
	public String adminModule()
	{
		if(adminSecurity!=null)
		return "adminModule.jsp";
		else
			return "login.jsp";
	}
	
	
	@RequestMapping("/viewstatus")
	public String viewStatus()
	{
		if(adminSecurity!=null)
		return "viewstatus.jsp";
		else
			return "login.jsp";
	}
	
	
	@RequestMapping("/save")
	public ModelAndView logout(formdetails f,traveldetails tr,purposeofvisit pur,documents d,other o,status s)
	{
		return save.save(f, tr, pur, d, o, s);
	}
	
	
	@RequestMapping("/viewpass")
	public String viewPass()
	{
		return "viewpass.jsp";
	}
	
	
	@RequestMapping("/epass")
	public ModelAndView epass()
	{
		return epass.display();
	}
	
	
	@RequestMapping("/logout_success")
	public String logout()
	{
		adminSecurity=null;
		return "login.jsp";
	}
	
	@RequestMapping("/getstatus")
	public String getStatus()
	{
		return "CheckStatus.jsp";
	}
	
	@PostMapping("/uploadFiles")
	public String uploadFiles(@RequestParam("myfile") MultipartFile[] files) {
		for (MultipartFile file: files) {
			status.saveFile(PassService.id,file);
		}
		return "viewpass.jsp";
	}
	
	@GetMapping("/downloadFile")
	public ResponseEntity<ByteArrayResource> downloadFile(@RequestParam("fileId") Integer fileId){
		return download.download(fileId);
	}
	
	@RequestMapping("/download")
	public String download()
	{
		return "downloadpass.jsp";
	}
	
	
	@RequestMapping("user")
	@ResponseBody
	public Principal user(Principal principal)
	{
		return principal;
	}
}
