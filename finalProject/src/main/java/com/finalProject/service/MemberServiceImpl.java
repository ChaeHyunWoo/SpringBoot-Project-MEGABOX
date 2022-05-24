package com.finalProject.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.dto.MemberDTO;
import com.finalProject.mapper.MemberMapper;

//MemberService 인터페이스를 구현한 클래스
@Service("memberService") //객체 생성
public class MemberServiceImpl implements MemberService {
	
	@Autowired ////memberMapper에 있는 sql문을 MemberServiceImpl로 읽어와서 의존성주입하여 객체생성 한것.
	private MemberMapper memberMapper; //의존성 주입
	
	//경로 : MemberController -> MemberService(I) -> MemberServiceImpl(C) ->
	//		 MemberMapper(I) -> MemberMapper.xml
	
	//회원가입 처리
	@Override 
	public void memberJoin(MemberDTO dto) throws Exception {
		memberMapper.memberjoin(dto);
	}
	
	//로그인 Ajax검사
	@Override
	public int memberlogin(MemberDTO dto) throws Exception {
		int count = memberMapper.memberlogin(dto);
		
		return count;
	}
	
	//ID 중복처리
	@Override
	public int idcheck(String id) throws Exception {
		int count = memberMapper.idcheck(id);
		
		return count;
	}
	
	// ID 찾기
	@Override
	public String findId(MemberDTO dto) throws Exception {
		
		String id = memberMapper.findId(dto);
		
		return id;
	}
	
	// PW 찾기
	@Override
	public String findPw(MemberDTO dto) throws Exception {
		
		String pw = memberMapper.findPw(dto);
		
		return pw;
	}
	
	//하나의 유저 정보 가져오기(로그인 시 세션)
	@Override
	public MemberDTO getReadData(String id) throws Exception {
		
		MemberDTO dto = memberMapper.getReadData(id);
		
		return dto;
	}
	
	// 마이 페이지(회원정보 수정)
	@Override
	public void updateMember(MemberDTO dto) throws Exception {
		memberMapper.updateMember(dto);
	}
	
//	@Override
//	public MemberDTO updateMember(String id) throws Exception {
//		
//		MemberDTO dto = memberMapper.updateMember(id);
//		
//		return dto;
//	}
	



}
