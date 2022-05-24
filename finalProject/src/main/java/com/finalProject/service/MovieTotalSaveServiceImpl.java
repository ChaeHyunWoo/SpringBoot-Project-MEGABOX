package com.finalProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.dto.FP_MOVIETOTAL_DTO;
import com.finalProject.dto.FP_MOVIE_DTO;
import com.finalProject.dto.FP_PAY_DTO;
import com.finalProject.dto.FP_PLAYKIND_DTO;
import com.finalProject.dto.FP_REGIONDETAIL_DTO;
import com.finalProject.dto.FP_REGION_DTO;
import com.finalProject.dto.FP_THEATER_DTO;
import com.finalProject.dto.FP_VIEWINGCLASS_DTO;
import com.finalProject.mapper.MovieTotalSaveMapper;

@Service
public class MovieTotalSaveServiceImpl implements MovieTotalSaveService{

	@Autowired
	private MovieTotalSaveMapper movieTotalSaveMapper;
	
	@Override
	public List<FP_MOVIE_DTO> getMovieLists() throws Exception {
		return movieTotalSaveMapper.getMovieLists();
	}

	@Override
	public List<FP_PLAYKIND_DTO> getPkLists() throws Exception {
		return movieTotalSaveMapper.getPkLists();
	}
	
	@Override
	public List<FP_REGION_DTO> getRegionLists() throws Exception {
		return movieTotalSaveMapper.getRegionLists();
	}
	
	@Override
	public List<FP_THEATER_DTO> getTheaterLists(int nRdNum) throws Exception {
		return movieTotalSaveMapper.getTheaterLists(nRdNum);
	}
	
	@Override
	public int maxNum() throws Exception {

		 return movieTotalSaveMapper.maxNum(); 
	}
	
	@Override
	public int getTotalSeat(int theaterNum) throws Exception {

		 return movieTotalSaveMapper.getTotalSeat(theaterNum); 
	}
	
	@Override
	public void insertData(FP_MOVIETOTAL_DTO dto) throws Exception {
		movieTotalSaveMapper.insertData(dto); 
	}
	
}
