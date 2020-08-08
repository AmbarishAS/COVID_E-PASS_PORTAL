package com.project.service;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

import com.project.model.*;

@Component
public class OtpSevice {
	@Autowired
	OtpSystem otp;
	private final static String ACCOUNT_SID="AC33e3588a8790d0e803bf355abb515c54";
	private final static String AUTH_TOKEN="0b373030e73cd92d11b0bf095bb7084d";
	Map<String,OtpSystem>data=new HashMap<>();
	static
	{
		Twilio.init(ACCOUNT_SID,AUTH_TOKEN);
	}
	public String sendOTP(String mobileno)
	{
		try
		{
		System.out.print(data);
		otp.setMobileno(mobileno);
		otp.setOtp(String.valueOf(((int)(Math.random()*(10000-1000)))+1000));
		otp.setExpire(System.currentTimeMillis()+30000);
		data.put(mobileno, otp);
		Message.creator(new PhoneNumber(mobileno), new PhoneNumber("+12024105553"),"Your OTP is "+otp.getOtp()+" Use it within 30 Seconds").create();
		return "otp is sent sucessfully";
		}
		catch(Exception e)
		{
			System.out.println(e);
			return "Invalid mobile Number";
		}
	}
	public String verifyOTP(String mobileno, OtpSystem otpSystem) {
		try
		{
		System.out.print(data);
		if(otpSystem.getOtp()==null)
			return "null otp";
		if(data.containsKey(mobileno))
		{
			OtpSystem os=data.get(mobileno);
			data.clear();
			if(os.getExpire()>=System.currentTimeMillis())
			{
				if(otpSystem.getOtp().equals(os.getOtp()))
				{
					return "OTP verified Sucessfully";
				}
			}
			return "OTP Expired";
		}
		return "MobileNumber Not Found";
		}
		catch(Exception e)
		{
			System.out.print(e);
			return "Mobile no Not Found";
		}
	}

}
