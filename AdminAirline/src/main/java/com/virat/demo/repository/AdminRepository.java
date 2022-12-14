package com.virat.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.virat.demo.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin	, String>{

}
