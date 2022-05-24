package com.finalProject.service;

import java.util.Map;

import com.finalProject.dto.MemberDTO;

public interface MemberService {
	
	public void memberJoin(MemberDTO dto) throws Exception;
	
	public int memberlogin(MemberDTO dto) throws Exception;
	
	public int idcheck(String id) throws Exception;
	
	public String findId(MemberDTO dto) throws Exception;
	
	public String findPw(MemberDTO dto) throws Exception;
	
	public MemberDTO getReadData(String id) throws Exception;
	
	public void updateMember(MemberDTO dto) throws Exception;
	
	//public MemberDTO updateMember(String id) throws Exception;
}
