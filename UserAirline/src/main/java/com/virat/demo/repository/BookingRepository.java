package com.virat.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.virat.demo.model.Booking;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer>{

}
