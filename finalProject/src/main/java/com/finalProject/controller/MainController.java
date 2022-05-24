package com.finalProject.controller;



import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.dto.MovieListDTO;
import com.finalProject.service.MovieListService;

@Controller
public class MainController {
	
	
	@Resource
	private MovieListService movieListService;
	
	
	//@RequestMapping(value = "/moviestar/login", method = RequestMethod.GET)
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		MovieListDTO dto = new MovieListDTO();
		
		//main에서 list형식으로 뿌릴거니 List에 담는다.
		List<MovieListDTO> lists = movieListService.readData();
		
		mav.addObject("lists",lists);
		
		mav.setViewName("main");
		
		//System.out.println(lists);

		return mav;
	}

	/*
	 * @RequestMapping(value = "/booking_1") public ModelAndView booking_1() throws
	 * Exception { ModelAndView mav = new ModelAndView();
	 * 
	 * mav.setViewName("booking_1");
	 * 
	 * return mav; }
	 */

	

	

	

}
