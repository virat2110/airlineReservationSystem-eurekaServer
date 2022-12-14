package com.virat.demo.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.virat.demo.model.Booking;
import com.virat.demo.repository.BookingRepository;

@Service
public class BookingServiceImpl implements BookingService{
	
	@Autowired
	public BookingRepository br;

	@Override
	public String bookTicket(Booking b) {
		br.save(b);
		return "Ticket Booked";
		
		
	}
	
	public int pnrGenerate() {
		boolean repeat = true;
		int pnr = generate();
		while(repeat) {
			if(br.existsById(pnr)) {
				pnr = generate();
			}
			else {
				repeat = false;
				break;
			}
		}
		
		return pnr;
		
	}
	public static int generate() {
		int min = 1000;
		int max = 9999;
		return (int) ((Math.random() * (max - min)) + min);
	}

}
