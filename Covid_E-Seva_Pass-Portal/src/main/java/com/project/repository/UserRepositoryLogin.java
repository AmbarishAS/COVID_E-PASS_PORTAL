package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.project.model.*;


@Service
public interface UserRepositoryLogin extends JpaRepository<login, String> {
	login findByUsername(String username);

}
