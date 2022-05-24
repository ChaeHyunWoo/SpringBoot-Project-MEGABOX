package com.finalProject.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.finalProject.dto.MemberDTO;

@Mapper //Mapper로 등록
@Repository // 해당 클래스를 repository임을 알려줌
public interface MemberMapper {
	
	public void memberjoin(MemberDTO dto) throws Exception;	

	public int memberlogin(MemberDTO dto) throws Exception;
	
	public int idcheck(String id) throws Exception;
	
	public String findId(MemberDTO dto) throws Exception;
	
	public String findPw(MemberDTO dto) throws Exception;
	
	public MemberDTO getReadData(String id) throws Exception;
	
	public void updateMember(MemberDTO dto) throws Exception;
	
	//public MemberDTO updateMember(String id) throws Exception;
	
}
