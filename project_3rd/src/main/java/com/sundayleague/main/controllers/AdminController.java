/*
 * Author : Jinwoo Jeong
 * When : 2019-09-09 ~ 
 * Environment : Windows 10, Spring Framework v3.8.2, JDK v1.8.0u202
 * Object : 관리자 페이지 컨트롤러
 */

package com.sundayleague.main.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sundayleague.main.dao.AdminRepository;
import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.dto.TeamDTO;

@Controller
public class AdminController {
	
	@Autowired
	AdminRepository adRepo;

	@RequestMapping(value="/adminMain", method=RequestMethod.GET)
	public String adminMain(HttpSession session){
		
		//임시 부여
		session.setAttribute("loginId", "admin");
		
		return "admin/adminMain";
	}
	
	@RequestMapping(value="/adminManagePlayer", method=RequestMethod.GET)
	public String adminManagePlayer(Model model){
		
		List<PlayerDTO> list = adRepo.selectPlayerList(); 
		
		model.addAttribute("list", list);
		
		System.out.println(list);
		
		return "admin/adminManagePlayer";
	}
	
	@RequestMapping(value="/adminManageTeam", method=RequestMethod.GET)
	public String adminManageTeam(Model model){
		
		List<TeamDTO> list = adRepo.selectTeamList();
		
		model.addAttribute("list", list);
		
		System.out.println(list);
		
		return "admin/adminManageTeam";
	}

	
}
