package com.virat.demo.controller;

import java.util.List;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.virat.demo.model.Coupon;
import com.virat.demo.model.Flight;
import com.virat.demo.service.AdminService;
import com.virat.demo.service.CouponService;
import com.virat.demo.service.FlightService;
import com.virat.demo.validation.UserRegValidation;



@Controller
@RequestMapping("/admin")
public class MyController {
	
	@Autowired
	public AdminService as;
	
	@Autowired
	public FlightService fs;
	
	@Autowired
	public CouponService cs;
	
	
	@RequestMapping("/")
	public String index(HttpServletRequest request) {
		HttpSession session = request.getSession();
		return "index1";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "index1";
	}
	
	@RequestMapping("/admin")
	public String admin(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("aUser") !=null) {
//			List<String> adminDash = as.adminFlightDetails();
//			request.setAttribute("adminDash", adminDash);
//			
//			
			
			return "adminDash";
	}
		else {
			return "login";
		}

	}
	
	@RequestMapping(path="LoginData",method = RequestMethod.POST)
    public String loginUser(ModelMap model,  HttpServletRequest request) {
		HttpSession session = request.getSession();
		String username = request.getParameter("t1");
		String pass = request.getParameter("t2");
		int key = Integer.parseInt(request.getParameter("t3"));
		UserRegValidation urv = new UserRegValidation();
		String password = urv.encrypt(pass, key);
		
		String ack = as.verifyLogin(username, password, key);
		model.put("errorLogin", ack);
		if(ack.equalsIgnoreCase("Hello admin")) {
			
			session.setAttribute("aUser", username);
			return "adminDash";
		}
		else {
			return "login";
		}
	}//login
	
	@RequestMapping("/addFlight")
	public String addFlight(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("aUser") !=null) {
		return "addFlight";
		}
		else {
			return "login";
		}
	}
	
	
	@RequestMapping(path="AddFlight",method = RequestMethod.POST)
    public String addFlight(ModelMap model,  HttpServletRequest request)  {
		HttpSession session = request.getSession();
		if(session.getAttribute("aUser") !=null) {
			int id = Integer.parseInt(request.getParameter("t1"));
			String name = request.getParameter("t2");
			String source = request.getParameter("t3");
			String dest = request.getParameter("t4");
			String departure = request.getParameter("t5");
			String arrival = request.getParameter("t6");
			int price = Integer.parseInt(request.getParameter("t7"));
			
			Flight f = new Flight();
			f.setArrival(arrival);
			f.setDeparture(departure);
			f.setFlightId(id);
			f.setDest(dest);
			f.setSource(source);
			f.setPrice(price);
			f.setName(name);
			f.setDelay("0");
			f.setStatus("running");
			
			String ack = fs.addFlight(f);
			model.put("msg", ack);
			return "addFlight";
			
		}
		else {
			return"login";
		}
	}//addFlight
	
	@RequestMapping(path="flightList", method=RequestMethod.GET)
	public String allFlight(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("aUser") !=null) {
			List<Flight> l = fs.allFlight();
			session.setAttribute("allFlight", l);
			return "flightData";
		}
		else {
			return "login";
		}
}
	
	@RequestMapping(path="flightList/{id}", method = RequestMethod.GET)
	public String editFlightById(HttpServletRequest request, @PathVariable int id) {
		Flight f = fs.flightById(id);
		HttpSession session = request.getSession();
		session.setAttribute("flightEdit", f);
		return "editFlight";
	}
	
	@RequestMapping(path="flightList/editFlightData",method = RequestMethod.POST)
	public String editFlight(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Flight f = (Flight) session.getAttribute("flightEdit");
		if(request.getParameter("t3") != "") {
			f.setDeparture(request.getParameter("t3"));
		}
		
		if(request.getParameter("t4") != "") {
			f.setArrival(request.getParameter("t4"));
		}
		
		if(request.getParameter("t5") != "") {
			f.setPrice(Integer.parseInt(request.getParameter("t5")));
		}
		if(request.getParameter("t6") != "") {
			f.setStatus(request.getParameter("t6"));
		}
		if(request.getParameter("t7") != "") {
			f.setDelay(request.getParameter("t7"));
		}
		String ack = fs.Update(f);
		session.setAttribute("msgEFD", ack);
		
		
		return "editFlight";
	}//Edited flight data
	
	@RequestMapping("/coupon")
	public String coupon(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("aUser") !=null) {
			return "addCoupon";
		}
		else {
			return "errorAdmin";
		}
	}
	
	@RequestMapping(path="AddCoupon", method=RequestMethod.POST)
	public String addCoupon(HttpServletRequest request) {
		String name = request.getParameter("t1");
		int per = Integer.parseInt(request.getParameter("t2"));
		int active = Integer.parseInt(request.getParameter("t3"));
		Coupon c = new Coupon();
		c.setName(name);
		c.setPercentage(per);
		c.setActive(active);
		
		String ack = cs.addCoupon(c);
		HttpSession session = request.getSession();
		session.setAttribute("couponMsg", ack);
		return "addCoupon";
	}//addingCoupon
	
	
	@RequestMapping(path="/delayedFlight",method = RequestMethod.GET)
	public String delayedFlight(HttpServletRequest request) {
		List<Flight> l = fs.delayedFlight();
		request.setAttribute("delayflight", l);
		return "delayFlight";
	}
	
	
}
