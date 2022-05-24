package com.finalProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.dto.BoardDTO2;
import com.finalProject.mapper.BoardMapper2;



@Service //BoardServiceImpl 객채생성
public class BoardServiceImpl2 implements BoardService2{

	@Autowired //boardMapper에 있는 sql문을 BoardServiceImpl로 읽어와서 의존성주입하여 객체생성 한것.
	private BoardMapper2 boardMapper2; 	
	
	//BoardController -> BoardService(Interface) -> BoardServiceImpl(Class) ->
	//BoardMapper(Interface) -> boardMapper.xml
	
	@Override
	public int maxNum() throws Exception {
		return boardMapper2.maxNum();
	}//boardMapper에 있는 maxNum

	@Override
	public void insertData(BoardDTO2 dto) throws Exception {
		
		boardMapper2.insertData(dto);
	
	}

	@Override
	public int getDataCount(String searchKey, String searchValue) throws Exception {
		return boardMapper2.getDataCount(searchKey, searchValue);
	} 
	

	@Override
	public List<BoardDTO2> getLists(int start, int end, String searchKey, String searchValue) throws Exception {
		return boardMapper2.getLists(start, end, searchKey, searchValue);
	}

	@Override
	public BoardDTO2 getReadData(int num) throws Exception {
		return boardMapper2.getReadData(num);
	}

	@Override
	public void updateHitCount(int num) throws Exception {
		boardMapper2.updateHitCount(num);
	}

	@Override
	public void updateData(BoardDTO2 dto) throws Exception {
		boardMapper2.updateData(dto);
	}

	@Override
	public void deleteData(int num) throws Exception {
		boardMapper2.deleteData(num);
	}
	
	
	
	

}
