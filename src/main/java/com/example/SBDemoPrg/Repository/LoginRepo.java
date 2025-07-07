package com.example.SBDemoPrg.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.SBDemoPrg.Entity.LoginDetailsEntity;

public interface LoginRepo extends JpaRepository<LoginDetailsEntity,Integer>{
	
	List<LoginDetailsEntity> findByusername(String username);
}
