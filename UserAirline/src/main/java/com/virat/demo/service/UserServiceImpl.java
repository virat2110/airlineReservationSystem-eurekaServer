package com.virat.demo.service;
import java.util.ArrayList;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virat.demo.model.User;

import com.virat.demo.repository.UserRepository;

import com.virat.demo.validation.UserRegValidation;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	public UserRepository ur;
	


	public String addUser(User u) {	
		UserRegValidation urv = new UserRegValidation();
		if(ur.existsById(u.getUsername())  || "AVA".equalsIgnoreCase(u.getUsername().substring(0,3))) {
			return "user name already exists";
		}
		else {
			List<User> us = ur.findAll();
			if(urv.valEmail(us, u.getEmail())) {
				return "Email already registered";
			}
			else if(urv.valMobile(us, u.getMobile())) {
				return "Mobile aready registered";
			}
			ur.save(u);
			return "User registered";
		}
	}//addUser

	@SuppressWarnings("deprecation")
	@Override
	public String verifyLogin(String username, String password, int key) {
		String ack ="";
		
			if(ur.existsById(username)) {
				User u = ur.getById(username);
				if(u.getPassword().equals(password)) {
					ack +="logged";
				}
				else {
					ack +="Wrong username/password";
				}
				}
				else {
					ack +="Wrong username/password";
				}
		
		return ack;
	}//loginVerify

	@Override
	public User userById(String username) {
		if(ur.existsById(username)) {
			User u = ur.getById(username);
			return u;
		}
		else {
			return null;
		}
		
	}

	@Override
	public String updateSD(User u) {
		ur.save(u);
		return "Updated";
		
	}

	@Override
	public List<String> latestSearch(String username) {
		User u = ur.getById(username);
		List<String> l = new ArrayList<>();
		l.add(u.getLastSouce());
		l.add(u.getLastDest());
		return l;
	}



}
