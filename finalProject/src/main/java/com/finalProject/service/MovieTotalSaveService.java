package com.finalProject.service;

import java.util.List;

import com.finalProject.dto.FP_MOVIETOTAL_DTO;
import com.finalProject.dto.FP_MOVIE_DTO;
import com.finalProject.dto.FP_PLAYKIND_DTO;
import com.finalProject.dto.FP_REGION_DTO;
import com.finalProject.dto.FP_THEATER_DTO;

public interface MovieTotalSaveService {
	
	public List<FP_MOVIE_DTO> getMovieLists() throws Exception;
	public List<FP_PLAYKIND_DTO> getPkLists() throws Exception;
	public List<FP_REGION_DTO> getRegionLists() throws Exception;
	
	public List<FP_THEATER_DTO> getTheaterLists(int nRdNum) throws Exception;	
	
	public int maxNum() throws Exception;
	public int getTotalSeat(int theaterNum) throws Exception;
	public void insertData(FP_MOVIETOTAL_DTO dto) throws Exception;
}
