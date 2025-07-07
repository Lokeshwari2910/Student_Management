package com.page.student_repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.page.student_model.SModel;

public interface Repo extends JpaRepository <SModel,Integer> {
	
	

}
