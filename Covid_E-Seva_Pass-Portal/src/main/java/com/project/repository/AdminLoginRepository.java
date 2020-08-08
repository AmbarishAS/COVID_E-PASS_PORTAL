package com.project.repository;
import com.project.model.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public interface AdminLoginRepository extends JpaRepository<adminlogin,String> {
	adminlogin findByUsername(String username);

}
