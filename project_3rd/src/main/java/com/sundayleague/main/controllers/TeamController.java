package com.sundayleague.main.controllers;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sundayleague.main.dao.TeamRepository;
import com.sundayleague.main.dto.TeamDTO;

@Controller
public class TeamController {

	@Autowired
	TeamRepository repo;
	
	@RequestMapping(value="/creation")
	public String insertTeam(HttpSession session,RedirectAttributes rdab) {
		if(session.getAttribute("team_name")==null) {
			return "creation";
		}
		String alert = "이미 가입된 구단이 존재합니다.";
		rdab.addFlashAttribute("alert", alert);
		return "redirect:/";
	}
	
	@RequestMapping(value="/creation",method=RequestMethod.POST)
	public String insertTeam(TeamDTO team,String subregion,HttpSession session) {
		team.setRegion(team.getRegion()+subregion);
		String player_id = (String)session.getAttribute("loginId");
		Map<String,Object>map = new HashMap<>();
		map.put("team", team);
		map.put("id", player_id);
		//procedure return == -1 
		if(repo.insertTeam(map)<0) {
			return "myteam";
		}else{
			return "creation";
		}
	}
	@RequestMapping(value="/myteam")
	public String myteam() {
		return "myteam";
	}
}
	
