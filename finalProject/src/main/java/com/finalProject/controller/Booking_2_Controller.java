package com.finalProject.controller;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.TextStyle;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.dto.FP_MOVIETOTAL_DTO;
import com.finalProject.dto.FP_MOVIETOTAL_NAME_DTO;
import com.finalProject.dto.FP_MOVIE_DTO;
import com.finalProject.dto.FP_MOVIE_NAME_DTO;
import com.finalProject.dto.FP_PLAYKIND_DTO;
import com.finalProject.dto.FP_REGIONDETAIL_DTO;
import com.finalProject.dto.FP_REGION_DTO;
import com.finalProject.dto.FP_THEATER_DTO;
import com.finalProject.dto.FP_VIEWINGCLASS_DTO;
import com.finalProject.service.Booking_1_Service;
import com.finalProject.service.Booking_2_Service;

@Controller
public class Booking_2_Controller {
	
	@Resource
	private Booking_1_Service booking_1_Service;
	
	@Resource
	private Booking_2_Service booking_2_Service;
	
	@RequestMapping(value = "/booking_2")
	public ModelAndView booking_2(HttpServletRequest request) throws Exception {
		
		
		int mtnNum = Integer.parseInt(request.getParameter("mtnNum"));
		
		FP_MOVIETOTAL_DTO mtDto = booking_2_Service.getMt(mtnNum);
		
		FP_MOVIE_DTO movieDTO = booking_2_Service.getMovie(mtDto.getMovieNum());
		FP_MOVIE_NAME_DTO mnDTO = new FP_MOVIE_NAME_DTO();
		mnDTO = movieName(mnDTO, movieDTO);
		
		FP_PLAYKIND_DTO playKindDTO = booking_2_Service.getPlayKind(mtDto.getPkNum());
		FP_REGION_DTO regionDTO = booking_2_Service.getRegion(mtDto.getRegionNum());
		FP_REGIONDETAIL_DTO rdDTO = booking_2_Service.getRegionDetail(mtDto.getRdNum());
		FP_THEATER_DTO theaterDTO = booking_2_Service.getTheater(mtDto.getTheaterNum());
		
		FP_MOVIETOTAL_NAME_DTO mtnDto = new FP_MOVIETOTAL_NAME_DTO();
		
		mtnDto.setNum(mtDto.getNum());
		mtnDto.setTagName(mnDTO.getTagName());
		mtnDto.setHangle(mnDTO.getHangle());
		mtnDto.setMovie(mnDTO.getName());
		mtnDto.setMovieImg(mnDTO.getS_f_n());
		mtnDto.setPlayKind(playKindDTO.getName());
		mtnDto.setRegion(regionDTO.getName());
		mtnDto.setRegionDetail(rdDTO.getName());
		mtnDto.setTheater(theaterDTO.getName());
		mtnDto.setStrDate(mtDto.getStrDate());
		mtnDto.setStartHour(mtDto.getStartHour());
		mtnDto.setStartMinute(mtDto.getStartMinute());
		mtnDto.setEndHour(mtDto.getEndHour());
		mtnDto.setEndMinute(mtDto.getEndMinute());
		mtnDto.setRemainSeat(mtDto.getRemainSeat());
		mtnDto.setTotalSeat(theaterDTO.getTotalSeat());
		
		String[] arrDate = mtDto.getStrDate().split("\\.");
		int year = Integer.parseInt(arrDate[0]);
		int month = Integer.parseInt(arrDate[1]);
		int day = Integer.parseInt(arrDate[2]);
		LocalDate date = LocalDate.of(year, month, day);
		DayOfWeek dayOfWeek = date.getDayOfWeek();
		mtnDto.setDayOfWeek(dayOfWeek.getDisplayName(TextStyle.FULL, Locale.KOREAN).substring(0, 1));	
		
		ModelAndView mav = new ModelAndView();

		mav.addObject("mtnDto",mtnDto);
		
		mav.setViewName("booking/booking_2");

		return mav;
	}
	
	public FP_MOVIE_NAME_DTO movieName(FP_MOVIE_NAME_DTO mnDto, FP_MOVIE_DTO dto) throws Exception {

		FP_VIEWINGCLASS_DTO vcDto = booking_1_Service.getVc(dto.getVcNum());

		mnDto.setNum(dto.getNum());
		mnDto.setName(dto.getName());
		mnDto.setTagName(vcDto.getTagName());
		mnDto.setHangle(vcDto.getHangle());
		mnDto.setS_f_n(dto.getS_f_n());
		mnDto.setO_f_n(dto.getO_f_n());

		return mnDto;
	}
	
	@RequestMapping(value = "/booking_2_ok")
	public ModelAndView booking_2_ok(HttpServletRequest request) throws Exception {
		
		String tagName = request.getParameter("tagName_value");
		String hangle = request.getParameter("hangle_value");
		String movieNm = request.getParameter("movieNm_value");
		String movieImg = request.getParameter("movieImg_value");
		String playKindNm = request.getParameter("playKindNm_value");
		String brchNm = request.getParameter("brchNm_value");
		String theater = request.getParameter("theater_value");
		String playDe = request.getParameter("playDe_value");
		String dowNm = request.getParameter("dowNm_value");
		String playTime = request.getParameter("playTime_value");
		
		String adultCnt = request.getParameter("adultCount_value");
		String youngCnt = request.getParameter("youngCount_value");
		String favorCnt = request.getParameter("favorCount_value");
		
		String adultPrice = request.getParameter("adultPrice_value");
		String youngPrice = request.getParameter("youngPrice_value");
		String favorPrice = request.getParameter("favorPrice_value");		
		String totalPrice = request.getParameter("totalPrice_value");
		
		String seat1 = request.getParameter("seat1_value");
		String seat2 = request.getParameter("seat2_value");
		String seat3 = request.getParameter("seat3_value");
		String seat4 = request.getParameter("seat4_value");
		String seat5 = request.getParameter("seat5_value");
		String seat6 = request.getParameter("seat6_value");
		String seat7 = request.getParameter("seat7_value");
		String seat8 = request.getParameter("seat8_value");
	
		ModelAndView mav = new ModelAndView();

		mav.addObject("tagName",tagName);
		mav.addObject("hangle",hangle);
		mav.addObject("movieNm",movieNm);
		mav.addObject("movieImg",movieImg);
		mav.addObject("playKindNm",playKindNm);
		mav.addObject("playDe",playDe);
		mav.addObject("brchNm",brchNm);
		mav.addObject("theater",theater);
		mav.addObject("dowNm",dowNm);
		mav.addObject("playTime",playTime);
		
		mav.addObject("adultCnt",adultCnt);
		mav.addObject("youngCnt",youngCnt);
		mav.addObject("favorCnt",favorCnt);
		
		mav.addObject("adultPrice",adultPrice);
		mav.addObject("youngPrice",youngPrice);
		mav.addObject("favorPrice",favorPrice);		
		mav.addObject("totalPrice",totalPrice);
		
		mav.addObject("seat1",seat1);
		mav.addObject("seat2",seat2);
		mav.addObject("seat3",seat3);
		mav.addObject("seat4",seat4);
		mav.addObject("seat5",seat5);
		mav.addObject("seat6",seat6);
		mav.addObject("seat7",seat7);
		mav.addObject("seat8",seat8);
		
		mav.setViewName("booking/booking_3");

		return mav;
	}
}
