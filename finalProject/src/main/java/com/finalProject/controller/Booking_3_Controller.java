package com.finalProject.controller;

import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.dto.FP_PAY_DTO;
import com.finalProject.service.Booking_3_Service;

@Controller
public class Booking_3_Controller {

	@Resource
	private Booking_3_Service booking_3_Service;

	@RequestMapping(value = "/booking_3")
	public ModelAndView booking_3() throws Exception {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("booking/booking_3");

		return mav;
	}

	@RequestMapping(value = "/booking_3_ok")
	public ModelAndView booking_3_ok(HttpServletRequest request, FP_PAY_DTO dto) throws Exception {

		String memp = request.getParameter("memp_value");
		String dcoupon = request.getParameter("dcoupon_value");
		String vipCpon = request.getParameter("vipCpon_value");

		String mcoupon = request.getParameter("mcoupon_value");
		String scoupon = request.getParameter("scoupon_value");
		String mgfcard = request.getParameter("mgfcard_value");
		String bookgift = request.getParameter("bookgift_value");

		String cultgift = request.getParameter("cultgift_value");
		String paysgift = request.getParameter("paysgift_value");
		String friends = request.getParameter("friends_value");
		String annus = request.getParameter("annus_value");

		String uplus = request.getParameter("uplus_value");
		String okcb = request.getParameter("okcb_value");
		String lpoint = request.getParameter("lpoint_value");
		String gsnp = request.getParameter("gsnp_value");

		String hyoil = request.getParameter("hyoil_value");
		String happ = request.getParameter("happ_value");
		String hbluep = request.getParameter("hbluep_value");
		String joongang = request.getParameter("joongang_value");

		String hydm = request.getParameter("hydm_value");
		String happcash = request.getParameter("happcash_value");
		String bookcash = request.getParameter("bookcash_value");
		String cultcash = request.getParameter("cultcash_value");

		String culturenuri = request.getParameter("culturenuri_value");

		String same_use_payment = request.getParameter("same_use_payment");
		if (same_use_payment == null) {
			same_use_payment = "off";
		}

		String radio_payment = request.getParameter("radio_payment");
		String card_select = request.getParameter("card_select");

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
		
		String adultCnt = request.getParameter("adultCnt_value");
		String youngCnt = request.getParameter("youngCnt_value");
		String favorCnt = request.getParameter("favorCnt_value");
		
		String adultPrice = request.getParameter("adultPrice_value");
		String youngPrice = request.getParameter("youngPrice_value");
		String favorPrice = request.getParameter("favorPrice_value");
		String totalPrice = request.getParameter("totalPrice_value");
		
		String[] seat = new String[8];
		for(int i=1;i<=8;i++) {
			seat[i-1] = request.getParameter("seat" + i + "_value");
		}
		
		ModelAndView mav = new ModelAndView();

		int maxNum = booking_3_Service.maxNum();

		dto.setNum(maxNum + 1);

		dto.setMemp(memp);
		dto.setDcoupon(dcoupon);
		dto.setVipCpon(vipCpon);

		dto.setMcoupon(mcoupon);
		dto.setScoupon(scoupon);
		dto.setMgfcard(mgfcard);
		dto.setBookgift(bookgift);

		dto.setCultgift(cultgift);
		dto.setPaysgift(paysgift);
		dto.setFriends(friends);
		dto.setAnnus(annus);

		dto.setUplus(uplus);
		dto.setOkcb(okcb);
		dto.setLpoint(lpoint);
		dto.setGsnp(gsnp);

		dto.setHyoil(hyoil);
		dto.setHapp(happ);
		dto.setHbluep(hbluep);
		dto.setJoongang(joongang);

		dto.setHydm(hydm);
		dto.setHappcash(happcash);
		dto.setBookcash(bookcash);
		dto.setCultcash(cultcash);

		dto.setCulturenuri(culturenuri);

		dto.setSame_use_payment(same_use_payment);

		dto.setRadio_payment(radio_payment);
		dto.setCard_select(card_select);

		dto.setTagName(tagName);
		dto.setHangle(hangle);
		dto.setMovieNm(movieNm);
		dto.setMovieImg(movieImg);
		dto.setPlayKindNm(playKindNm);
		dto.setBrchNm(brchNm);
		dto.setTheater(theater);
		dto.setPlayDe(playDe);
		dto.setDowNm(dowNm);
		dto.setPlayTime(playTime);

		dto.setAdultCnt(adultCnt);
		dto.setYoungCnt(youngCnt);
		dto.setFavorCnt(favorCnt);
		
		dto.setAdultPrice(adultPrice);
		dto.setYoungPrice(youngPrice);
		dto.setFavorPrice(favorPrice);
		dto.setTotalPrice(totalPrice);
		
		dto.setSeat1(seat[0]);
		dto.setSeat2(seat[1]);
		dto.setSeat3(seat[2]);
		dto.setSeat4(seat[3]);
		dto.setSeat5(seat[4]);
		dto.setSeat6(seat[5]);
		dto.setSeat7(seat[6]);
		dto.setSeat8(seat[7]);
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MMdd");
		String today = formatter.format(new Date());
		String ticketNum = today + "-" + Integer.toString(maxNum);
		
		dto.setTicketNum(ticketNum);
		
		booking_3_Service.insertData(dto);
		
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
		
		String person = "";
		if(!adultCnt.equals(""))
			person += "성인 " + adultCnt + "명 ";
		if(!youngCnt.equals(""))	
			person += "청소년 " + youngCnt + "명 ";
		if(!favorCnt.equals(""))	
			person += "우대 " + favorCnt + "명 ";			
		
		mav.addObject("person",person);
		
		mav.addObject("adultPrice",adultPrice);
		mav.addObject("youngPrice",youngPrice);
		mav.addObject("favorPrice",favorPrice);
		mav.addObject("totalPrice",totalPrice);
		
		String StrSeat = "";
		for(int i=1;i<=8;i++) {
			if(!(seat[i-1].equals(""))) {
				if(i==1) {
					StrSeat += seat[i-1];
					continue;
				}
				StrSeat += " ";
				StrSeat += seat[i-1];
			} else
				break;
		}
		
		mav.addObject("StrSeat",StrSeat);
		
		mav.addObject("ticketNum",ticketNum);
		
		mav.setViewName("booking/bookingComplete");

		return mav;
	}

}
