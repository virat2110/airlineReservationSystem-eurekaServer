package com.virat.demo.service;

import com.virat.demo.model.Coupon;

public interface CouponService {
	public String addCoupon(Coupon c);
	public int discount(String name);
	public int disPrice(int price, int per, char c);

}
