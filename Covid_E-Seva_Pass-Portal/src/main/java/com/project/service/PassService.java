package com.project.service;

import org.springframework.stereotype.Component;

@Component
public class PassService {
	public static int id=0;
	public void modify(int no)
	{
		id=no;
	}

}
