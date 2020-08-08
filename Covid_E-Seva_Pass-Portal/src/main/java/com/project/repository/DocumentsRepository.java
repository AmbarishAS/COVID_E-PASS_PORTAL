package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.project.model.*;
@Component
public interface DocumentsRepository extends JpaRepository<documents,Integer> {
	documents findById(int id);
}
