package com.finalProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.dto.BoardDTO;
import com.finalProject.mapper.BoardMapper;



@Service //BoardServiceImpl 객채생성
public class BoardServiceImpl implements BoardService{

	@Autowired //boardMapper에 있는 sql문을 BoardServiceImpl로 읽어와서 의존성주입하여 객체생성 한것.
	private BoardMapper boardMapper; 	
	
	//BoardController -> BoardService(Interface) -> BoardServiceImpl(Class) ->
	//BoardMapper(Interface) -> boardMapper.xml
	
	@Override
	public int maxNum() throws Exception {
		return boardMapper.maxNum();
	}//boardMapper에 있는 maxNum

	@Override
	public void insertData(BoardDTO dto) throws Exception {
		
		boardMapper.insertData(dto);
	
	}

	@Override
	public int getDataCount(String searchKey, String searchValue) throws Exception {
		return boardMapper.getDataCount(searchKey, searchValue);
	} 
	

	@Override
	public List<BoardDTO> getLists(int start, int end, String searchKey, String searchValue) throws Exception {
		return boardMapper.getLists(start, end, searchKey, searchValue);
	}

	@Override
	public BoardDTO getReadData(int num) throws Exception {
		return boardMapper.getReadData(num);
	}

	@Override
	public void updateHitCount(int num) throws Exception {
		boardMapper.updateHitCount(num);
	}

	@Override
	public void updateData(BoardDTO dto) throws Exception {
		boardMapper.updateData(dto);
	}

	@Override
	public void deleteData(int num) throws Exception {
		boardMapper.deleteData(num);
	}
	
	
	
	

}
