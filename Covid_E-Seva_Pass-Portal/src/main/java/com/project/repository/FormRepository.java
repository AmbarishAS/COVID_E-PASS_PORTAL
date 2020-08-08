package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.project.model.*;
@Service
public interface FormRepository extends JpaRepository<formdetails,Integer> {

	formdetails findByMobileno(String mobileno);
	formdetails findById(int id);
	formdetails findByName(String id);
	formdetails findByPassno(Integer passno);
}
