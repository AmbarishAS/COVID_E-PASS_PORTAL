package com.project.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.project.model.*;
import com.project.repository.*;


@Service
public class StatusService {
	@Autowired
	StatusRepository repo;
	 public status saveFile(int id,MultipartFile file) {
		  String docname =StringUtils.cleanPath(file.getOriginalFilename());
		  try {
			  if(docname.contains("..")) {
	                throw new Exception("Sorry! Filename contains invalid path sequence " + docname);
	            }

			  System.out.print(docname);
			  status doc=repo.findById(id);
			  doc.setDocname(docname);
			  doc.setDoctype(file.getContentType());
			  doc.setPass(file.getBytes());
			  return repo.save(doc);
		  }
		  catch(Exception e) {
			  e.printStackTrace();
		  }
		  return null;
	  }
	 public status getFile(int fileId) {
		 status doc=repo.findById(fileId);
		  return doc;
	  }

}
