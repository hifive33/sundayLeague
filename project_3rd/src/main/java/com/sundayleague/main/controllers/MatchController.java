package com.sundayleague.main.controllers;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sundayleague.main.dao.TeamRepository;
import com.sundayleague.main.dto.TeamDTO;

@Controller
public class MatchController {
	
	@Autowired
	TeamRepository teamRepo;
	
	// match페이지로 이동
	@GetMapping("/match")
	public String match(Model model, HttpSession session) {
		
		SimpleDateFormat format = new SimpleDateFormat();
 		format.applyPattern("yyyy/MM/dd");
		Calendar c = Calendar.getInstance();
 		if(c.get(Calendar.DAY_OF_WEEK) <= 4){
 			c.set(Calendar.DAY_OF_WEEK,Calendar.THURSDAY);
 		} else{
 			c.add(Calendar.DATE, 7);
 			c.set(Calendar.DAY_OF_WEEK,Calendar.THURSDAY);
 		}
 		model.addAttribute("dday", format.format(c.getTime()));
 		
		if ((String)session.getAttribute("team_name") == null) return "redirect:/creation";
		else {
			String matchFlag = teamRepo.getMatchFlag((String)session.getAttribute("team_name"));
			model.addAttribute("flag", matchFlag);
			if (Integer.parseInt(matchFlag) > 1){
				model.addAttribute("away_team_name", teamRepo.getAwayTeamName((String)session.getAttribute("team_name")));
			}
			return "match";
		}
	}
	
	// 매칭신청, 취소
	@GetMapping("matchfind")
	public String matchfind(HttpSession session, TeamDTO team){
		team.setTeam_name((String)session.getAttribute("team_name"));
		teamRepo.updateMatch_flag(team);
		return "redirect:/match";
	}
	
	// 점수입력 페이지로 이동
	@GetMapping("/scorewrite")
	public void scorewrite(){
		
	}
}
