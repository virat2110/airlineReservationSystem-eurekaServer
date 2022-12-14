package com.virat.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virat.demo.model.Coupon;
import com.virat.demo.repository.CouponRepository;

@Service
public class CouponServiceImpl implements CouponService {
	
	@Autowired
	public CouponRepository cr;

	@Override
	public String addCoupon(Coupon c) {
		if(cr.existsById(c.getName()))  {
			return "Coupon exits";
		}
		else {
			cr.save(c);
			return "Coupon saved";
			
		}
	}

	@Override
	public int discount(String name) {
		if(cr.existsById(name)) {
			Coupon c = cr.getById(name);
			if(c.getActive() <=0) {
				return -1;
			}
			else {
				return c.getPercentage();
			}
		}
		else {
			return 0;
		}
	}

	@Override
	public int disPrice(int price, int per, char c) {
		int min =10;
		int max = per;
		int p = 0;
		if(c=='F') {
			p = per;
		}
		else {
			p = generate(min, max);
		}
		p = 100-p;
		int sum = (int)(price*p)/100;
		return sum;
	}
	
	public static int generate(int min, int max) {
		return (int) ((Math.random() * (max - min)) + min);
	}

}
