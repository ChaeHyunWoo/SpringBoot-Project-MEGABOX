package com.finalProject.controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

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
import com.finalProject.dto.Date_DTO;

@Controller
public class Booking_1_Controller {

	@Resource
	private Booking_1_Service booking_1_Service;

	@RequestMapping(value = "/booking_1")
	public ModelAndView booking_1() throws Exception {
		ModelAndView mav = new ModelAndView();

		List<FP_MOVIE_DTO> movielists = booking_1_Service.getMovieLists();

		List<FP_MOVIE_NAME_DTO> movieNamelists = new ArrayList<FP_MOVIE_NAME_DTO>();

		Iterator<FP_MOVIE_DTO> it = movielists.iterator();
		while (it.hasNext()) {

			FP_MOVIE_DTO dto = it.next();

			FP_MOVIE_NAME_DTO mnDto = new FP_MOVIE_NAME_DTO();

			mnDto = movieName(mnDto, dto);

			movieNamelists.add(mnDto);
		}

		mav.addObject("movieNamelists", movieNamelists);

		List<FP_REGION_DTO> regionlists = booking_1_Service.getRegionLists();
		mav.addObject("regionlists", regionlists);

		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy,MM,dd,HH,mm");
		String[] nowTime = sdf1.format(new Date()).split(",");
		int year = Integer.parseInt(nowTime[0]);
		int month = Integer.parseInt(nowTime[1]);
		int preDay = Integer.parseInt(nowTime[2]) - 1;

		Calendar cal = Calendar.getInstance();
		cal.set(year, month, preDay);
		int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

		List<Date_DTO> dayWeekList = new ArrayList<Date_DTO>();
		String strMonth = "";
		
		int cnt = 0;
		for (int i = 0; i < 15; i++) {

			Date_DTO dto = new Date_DTO();

			if ((preDay + i - 2) >= lastDay) {
				cnt++;
				int nextMonthDay = 0;

				if(month == 12) {
					year++;
					month = 0;
				}
				
				dto.setYear(Integer.toString(year));
				
				if((month + 1)<10) {
					strMonth = "0" + Integer.toString(month + 1);
				}
				
				dto.setMonth(strMonth);
				dto.setDay(Integer.toString(nextMonthDay + cnt));

				LocalDate date = LocalDate.of(year, month + 1, nextMonthDay + cnt);
				DayOfWeek dayOfWeek = date.getDayOfWeek();
				dto.setDayOfweek(dayOfWeek.getDisplayName(TextStyle.FULL, Locale.KOREAN).substring(0, 1));			
				
				dayWeekList.add(dto);
				
				continue;
			}

			dto.setYear(Integer.toString(year));
			
			if((month)<10) {
				strMonth = "0" + Integer.toString(month);
			}
			
			dto.setMonth(strMonth);
			dto.setDay(Integer.toString(preDay + i));

			LocalDate date = LocalDate.of(year, month, preDay + i);
			DayOfWeek dayOfWeek = date.getDayOfWeek();
			dto.setDayOfweek(dayOfWeek.getDisplayName(TextStyle.FULL, Locale.KOREAN).substring(0, 1));			
			
			dayWeekList.add(dto);
		}

		mav.addObject("dayWeekList", dayWeekList);

		List<String> timeList = new ArrayList<String>();
		String strI = "";
		for(int i=0;i<10;i++) {
			strI = Integer.toString(i);
			if(i<10) {
				strI = "0" + strI;
			}
			timeList.add(strI);
		}
		mav.addObject("timeList", timeList);
		
		mav.setViewName("booking/booking_1");

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

	@RequestMapping(value = "/movieData")
	public ModelAndView movieData(HttpServletRequest request) throws Exception {

		int mnNum = Integer.parseInt(request.getParameter("mnNum"));

		ModelAndView mav = new ModelAndView();

		FP_MOVIE_DTO movieData = booking_1_Service.getMovieData(mnNum);

		mav.addObject("movieData", movieData);

		mav.setViewName("jsonView");

		return mav;
	}
	
	
	@RequestMapping(value = "/regionDetailList")
	public ModelAndView regionDetailList(HttpServletRequest request) throws Exception {

		String regionNum = request.getParameter("regionNum");
		int nRegionNum = Integer.parseInt(regionNum);

		ModelAndView mav = new ModelAndView();

		List<FP_REGIONDETAIL_DTO> rdLists = booking_1_Service.getRegionDetailLists(nRegionNum);

		mav.addObject("rdLists", rdLists);

		mav.setViewName("jsonView");

		return mav;
	}

	@RequestMapping(value = "/movieTotalLists")
	public ModelAndView movieTotalLists(HttpServletRequest request) throws Exception {

		String movieSel = request.getParameter("movieSel");
		String rdSel = request.getParameter("rdSel");
		String daySel = request.getParameter("daySel");
		String timeSel = request.getParameter("timeSel");
		
		List<FP_MOVIETOTAL_NAME_DTO> mtnlists = getMtnlists(movieSel, rdSel, daySel, timeSel);

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("mtnlists", mtnlists);

		mav.setViewName("jsonView");

		return mav;
	}

	public List<FP_MOVIETOTAL_NAME_DTO> getMtnlists(String movieSel, String rdSel, String daySel, String timeSel) throws Exception {
		
		int nMovieSel = 0;
		if(movieSel != null) {
			nMovieSel = Integer.parseInt(movieSel);
		}
		
		int nRdSel = 0;
		if(rdSel != null) {
			nRdSel = Integer.parseInt(rdSel);
		}
		
		
		if(daySel == null) {
			daySel = "";
		}
		
		
		if(timeSel == null) {
			timeSel = "";
		}
		
		FP_MOVIETOTAL_DTO mtDto = new FP_MOVIETOTAL_DTO();
		
		mtDto.setMovieNum(nMovieSel);
		mtDto.setRdNum(nRdSel);
		mtDto.setStrDate(daySel);
		mtDto.setStartHour(timeSel);
		
		List<FP_MOVIETOTAL_DTO> movieTotalLists = booking_1_Service.getMovieTotalLists(mtDto);

		List<FP_MOVIETOTAL_NAME_DTO> mtnlists = new ArrayList<FP_MOVIETOTAL_NAME_DTO>();

		Iterator<FP_MOVIETOTAL_DTO> it = movieTotalLists.iterator();
		while (it.hasNext()) {

			FP_MOVIETOTAL_DTO dto = it.next();

			FP_MOVIETOTAL_NAME_DTO mtnDto = getMtnData(dto);

			mtnlists.add(mtnDto);
		}
		
		return mtnlists;
	}
	
	public FP_MOVIETOTAL_NAME_DTO getMtnData(FP_MOVIETOTAL_DTO dto) throws Exception {
		
		FP_MOVIETOTAL_NAME_DTO mtnDto = new FP_MOVIETOTAL_NAME_DTO();

		FP_MOVIE_DTO movieDTO = booking_1_Service.getMovie(dto.getMovieNum());
		FP_MOVIE_NAME_DTO mnDTO = new FP_MOVIE_NAME_DTO();
		mnDTO = movieName(mnDTO, movieDTO);

		FP_PLAYKIND_DTO playKindDTO = booking_1_Service.getPlayKind(dto.getPkNum());
		FP_REGION_DTO regionDTO = booking_1_Service.getRegion(dto.getRegionNum());
		FP_REGIONDETAIL_DTO rdDTO = booking_1_Service.getRegionDetail(dto.getRdNum());
		FP_THEATER_DTO theaterDTO = booking_1_Service.getTheater(dto.getTheaterNum());

		mtnDto.setNum(dto.getNum());
		mtnDto.setMovie(mnDTO.getName());
		mtnDto.setPlayKind(playKindDTO.getName());
		mtnDto.setRegion(regionDTO.getName());
		mtnDto.setRegionDetail(rdDTO.getName());
		mtnDto.setTheater(theaterDTO.getName());
		mtnDto.setStrDate(dto.getStrDate());
		mtnDto.setStartHour(dto.getStartHour());
		mtnDto.setStartMinute(dto.getStartMinute());
		mtnDto.setEndHour(dto.getEndHour());
		mtnDto.setEndMinute(dto.getEndMinute());
		mtnDto.setRemainSeat(dto.getRemainSeat());
		mtnDto.setTotalSeat(theaterDTO.getTotalSeat());
		
		return mtnDto;
	}
	
	@Bean
	MappingJackson2JsonView jsonView() {
		return new MappingJackson2JsonView();
	}

}
