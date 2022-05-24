package com.finalProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.dto.MovieListDTO;
import com.finalProject.mapper.MovieListMapper;


// MovieListService 인터페이스를 구현한 클래스

@Service("movieListService") // 객체 생성
public class MovieListServiceImpl implements MovieListService{
	
	//movieListMapper에 있는 sql문을 MovieListServiceImpl로 읽어와서 의존성주입하여 객체생성 한것.
	@Autowired
	private MovieListMapper movieListMapper;//의존성 주입
	


	//영화 목록 불러오기
	@Override
	public List<MovieListDTO> readData() throws Exception {
		return movieListMapper.readData();
	}
	
	

}
