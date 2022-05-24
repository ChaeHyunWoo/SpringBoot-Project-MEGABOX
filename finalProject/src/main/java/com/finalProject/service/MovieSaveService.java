package com.finalProject.service;

import java.util.List;

import com.finalProject.dto.FP_MOVIE_DTO;
import com.finalProject.dto.FP_VIEWINGCLASS_DTO;

public interface MovieSaveService {
	public List<FP_VIEWINGCLASS_DTO> getViewingClassLists() throws Exception;
	public int maxNum() throws Exception;
	public void insertData(FP_MOVIE_DTO dto) throws Exception;
}
