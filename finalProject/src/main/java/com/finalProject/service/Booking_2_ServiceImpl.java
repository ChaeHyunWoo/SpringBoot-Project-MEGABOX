package com.finalProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.dto.FP_MOVIETOTAL_DTO;
import com.finalProject.dto.FP_MOVIE_DTO;
import com.finalProject.dto.FP_PLAYKIND_DTO;
import com.finalProject.dto.FP_REGIONDETAIL_DTO;
import com.finalProject.dto.FP_REGION_DTO;
import com.finalProject.dto.FP_THEATER_DTO;
import com.finalProject.mapper.Booking_1_Mapper;
import com.finalProject.mapper.Booking_2_Mapper;

@Service
public class Booking_2_ServiceImpl implements Booking_2_Service{

	@Autowired
	private Booking_2_Mapper booking_2_Mapper;
	
	@Override
	public FP_MOVIETOTAL_DTO getMt(int num) throws Exception {
		return booking_2_Mapper.getMt(num);
	}
	
	@Override
	public FP_MOVIE_DTO getMovie(int num) throws Exception {
		return booking_2_Mapper.getMovie(num);
	}
	
	@Override
	public FP_PLAYKIND_DTO getPlayKind(int num) throws Exception {
		return booking_2_Mapper.getPlayKind(num);
	}
	
	@Override
	public FP_REGION_DTO getRegion(int num) throws Exception {
		return booking_2_Mapper.getRegion(num);
	}
	
	@Override
	public FP_REGIONDETAIL_DTO getRegionDetail(int num) throws Exception {
		return booking_2_Mapper.getRegionDetail(num);
	}
	
	@Override
	public FP_THEATER_DTO getTheater(int num) throws Exception {
		return booking_2_Mapper.getTheater(num);
	}
	
	
}
