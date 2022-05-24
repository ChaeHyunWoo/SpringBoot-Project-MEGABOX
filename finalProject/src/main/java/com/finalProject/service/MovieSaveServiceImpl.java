package com.finalProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.dto.FP_MOVIE_DTO;
import com.finalProject.dto.FP_VIEWINGCLASS_DTO;
import com.finalProject.mapper.MovieSaveMapper;

@Service
public class MovieSaveServiceImpl implements MovieSaveService{
	
	@Autowired
	private MovieSaveMapper movieSaveMapper; // BoardMapper 의존성 주입

	@Override
	public List<FP_VIEWINGCLASS_DTO> getViewingClassLists() throws Exception {
		return movieSaveMapper.getViewingClassLists();
	}
	
	@Override
	public int maxNum() throws Exception {

		 return movieSaveMapper.maxNum(); 
	}
	
	@Override
	public void insertData(FP_MOVIE_DTO dto) throws Exception {
		movieSaveMapper.insertData(dto); 
	}
	
	
}
