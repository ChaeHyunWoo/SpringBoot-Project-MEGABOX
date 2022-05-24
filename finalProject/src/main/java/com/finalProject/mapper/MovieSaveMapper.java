package com.finalProject.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.finalProject.dto.FP_MOVIE_DTO;
import com.finalProject.dto.FP_VIEWINGCLASS_DTO;

@Mapper
public interface MovieSaveMapper {
	public List<FP_VIEWINGCLASS_DTO> getViewingClassLists() throws Exception;
	public int maxNum() throws Exception;
	public void insertData(FP_MOVIE_DTO dto) throws Exception;
}
