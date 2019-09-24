/*
 * Author : Jinwoo Jeong
 * When : 2019-09-23 ~ 
 * Environment : Windows 10, Spring Framework v3.8.2, JDK v1.8.0u202
 * Object : 일정관리용 풀캘린더 DTO
 */

package com.sundayleague.main.dto;

import lombok.Data;

@Data
public class CalendarDTO {
	private int seq;
	private String team_name;
	private String title;
	private String description;
	private String startdate;
	private String enddate;
}
