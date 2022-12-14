package com.virat.demo.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virat.demo.model.Flight;
import com.virat.demo.model.SourceDest;
import com.virat.demo.repository.FlightRepository;

@Service
public class FlightServiceImpl implements FlightService{
	
	@Autowired
	public FlightRepository fr;
	
	@Autowired
	public SourceDestService sds;

	@Override
	public String addFlight(Flight f) {
		String ack="";
		if(fr.existsById(f.getFlightId())) {
			ack+="Flight id exists";
		}
		else {
			fr.save(f);
			SourceDest sd = new SourceDest();
			sd.setSource(f.getSource());
			sd.setDest(f.getDest());
			String a = sds.addSourceDest(sd);
			ack+="Flight added   ";
			ack+=a;
		}
		
		return ack;
	}

	@Override
	public List<Flight> flightList(String source, String dest) {
		List<Flight> l = fr.findAll();
		List<Flight> list = new ArrayList<Flight>();
		for(Flight f : l) {
			if(f.getSource().equals(source)  &&  f.getDest().equals(dest) && f.getStatus().equalsIgnoreCase("running")) {
				list.add(f);
			}
		}
		
		return list;
	}

	@Override
	public Flight flightById(int id) {
		if(fr.existsById(id)) {
			Flight f = fr.getById(id);
			return f;
		}
		else {
			return null;
		}
	}

	@Override
	public List<Flight> allFlight() {
		List<Flight> flight = fr.findAll();
		return flight;
	}

	@Override
	public String Update(Flight f) {
		fr.save(f);
		return "Updated";
	}

	@Override
	public List<Flight> delayedFlight() {
		List<Flight> l = fr.findAll();
		
		return l;
	}

	

}
