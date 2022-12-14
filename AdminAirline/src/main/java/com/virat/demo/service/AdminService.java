package com.virat.demo.service;


import org.springframework.stereotype.Service;

@Service
public interface AdminService {
	public String verifyLogin(String username, String password, int key);
	

}
