package com.virat.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User {
	
	@Id
	@Column(name= "username")
	private String username;
	@Column(name = "name")
	private String name;
	@Column(name = "email")
	private String email;
	@Column(name = "gender")
	private String gender;
	@Column(name = "age")
	private int age;
	@Column(name = "mobile")
	private long mobile;
	@Column(name = "address")
	private String address;
	@Column(name = "password")
	private String password;
	@Column(name = "lastSource")
	public String lastSouce;
	@Column(name = "lastDest")
	public String lastDest;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLastSouce() {
		return lastSouce;
	}
	public void setLastSouce(String lastSouce) {
		this.lastSouce = lastSouce;
	}
	public String getLastDest() {
		return lastDest;
	}
	public void setLastDest(String lastDest) {
		this.lastDest = lastDest;
	}
	
	

}
