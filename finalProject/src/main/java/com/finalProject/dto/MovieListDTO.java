package com.finalProject.dto;

import lombok.Data;

// lombok 사용해서 getter/setter 생략 ->pom.xml에 작성(lib추가)
@Data
public class MovieListDTO {
	
	private int num;
	private String name;
	private String S_F_N;
	private String O_F_N;
	private String director;
	private String actress;
	private String vcnum;
	
}