package com.sundayleague.main.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sundayleague.main.dao.TeamRepository;
import com.sundayleague.main.dto.TeamDTO;

@Controller
public class TeamController {

	@Autowired
	TeamRepository repo;
	
	@RequestMapping(value="/creation")
	public String insertTeam() {
		return "creation";
	}
	
	@RequestMapping(value="/creation",method=RequestMethod.POST)
	public String insertTeam(TeamDTO team,String subregion) {
		team.setRegion(team.getRegion()+subregion);
		if(repo.insertTeam(team)==1) {
			return "teaminfo";
		}else{
			return "creation";
		}
	}
}
	
