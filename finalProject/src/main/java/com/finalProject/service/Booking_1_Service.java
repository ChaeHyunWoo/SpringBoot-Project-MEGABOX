package com.finalProject.service;

import java.util.List;

import com.finalProject.dto.FP_MOVIETOTAL_DTO;
import com.finalProject.dto.FP_MOVIE_DTO;
import com.finalProject.dto.FP_PLAYKIND_DTO;
import com.finalProject.dto.FP_REGIONDETAIL_DTO;
import com.finalProject.dto.FP_REGION_DTO;
import com.finalProject.dto.FP_THEATER_DTO;
import com.finalProject.dto.FP_VIEWINGCLASS_DTO;

public interface Booking_1_Service {
	public List<FP_MOVIE_DTO> getMovieLists() throws Exception;
	public FP_VIEWINGCLASS_DTO getVc(int num) throws Exception;	
	
	public FP_MOVIE_DTO getMovieData(int num) throws Exception;
	public List<FP_REGION_DTO> getRegionLists() throws Exception;
	public List<FP_REGIONDETAIL_DTO> getRegionDetailLists(int regionNum) throws Exception;	
	public List<FP_MOVIETOTAL_DTO> getMovieTotalLists(FP_MOVIETOTAL_DTO dto) throws Exception;	
	
	public FP_MOVIE_DTO getMovie(int num) throws Exception;	
	public FP_PLAYKIND_DTO getPlayKind(int num) throws Exception;	
	public FP_REGION_DTO getRegion(int num) throws Exception;	
	public FP_REGIONDETAIL_DTO getRegionDetail(int num) throws Exception;	
	public FP_THEATER_DTO getTheater(int num) throws Exception;	
}
