package com.finalProject.service;

import java.util.List;

import com.finalProject.dto.MovieListDTO;

public interface MovieListService {
	
	public List<MovieListDTO> readData() throws Exception;
	
}
