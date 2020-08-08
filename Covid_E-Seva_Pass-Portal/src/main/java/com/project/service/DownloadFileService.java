package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.google.common.net.HttpHeaders;
import com.project.model.formdetails;
import com.project.model.status;
import com.project.repository.FormRepository;

@Service
public class DownloadFileService {
	@Autowired
	FormRepository repo;
	@Autowired
	StatusService status;

	
	public ResponseEntity<ByteArrayResource> download(Integer fileId)
	{
		try
		{
		formdetails form= repo.findByPassno(fileId);
		status doc = status.getFile(form.getId());
		System.out.print(doc.getPass());
		return ResponseEntity.ok()
				.contentType(MediaType.parseMediaType(doc.getDoctype()))
				.header(HttpHeaders.CONTENT_DISPOSITION,"attachment:filename=\""+doc.getDocname()+"\"")
				.body(new ByteArrayResource(doc.getPass()));
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
	}
}
