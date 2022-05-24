package com.finalProject.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.dto.FP_MOVIE_DTO;

@Controller
public class MovieRegionSaveController {

	/*
	 * @Resource private MovieSaveService movieSaveService;
	 * 
	 * @RequestMapping(value = "/regionSave") public ModelAndView createPage()
	 * throws Exception { ModelAndView mav = new ModelAndView();
	 * 
	 * mav.setViewName("regionSave");
	 * 
	 * return mav; }
	 * 
	 * @RequestMapping(value = "/regionSave_ok") public ModelAndView
	 * movieSave_ok(MultipartHttpServletRequest request, FP_MOVIE_DTO dto) throws
	 * Exception {
	 * 
	 * String path =
	 * request.getSession().getServletContext().getRealPath("/poster");
	 * 
	 * File f = new File(path);
	 * 
	 * if (!f.exists()) { f.mkdirs(); }
	 * 
	 * MultipartFile file = request.getFile("upload");
	 * 
	 * UUID uuid = UUID.randomUUID(); String saveName = uuid.toString() + "_" +
	 * file.getOriginalFilename();
	 * 
	 * if (file != null && file.getSize() > 0) {
	 * 
	 * try {
	 * 
	 * FileOutputStream fos = new FileOutputStream(path + "/" + saveName);
	 * 
	 * InputStream is = file.getInputStream();
	 * 
	 * int data; byte[] buffer = new byte[4096];
	 * 
	 * while ((data = is.read(buffer, 0, buffer.length)) != -1) {
	 * 
	 * fos.write(buffer, 0, data); }
	 * 
	 * is.close(); fos.close();
	 * 
	 * } catch (Exception e) { System.out.println(e.toString()); } }
	 * 
	 * String movieNm = request.getParameter("movieNm_value");
	 * 
	 * int maxNum = movieSaveService.maxNum();
	 * 
	 * dto.setNum(maxNum + 1);
	 * 
	 * String movieNm_value = request.getParameter("movieNm_value");
	 * dto.setName(movieNm_value);
	 * 
	 * String admisClassNm = request.getParameter("admisClassNm");
	 * dto.setAdmisClassNm(admisClassNm);
	 * 
	 * String s_f_n = file.getOriginalFilename(); dto.setS_f_n(s_f_n);
	 * dto.setO_f_n(saveName);
	 * 
	 * movieSaveService.insertData(dto);
	 * 
	 * ModelAndView mav = new ModelAndView();
	 * 
	 * mav.setViewName("redirect:/movieSave");
	 * 
	 * return mav; }
	 */

}
