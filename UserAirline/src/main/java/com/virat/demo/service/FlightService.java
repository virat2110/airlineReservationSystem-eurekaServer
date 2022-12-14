package com.virat.demo.service;

import java.util.List;

import com.virat.demo.model.Flight;

public interface FlightService {
	
	public List<Flight> flightList(String source, String dest);
	public Flight flightById(int id);
	public List<Flight> allFlight();
	public String Update(Flight f);
	public List<Flight> delayedFlight();
	public List<String> sorce();
	public List<String> dest();
	

}
