package com.finalProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.dto.FP_REGION_DTO;
import com.finalProject.dto.FP_THEATER_DTO;
import com.finalProject.mapper.MovieTheaterSaveMapper;

@Service
public class MovieTheaterSaveServiceImpl implements MovieTheaterSaveService{

	@Autowired
	private MovieTheaterSaveMapper movieTheaterSaveMapper;
	
	@Override
	public List<FP_REGION_DTO> getRegionLists() throws Exception {
		return movieTheaterSaveMapper.getRegionLists();
	}
	
	@Override
	public int maxNum() throws Exception {

		 return movieTheaterSaveMapper.maxNum(); 
	}
	
	@Override
	public void insertData(FP_THEATER_DTO dto) throws Exception {
		movieTheaterSaveMapper.insertData(dto); 
	}
	
}
