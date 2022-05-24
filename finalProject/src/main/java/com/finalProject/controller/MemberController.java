package com.finalProject.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.dto.MemberDTO;
import com.finalProject.service.MemberService;

//로그인 - 회원가입 컨트롤러

// - 로그인(DB비교) / 회원가입(id중복확인) / 마이페이지(회원정보수정) / ID찾기 / PW 찾기 

@RestController("memberController")
@RequestMapping("/movie")
public class MemberController {
		
	
	//얘를 호출하면 MemberServiceImpl이 딸려들어옴
	@Resource
	private MemberService memberService;
	
	//로그인 화면 - (완성)
	//@RequestMapping(value = "/moviestar/login", method = RequestMethod.GET)
	@GetMapping("/login")
	public ModelAndView login() throws Exception {
			
		ModelAndView mav = new ModelAndView();
			
		//mav.setViewName("memberLogin");
		mav.setViewName("member/login");
		
		return mav;
	}
	
	//마이 페이지
	// - 여기에 로그인 된 유저의 회원정보를 불러온다.(getReadData)
	@RequestMapping(value = "/mypage", method = {RequestMethod.POST, RequestMethod.GET}) 
	public ModelAndView myPage(HttpServletRequest request, HttpServletResponse response
			,HttpSession session) throws Exception {
			
		ModelAndView mav = new ModelAndView();
	
		MemberDTO info=(MemberDTO)session.getAttribute("customInfo");
		MemberDTO dto=memberService.getReadData(info.getId());
		request.setAttribute("dto", dto);
		
			
		mav.setViewName("member/mypage");
			
		return mav;
	}

	//마이 페이지 처리(DB에 수정된 값 저장)
	@RequestMapping(value = "/mypage_ok", method = {RequestMethod.POST, RequestMethod.GET}) 
	public ModelAndView myPage_ok(MemberDTO dto, HttpServletRequest request, HttpServletResponse response
			,HttpSession session) throws Exception {
		
		System.out.println("마이 페이지 처리");
		
		ModelAndView mav = new ModelAndView();
		
		MemberDTO info=(MemberDTO)session.getAttribute("customInfo");
		
		
		dto.setId(info.getId());
		memberService.updateMember(dto);
		
		
			
		mav.setViewName("redirect:/main");
		return mav;
	}

	//로그인 처리 - (완성)
	@RequestMapping(value = "/login_ok", method = RequestMethod.POST)
	public ModelAndView login_ok(HttpSession session, boolean rememberId, HttpServletResponse response,
			HttpServletRequest request) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		//Cookie cookie = null; // 쿠키 생성
		String id = request.getParameter("id");
		//String id_rem = request.getParameter("idsave"); // 아아디 저장(쿠키활용)
		
		MemberDTO dto = memberService.getReadData(id); //하나의 유저 정보 가져오기
		
		// CustomInfo 안쓰고 memberDTO 사용함
		session.setAttribute("customInfo", dto);
        
		//쿠키 시간
//        try { 
//            if(id_rem!=null&&id_rem.trim().equals("on")){
//               cookie=new Cookie("id", URLEncoder.encode(id,"UTF-8"));
//           	   cookie.setMaxAge(60*60);//1시간
//               response.addCookie(cookie);
//            }else{
//               cookie=new Cookie("id",null);
//               cookie.setMaxAge(0);
//               response.addCookie(cookie);
//            }
//		} catch (Exception e) {
//			System.out.println(e.toString());
//		}
		if(rememberId) {
			//1. 쿠키 생성
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(60*60);//1시간
			// 2. 응답에 저장
			response.addCookie(cookie);
		}else {
			//쿠키 삭제
			Cookie cookie = new Cookie("id", null);
			cookie.setMaxAge(0); //쿠키 삭제
			response.addCookie(cookie);
		}		
		//System.out.println(id);
		//mav.setViewName("redirect:/main");
		mav.setViewName("redirect:/main");
		
		return mav;
	}
	
	//로그인 DB판별 Ajax
	@RequestMapping(value = "/loginAjax",method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public Map<Object, Object> loginAjax(@RequestBody MemberDTO dto) throws Exception {
		
		int count=0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		count = memberService.memberlogin(dto);
		
		map.put("cnt", count);
		
		return map;
	}


	//로그아웃 처리 - (완성)
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		// 세션 종료
		session.invalidate();
		
		// 세션 종료하고 메인 페이지로 리다이렉트(이동)
		mav.setViewName("redirect:/main");
		
		return mav;
	}
	
	
	//회원가입 화면 - (완성)
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public ModelAndView join() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		//System.out.println("Join페이지 성공");
		mav.setViewName("member/join");
		
		return mav;
	}
	
	
	//주소 API
	@RequestMapping(value = "/jusoPopup")
	public ModelAndView juso() throws Exception {
			
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("member/jusoPopup");
			
		return mav;
	}

	
	//회원가입 처리 - (완성)
	@RequestMapping(value = "/join_ok", method = RequestMethod.POST)
	public ModelAndView join_ok(MemberDTO dto) throws Exception{
		System.out.println("Insert 성공");
		ModelAndView mav = new ModelAndView();
		
		memberService.memberJoin(dto);
		
		mav.setViewName("member/login");
		
		return mav;
	}

	

	
	
	//ID 중복확인
	@RequestMapping(value = "/idcheck",method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
    public Map<Object, Object> idcheck(@RequestBody String id) throws Exception {
		
		int count=0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		count = memberService.idcheck(id);
		
		map.put("cnt", count);
		
		return map;
	}
	
	// ID 찾기 화면
	@RequestMapping(value = "/searchId", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView searchId(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("member/searchId");
		
		return mav;
	}
	
	// ID찾기 화면 처리
	@RequestMapping(value = "/searchId_ok", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView searchId_ok(MemberDTO dto, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		dto.getEmail1();
		String id = memberService.findId(dto);
		request.setAttribute("id", id);
		
		
		//return "/movie/searchId_com";
		mav.setViewName("member/searchId_com");
		
		return mav;
	}
	
	//Id 찾기 DB판별 Ajax
	@RequestMapping(value = "/idAjax",method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public Map<Object, Object> idAjax(@RequestBody MemberDTO dto ) throws Exception {
        
        String id="";
        Map<Object, Object> map = new HashMap<Object, Object>();
 
        id = memberService.findId(dto);
        
        map.put("cnt", id);
 
        return map;
    }
	
	// PW 찾기 화면
	@RequestMapping(value = "/searchPw", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView searchPw(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("member/searchPw");
		
		return mav;
	}
	
	// PW 찾기 화면 처리
	@RequestMapping(value = "/searchPw_ok", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView searchPw_ok(MemberDTO dto, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		//dto.getEmail1();
		//String id = memberService.findId(dto);
		//request.setAttribute("id", id);
		
		dto.getName();
		String pw = memberService.findPw(dto);
		request.setAttribute("pw", pw);
		
		
		mav.setViewName("member/searchPw_com");
		
		return mav;
	}	
	
	// PW 찾기 DB 판별 Ajax
	@RequestMapping(value = "/pwAjax",method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public Map<Object, Object> pwAjax(@RequestBody MemberDTO dto ) throws Exception {
        
        //String id="";
        //Map<Object, Object> map = new HashMap<Object, Object>();
        //id = memberService.findId(dto);
        //map.put("cnt", id);
		
		String pw="";
		Map<Object, Object> map = new HashMap<Object, Object>();
		pw = memberService.findPw(dto);
		map.put("cnt", pw);
 
        return map;
    }	

	

}
