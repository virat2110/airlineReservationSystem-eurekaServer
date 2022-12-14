package com.virat.demo.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.virat.demo.model.Booking;
import com.virat.demo.model.Flight;
import com.virat.demo.model.User;
import com.virat.demo.repository.UserRepository;
import com.virat.demo.service.BookingService;
import com.virat.demo.service.CouponService;
import com.virat.demo.service.FlightService;
import com.virat.demo.service.UserService;
import com.virat.demo.validation.UserRegValidation;

@Controller
@RequestMapping("/users")
public class MyController {
	

	@Autowired
	public UserService us;
	@Autowired
	public FlightService fs;
	
	@Autowired
	public UserRepository ur;
	
	@Autowired
	public CouponService cs;
	
	@Autowired
	public BookingService bs;
	
	@RequestMapping("/")
	public String index(HttpServletRequest request) {
		HttpSession session = request.getSession();
		return "index1";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping(path="RegisterData",method = RequestMethod.POST)
    public String userReg(ModelMap model,  HttpServletRequest request) {
		String un = request.getParameter("t1");
		String name = request.getParameter("t2");
		String email = request.getParameter("t3");
		String gender = request.getParameter("t4");
		int age = Integer.parseInt(request.getParameter("t5"));
		long mobile = Long.parseLong(request.getParameter("t6"));
		String address = request.getParameter("t7");
		String pass = request.getParameter("t8");
		String repass = request.getParameter("t9");
		int key = Integer.parseInt(request.getParameter("t10"));
		
		if(pass.equals(repass)) {
			User u = new User();
			u.setUsername(un);
			u.setName(name);
			u.setAddress(address);
			u.setAge(age);
			u.setEmail(email);
			u.setMobile(mobile);
			u.setLastSouce("Source");
			u.setLastDest("Destination");
			
			UserRegValidation urv = new UserRegValidation();
			u.setPassword(urv.encrypt(pass, key));
			u.setGender(gender);
			String ack = us.addUser(u);
			model.put("error" , ack);
			return "register";
		}
		else {
			model.put("error" , "password mismatch");
			return "register";
		}
	}//register
	
	@RequestMapping(path="LoginData",method = RequestMethod.POST)
    public String loginUser(ModelMap model,  HttpServletRequest request) {
		HttpSession session = request.getSession();
		String username = request.getParameter("t1");
		String pass = request.getParameter("t2");
		int key = Integer.parseInt(request.getParameter("t3"));
		UserRegValidation urv = new UserRegValidation();
		String password = urv.encrypt(pass, key);
		
		String ack = us.verifyLogin(username, password, key);
		model.put("errorLogin", ack);
		
		if(ack.equalsIgnoreCase("logged")) {
			session.setAttribute("uUser", username);
			return "redirect:http:searchflight";
		}
		else {
			return "login";
		}
	}//login
	
	@RequestMapping("/searchflight")
	public String searchFlight(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("uUser") !=null) {
			List<String> ls = fs.sorce();
			List<String> ld = fs.dest();
			String username = (String) session.getAttribute("uUser");
			List<String> latest = us.latestSearch(username);
			request.setAttribute("latest", latest);
			request.setAttribute("ls", ls);
			request.setAttribute("ld", ld);
			return "searchFlightLogged";
		}
		else {
			return "login";
		}
	}//search flight
	
	@RequestMapping(path="searchFlight",method = RequestMethod.POST)
    public String searchFlight(ModelMap model,  HttpServletRequest request)  {
		HttpSession session = request.getSession();
		if(session.getAttribute("uUser") != null) {
			String source = request.getParameter("t1");
			String dest = request.getParameter("t2");
			List<Flight> list = fs.flightList(source, dest);
			if(list.size() ==0) {
				
				session.setAttribute("msga", "No flight Found");
				return "redirect:/searchflight";
			}
			else {
				String un = (String) session.getAttribute("uUser");
				User u = ur.getById(un);
				u.setLastSouce(source);
				u.setLastDest(dest);
				 us.updateSD(u);
				session.setAttribute("source", source);
				session.setAttribute("dest", dest);
				request.setAttribute("flightList", list);
				return "flightListUser";
			}
			
		}
		else {
			return "login";
		}
	}//searchFlight
	
