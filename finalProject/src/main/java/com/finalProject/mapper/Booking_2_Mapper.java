package com.finalProject.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.finalProject.dto.FP_MOVIETOTAL_DTO;
import com.finalProject.dto.FP_MOVIE_DTO;
import com.finalProject.dto.FP_PLAYKIND_DTO;
import com.finalProject.dto.FP_REGIONDETAIL_DTO;
import com.finalProject.dto.FP_REGION_DTO;
import com.finalProject.dto.FP_THEATER_DTO;
@Mapper
public interface Booking_2_Mapper {

	public FP_MOVIETOTAL_DTO getMt(int num) throws Exception;
	public FP_MOVIE_DTO getMovie(int num) throws Exception;
	public FP_PLAYKIND_DTO getPlayKind(int num) throws Exception;
	public FP_REGION_DTO getRegion(int num) throws Exception;
	public FP_REGIONDETAIL_DTO getRegionDetail(int num) throws Exception;
	public FP_THEATER_DTO getTheater(int num) throws Exception;
}
