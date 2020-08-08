package com.project.model;

import org.springframework.stereotype.Component;

@Component
public class OtpSystem {
	private String mobileno;
	private String otp;
	private long expire;
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getOtp() {
		return otp;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}
	public long getExpire() {
		return expire;
	}
	public void setExpire(long expire) {
		this.expire = expire;
	}
	@Override
	public String toString() {
		return "OtpSystem [mobileno=" + mobileno + ", otp=" + otp + ", expire=" + expire + "]";
	}
	
}
