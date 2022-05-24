package com.finalProject.service;

import java.util.List;

import com.finalProject.dto.FP_REGION_DTO;
import com.finalProject.dto.FP_THEATER_DTO;

public interface MovieTheaterSaveService {
	public List<FP_REGION_DTO> getRegionLists() throws Exception;
	public int maxNum() throws Exception;
	public void insertData(FP_THEATER_DTO dto) throws Exception;
}
