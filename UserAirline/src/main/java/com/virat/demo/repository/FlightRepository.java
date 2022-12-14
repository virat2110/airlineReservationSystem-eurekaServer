package com.virat.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.virat.demo.model.Flight;

@Repository
public interface FlightRepository extends JpaRepository<Flight, Integer>{

}
