package com.virat.demo.service;

import java.util.List;

import com.virat.demo.model.User;

public interface UserService {
	public String addUser(User u);
	public String verifyLogin(String username, String password, int key);
	public User userById(String username);
	public String updateSD(User u);
	public List<String> latestSearch(String username);

}
