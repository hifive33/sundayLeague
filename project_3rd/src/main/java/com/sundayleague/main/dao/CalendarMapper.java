/*
 * Author : Jinwoo Jeong
 * When : 2019-09-23 ~ 
 * Environment : Windows 10, Spring Framework v3.8.2, JDK v1.8.0u202
 * Object : 일정관리용 풀캘린더 페이지 Mapper
 */

package com.sundayleague.main.dao;

import java.util.ArrayList;
import java.util.List;

import com.sundayleague.main.dto.CalendarDTO;

public interface CalendarMapper {

	int insertEvent(CalendarDTO calendar);

	ArrayList<CalendarDTO> selectAllEvent(String team_name);

	int deleteEvent(int seq);



}