	@RequestMapping(path = "/searchLast/{source}/{dest}", method = RequestMethod.GET)
	public String viewFlight(HttpServletRequest request, @PathVariable String source, @PathVariable String dest) {
		
		HttpSession session =request.getSession();
		List<Flight> list = fs.flightList(source, dest);
		if(list.size() ==0) {
			
			
			return "redirect:/searchflight";
		}
		else {
			request.setAttribute("flightList", list);
			return "flightListUser";
		}
		
	}//latest source-dest
	
	@RequestMapping(path="flight/{id}",method = RequestMethod.GET)
	public String flightTxn(HttpServletRequest request, @PathVariable int id) {
		HttpSession session = request.getSession();
		if(session.getAttribute("uUser") != null) {
			Flight f = fs.flightById(id);
			if(f == null) {
				return "redirect:/searchflight";
			}
			else {
				String user = (String)session.getAttribute("uUser");
				User u = us.userById(user);
				if(user == null) {
					return "redirect:/searchflight";
				}
				else {
					session.setAttribute("fliightId", id);
					session.setAttribute("userObj", u);
					session.setAttribute("flightObj", f);
					return "transaction";
				}
			}
		}
		else {
			return "login";
		}
	}//flight & txn page
	
	@RequestMapping(path="ApplyCoupon", method = RequestMethod.GET)
	public String applyCoupon(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("uUser") != null) {
			String name = request.getParameter("t1");
			int per = cs.discount(name);
			
			String ack = "";
			if(per ==0) {
				ack+= "Not a valid coupon";
				session.setAttribute("couponMsg", ack);
			}
			else if(per == -1) {
				ack+="Coupon expired";
				session.setAttribute("couponMsg", ack);
			}
			else {
				if(session.getAttribute("disPrice") ==null) {
				Flight f = (Flight) session.getAttribute("flightObj");
				int price = cs.disPrice(f.getPrice(), per, name.charAt(0));
				
				session.setAttribute("disPrice", price);
				ack+= "Discounted Price:  ₹ " + String.valueOf(price);
				session.setAttribute("couponMsg", ack);
				}
				
			}
			if(session.getAttribute("couponMsg")=="") {
				session.setAttribute("couponMsg", ack);
			}
			return "transaction";
		}
		else {
			return "login";
		}
	}//couponApplied
	
	@RequestMapping("/bookTicket")
	public String booking(HttpServletRequest request)  {
		HttpSession session = request.getSession();
		if(session.getAttribute("uUser") != null) {
			String user = (String)session.getAttribute("uUser");
			if((Flight) session.getAttribute("flightObj") == null) {
				return "redirect:/searchflight";
			}
			Flight f = (Flight) session.getAttribute("flightObj");
			int price =0;
			if( session.getAttribute("disPrice")==null) {
				price = f.getPrice();
				session.setAttribute("disPrice", price);
			}
			else {
				price = (int) session.getAttribute("disPrice");
			}
			Booking b = new Booking();
			b.setFlightid(f.getFlightId());
			b.setPrice(price);
			b.setStatus("Booked");
			b.setUsername(user);
			Date d = new Date();
			Timestamp timestamp2 = new Timestamp(d.getTime());
			b.setTimestamp(timestamp2);
			int pnr = bs.pnrGenerate();
			b.setPnr(pnr);
			session.setAttribute("pnr", pnr);
			bs.bookTicket(b);
			
			return "confirmation";
		}
		else {
			return "/login";
		}
	}// Ticket booking confirmation
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "logout";
	}
	
	@RequestMapping(path="/delayedFlight",method = RequestMethod.GET)
	public String delayedFlight(HttpServletRequest request) {
		List<Flight> l = fs.delayedFlight();
		request.setAttribute("delayflight", l);
		return "delayFlight";
	}
	
	

}
