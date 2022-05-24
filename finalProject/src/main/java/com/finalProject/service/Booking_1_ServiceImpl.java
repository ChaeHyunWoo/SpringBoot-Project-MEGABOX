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
import com.finalProject.dto.FP_VIEWINGCLASS_DTO;
import com.finalProject.mapper.Booking_1_Mapper;

@Service
public class Booking_1_ServiceImpl implements Booking_1_Service {

	@Autowired
	private Booking_1_Mapper booking_1_Mapper;

	@Override
	public List<FP_MOVIE_DTO> getMovieLists() throws Exception {
		return booking_1_Mapper.getMovieLists();
	}
	
	@Override
	public FP_VIEWINGCLASS_DTO getVc(int num) throws Exception {
		return booking_1_Mapper.getVc(num);
	}
	
	@Override
	public FP_MOVIE_DTO getMovieData(int num) throws Exception {
		return booking_1_Mapper.getMovieData(num);
	}
	
	@Override
	public List<FP_REGION_DTO> getRegionLists() throws Exception {
		return booking_1_Mapper.getRegionLists();
	}
	
	@Override
	public List<FP_REGIONDETAIL_DTO> getRegionDetailLists(int regionNum) throws Exception {
		return booking_1_Mapper.getRegionDetailLists(regionNum);
	}

	@Override
	public List<FP_MOVIETOTAL_DTO> getMovieTotalLists(FP_MOVIETOTAL_DTO dto) throws Exception {
		return booking_1_Mapper.getMovieTotalLists(dto);
	}

	@Override
	public FP_MOVIE_DTO getMovie(int num) throws Exception {
		return booking_1_Mapper.getMovie(num);
	}

	@Override
	public FP_PLAYKIND_DTO getPlayKind(int num) throws Exception {
		return booking_1_Mapper.getPlayKind(num);
	}

	@Override
	public FP_REGION_DTO getRegion(int num) throws Exception {
		return booking_1_Mapper.getRegion(num);
	}

	@Override
	public FP_REGIONDETAIL_DTO getRegionDetail(int num) throws Exception {
		return booking_1_Mapper.getRegionDetail(num);
	}

	@Override
	public FP_THEATER_DTO getTheater(int num) throws Exception {
		return booking_1_Mapper.getTheater(num);
	}
	
}
