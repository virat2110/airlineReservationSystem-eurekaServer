package com.virat.demo.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virat.demo.model.Admin;
import com.virat.demo.repository.AdminRepository;
import com.virat.demo.repository.FlightRepository;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	public FlightRepository fr;
	
	@Autowired
	public AdminRepository ar;
	
	
	
	public String verifyLogin(String username, String password, int key) {
		String ack ="";
		if(username.substring(0, 3).equalsIgnoreCase("AVA")) {
			if(ar.existsById(username)) {
				Admin a = ar.getById(username);
				if(a.getPassword().equals(password)) {
					ack +="Hello admin";
				}
				else {
					ack +="Wrong username/password";
				}
			}
			else {
				ack +="Wrong username/password";
			}
		}
		
		
		return ack;
	}//loginVerify

}
