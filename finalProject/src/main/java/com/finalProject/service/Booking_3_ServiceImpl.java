package com.finalProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.dto.FP_PAY_DTO;
import com.finalProject.mapper.Booking_3_Mapper;

@Service
public class Booking_3_ServiceImpl implements Booking_3_Service {

	@Autowired
	private Booking_3_Mapper booking_Mapper; // BoardMapper 의존성 주입

	@Override
	public int maxNum() throws Exception {

		 return booking_Mapper.maxNum(); 
	}

	@Override
	public void insertData(FP_PAY_DTO dto) throws Exception {
		 booking_Mapper.insertData(dto); 
	}

}
