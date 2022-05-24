package com.finalProject.dto;

import lombok.Data;

@Data
public class FP_MOVIETOTAL_DTO {
	
	private int num;
	private int movieNum;
	private int pkNum;
	private int regionNum;
	private int rdNum;
	private int theaterNum;
	private String strDate;
	private String startHour;
	private String startMinute;
	private String endHour;
	private String endMinute;
	private int remainSeat;
}
