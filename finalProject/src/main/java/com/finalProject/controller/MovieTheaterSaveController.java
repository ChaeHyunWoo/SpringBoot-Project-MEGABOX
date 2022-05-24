package com.finalProject.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.dto.FP_REGION_DTO;
import com.finalProject.dto.FP_THEATER_DTO;
import com.finalProject.service.MovieTheaterSaveService;

@Controller
public class MovieTheaterSaveController {

	@Resource
	private MovieTheaterSaveService movieTheaterSaveService;

	@RequestMapping(value = "/movieTheaterSave")
	public ModelAndView movieTheaterSave() throws Exception {

		ModelAndView mav = new ModelAndView();

		List<FP_REGION_DTO> regionLists = movieTheaterSaveService.getRegionLists();
		mav.addObject("regionLists", regionLists);

		mav.setViewName("movie/movieTheaterSave");

		return mav;
	}

	@RequestMapping(value = "/movieTheaterSave_ok")
	public ModelAndView movieTheaterSave_ok(HttpServletRequest request, FP_THEATER_DTO dto) throws Exception {

		String theaterNm = request.getParameter("theaterNm_value");
		int rdNum = Integer.parseInt(request.getParameter("rd_value"));
		int totalSeat = Integer.parseInt(request.getParameter("totalSeat_value"));
		
		ModelAndView mav = new ModelAndView();

		int maxNum = movieTheaterSaveService.maxNum();
		
		dto.setNum(maxNum + 1);
		dto.setName(theaterNm);
		dto.setRegionDetailNum(rdNum);
		dto.setTotalSeat(totalSeat);

		movieTheaterSaveService.insertData(dto);

		mav.setViewName("redirect:/movieTheaterSave");

		return mav;
	}
	
}
