package com.finalProject.controller;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.dto.FP_MOVIETOTAL_DTO;
import com.finalProject.dto.FP_MOVIE_DTO;
import com.finalProject.dto.FP_PLAYKIND_DTO;
import com.finalProject.dto.FP_REGION_DTO;
import com.finalProject.dto.FP_THEATER_DTO;
import com.finalProject.service.MovieTotalSaveService;

@Controller
public class MovieTotalSaveController {

	@Resource
	private MovieTotalSaveService movieTotalSaveService;

	@RequestMapping(value = "/movieTotalSave")
	public ModelAndView movieTotalSave() throws Exception {
		ModelAndView mav = new ModelAndView();

		List<FP_MOVIE_DTO> movieLists = movieTotalSaveService.getMovieLists();
		mav.addObject("movieLists", movieLists);

		List<FP_PLAYKIND_DTO> pkLists = movieTotalSaveService.getPkLists();
		mav.addObject("pkLists", pkLists);

		List<FP_REGION_DTO> regionLists = movieTotalSaveService.getRegionLists();
		mav.addObject("regionLists", regionLists);

		List<String> hours = new ArrayList<String>();
		for (int i = 0; i < 24; i++) {
			repeat(i, hours);
		}
		mav.addObject("hours", hours);

		List<String> mins = new ArrayList<String>();
		for (int i = 0; i < 60; i = i + 5) {
			repeat(i, mins);
		}
		mav.addObject("mins", mins);

		mav.setViewName("movie/movieTotalSave");

		return mav;
	}

	public List<String> repeat(int i, List<String> list) {

		String strI = Integer.toString(i);
		if (i < 10) {
			strI = "0" + strI;
			list.add(strI);
		} else {
			list.add(strI);
		}

		return list;
	}

	@RequestMapping(value = "/movieTotalSave_ok")
	public ModelAndView movieTotalSave_ok(HttpServletRequest request, FP_MOVIETOTAL_DTO dto) throws Exception {

		int movieNum = Integer.parseInt(request.getParameter("movie_value"));
		int pkNum = Integer.parseInt(request.getParameter("pk_value"));
		int regionNum = Integer.parseInt(request.getParameter("region_value"));
		int rdNum = Integer.parseInt(request.getParameter("rd_value"));
		int theaterNum = Integer.parseInt(request.getParameter("theater_value"));
		String datepicker = request.getParameter("datepicker");
		String startHour = request.getParameter("startHour_value");
		String startMinute = request.getParameter("startMinute_value");
		String endHour = request.getParameter("endHour_value");
		String endMinute = request.getParameter("endMinute_value");

		String[] arrDate = datepicker.split("\\.");
		int year = Integer.parseInt(arrDate[0]);
		int month = Integer.parseInt(arrDate[1]);
		int day = Integer.parseInt(arrDate[2]);

		ModelAndView mav = new ModelAndView();

		int maxNum = movieTotalSaveService.maxNum();
		int totalSeat = movieTotalSaveService.getTotalSeat(theaterNum);

		dto.setNum(maxNum + 1);
		dto.setMovieNum(movieNum);
		dto.setPkNum(pkNum);
		dto.setRegionNum(regionNum);
		dto.setRdNum(rdNum);
		dto.setTheaterNum(theaterNum);
		dto.setStrDate(datepicker);
		dto.setStartHour(startHour);
		dto.setStartMinute(startMinute);
		dto.setEndHour(endHour);
		dto.setEndMinute(endMinute);
		dto.setRemainSeat(totalSeat);

		movieTotalSaveService.insertData(dto);

		mav.setViewName("redirect:/movieTotalSave");

		return mav;
	}

	@RequestMapping(value = "/theaterList")
	public ModelAndView theaterList(HttpServletRequest request) throws Exception {

		String rdNum = request.getParameter("rdNum");
		int nRdNum = Integer.parseInt(rdNum);

		ModelAndView mav = new ModelAndView();

		List<FP_THEATER_DTO> theaterLists = movieTotalSaveService.getTheaterLists(nRdNum);

		mav.addObject("theaterLists", theaterLists);

		mav.setViewName("jsonView");

		return mav;
	}

}
