package com.finalProject.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.finalProject.dto.FP_MOVIETOTAL_DTO;
import com.finalProject.dto.FP_MOVIE_DTO;
import com.finalProject.dto.FP_PAY_DTO;
import com.finalProject.dto.FP_PLAYKIND_DTO;
import com.finalProject.dto.FP_REGIONDETAIL_DTO;
import com.finalProject.dto.FP_REGION_DTO;
import com.finalProject.dto.FP_THEATER_DTO;
import com.finalProject.dto.FP_VIEWINGCLASS_DTO;

@Mapper
public interface MovieTotalSaveMapper {
	
	public List<FP_MOVIE_DTO> getMovieLists() throws Exception;
	public List<FP_PLAYKIND_DTO> getPkLists() throws Exception;
	public List<FP_REGION_DTO> getRegionLists() throws Exception;
	
	public List<FP_THEATER_DTO> getTheaterLists(int nRdNum) throws Exception;
	
	public int maxNum() throws Exception;
	public int getTotalSeat(int theaterNum) throws Exception;
	public void insertData(FP_MOVIETOTAL_DTO dto) throws Exception;
}
