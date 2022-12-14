package com.virat.demo.validation;

import java.util.List;

public class UserRegValidation {
	
	
	
	public String encrypt(String password, int key) {
		String pass ="";
		for(int i=0;i<password.length();i++) {
			char c = password.charAt(i);
			int ascii = (int) c;
			if(Character.isAlphabetic(c)) {
				if(Character.isUpperCase(c)) {
					ascii = ascii+key+8;
				}
				else {
					ascii = ascii+key+4;
				}
				
			}
			else if(Character.isDigit(c)) {
				ascii = ascii+key+6;
			}
			else {
				ascii = ascii+key+3;
			}
			if(ascii>127) {
				ascii = ascii%127;
			}
			char ch = (char)ascii;
			pass +=ch;
			
		}
		
		return pass;
	}
	
}
