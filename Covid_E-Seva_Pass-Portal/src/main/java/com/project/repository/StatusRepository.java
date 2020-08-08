package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.project.model.*;
@Service
public interface StatusRepository extends JpaRepository<status,Integer> {
	status findById(int id);
}
