package com.finalProject.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.finalProject.dto.FP_REGION_DTO;
import com.finalProject.dto.FP_THEATER_DTO;

@Mapper
public interface MovieTheaterSaveMapper {
	public List<FP_REGION_DTO> getRegionLists() throws Exception;
	public int maxNum() throws Exception;
	public void insertData(FP_THEATER_DTO dto) throws Exception;
}
