package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import com.project.model.*;

@Component
public interface OtherRepository extends JpaRepository<other,Integer>{
	other findById(int id);
}
