package com.finalProject.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.finalProject.dto.BoardDTO2;



@Mapper
public interface BoardMapper2 {
	
	public int maxNum() throws Exception;
	
	public void insertData(BoardDTO2 dto) throws Exception;
	
	public int getDataCount(String searchKey,String searchValue) throws Exception;
	
	public List<BoardDTO2> getLists(int start,int end,String searchKey,String searchValue) throws Exception;

	public BoardDTO2 getReadData(int num) throws Exception;
	
	public void updateHitCount(int num) throws Exception;
	
	public void updateData(BoardDTO2 dto) throws Exception;
	
	public void deleteData(int num) throws Exception;
	
	
}
