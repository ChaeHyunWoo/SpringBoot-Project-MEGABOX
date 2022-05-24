package com.finalProject.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.dto.FP_MOVIE_DTO;
import com.finalProject.dto.FP_VIEWINGCLASS_DTO;
import com.finalProject.service.MovieSaveService;

@Controller
public class MovieSaveController {

	@Resource
	private MovieSaveService movieSaveService;

	@RequestMapping(value = "/movieSave")
	public ModelAndView createPage() throws Exception {
		ModelAndView mav = new ModelAndView();

		List<FP_VIEWINGCLASS_DTO> vcLists = movieSaveService.getViewingClassLists();
		mav.addObject("vcLists", vcLists);

		mav.setViewName("movie/movieSave");

		return mav;
	}

	@RequestMapping(value = "/movieSave_ok")
	public ModelAndView movieSave_ok(MultipartHttpServletRequest request, FP_MOVIE_DTO dto) throws Exception {

		String path = request.getSession().getServletContext().getRealPath("/poster");

		File f = new File(path);

		if (!f.exists()) {
			f.mkdirs();
		}

		MultipartFile file = request.getFile("upload");

		UUID uuid = UUID.randomUUID();
		String saveName = uuid.toString() + "_" + file.getOriginalFilename();

		if (file != null && file.getSize() > 0) {

			try {

				FileOutputStream fos = new FileOutputStream(path + "/" + saveName);

				InputStream is = file.getInputStream();

				int data;
				byte[] buffer = new byte[4096];

				while ((data = is.read(buffer, 0, buffer.length)) != -1) {

					fos.write(buffer, 0, data);
				}

				is.close();
				fos.close();

			} catch (Exception e) {
				System.out.println(e.toString());
			}
		}

		String movieNm = request.getParameter("movieNm_value");

		int maxNum = movieSaveService.maxNum();

		dto.setNum(maxNum + 1);
		dto.setName(request.getParameter("movieNm_value"));
		dto.setVcNum(Integer.parseInt(request.getParameter("vcNum")));
		dto.setS_f_n(saveName);
		dto.setO_f_n(file.getOriginalFilename());

		movieSaveService.insertData(dto);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("redirect:/movieSave");

		return mav;
	}

}
