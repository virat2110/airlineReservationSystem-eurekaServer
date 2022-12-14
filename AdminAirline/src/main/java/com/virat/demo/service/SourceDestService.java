package com.virat.demo.service;
import java.util.List;

import com.virat.demo.model.SourceDest;
public interface SourceDestService {
	
	public String addSourceDest(SourceDest sd);
	public List<String> getSource();
	public List<String> getDest();
	

}
