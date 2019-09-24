/*
 * Author : Jinwoo Jeong
 * When : 2019-09-23 ~ 
 * Environment : Windows 10, Spring Framework v3.8.2, JDK v1.8.0u202
 * Object : 일정관리용 풀캘린더 페이지 Repository
 */

package com.sundayleague.main.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sundayleague.main.dto.CalendarDTO;

@Repository
public class CalendarRepository {
	@Autowired
	SqlSession session;

	public int insertEvent(CalendarDTO calendar) {
		CalendarMapper mapper = session.getMapper(CalendarMapper.class);
		
		int result = mapper.insertEvent(calendar);
		
		return result;
	}

	public ArrayList<CalendarDTO> initCalendar(String team_name) {
		CalendarMapper mapper = session.getMapper(CalendarMapper.class);
		
		ArrayList<CalendarDTO> list = mapper.selectAllEvent(team_name);
		
		return list;
	}

	public int deleteEvent(int seq) {
		CalendarMapper mapper = session.getMapper(CalendarMapper.class);
		
		int result = mapper.deleteEvent(seq);
				
		return result;
	}
	
	
}
