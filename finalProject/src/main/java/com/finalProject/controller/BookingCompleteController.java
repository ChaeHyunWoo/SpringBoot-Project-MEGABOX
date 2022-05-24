package com.finalProject.controller;

import java.net.URLDecoder;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.dto.FP_PAY_DTO;

@Controller
public class BookingCompleteController {

	@RequestMapping(value = "/bookingComplete")
	public ModelAndView bookingComplete(HttpServletRequest request, FP_PAY_DTO dto) throws Exception {
		
		ModelAndView mav = new ModelAndView();

		mav.setViewName("booking/bookingComplete");

		return mav;
	}

	@RequestMapping(value = "/bookingComplete_ok")
	public ModelAndView bookingComplete_ok(HttpServletRequest request, FP_PAY_DTO dto) throws Exception {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("booking/bookingComplete");

		return mav;

	}

}
