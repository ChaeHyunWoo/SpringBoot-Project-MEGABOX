package com.finalProject.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.finalProject.dto.MovieListDTO;

@Mapper //Mapper로 등록
public interface MovieListMapper {
	
	// 영화 리스트 뿌리기
	public List<MovieListDTO> readData() throws Exception;

}
