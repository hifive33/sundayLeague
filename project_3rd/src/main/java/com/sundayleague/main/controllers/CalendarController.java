/*
 * Author : Jinwoo Jeong
 * When : 2019-09-23 ~ 
 * Environment : Windows 10, Spring Framework v3.8.2, JDK v1.8.0u202
 * Object : 일정관리용 풀캘린더 페이지 Controller
 */

package com.sundayleague.main.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sundayleague.main.dao.CalendarRepository;
import com.sundayleague.main.dto.CalendarDTO;

@Controller
public class CalendarController {
	@Autowired
	CalendarRepository caRepo;
	
	@RequestMapping(value="/calendar", method=RequestMethod.GET)
	public String scheduleTeam(HttpSession session){
		
		return "calendar";
	}
	
	@RequestMapping(value="/insertCalendarEvent", method=RequestMethod.POST)
	@ResponseBody
	public String insertCalendarEvent(CalendarDTO calendar){
		
		System.out.println(calendar);
		
		int result = caRepo.insertEvent(calendar);
		
		return "insert complete";
	}
	
	@RequestMapping(value="/initCalendar", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<CalendarDTO> initCalendar(String team_name){
		
		ArrayList<CalendarDTO> list = caRepo.initCalendar(team_name);
		
		System.out.println(list);
		
		return list;
	}
	
	@RequestMapping(value="/deleteCalendarEvent", method=RequestMethod.GET)
	@ResponseBody
	public String deleteCalendarEvent(String seq){
		
		System.out.println(seq);
		
		int result = caRepo.deleteEvent(Integer.parseInt(seq));
		
		return "delete complete";
	}
}
