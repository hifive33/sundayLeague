package com.sundayleague.main.controllers;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sundayleague.main.dao.TeamRepository;
import com.sundayleague.main.dto.MatchDTO;
import com.sundayleague.main.dto.PlayerDTO;
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
				MatchDTO match = teamRepo.selectMatch((String)session.getAttribute("team_name"));
				model.addAttribute("away_team_name", match.getAway_team_name());
				model.addAttribute("matchdate", match.getMatchdate());
				model.addAttribute("match_address", match.getMatch_address());
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
	public void scorewrite(HttpSession session, Model model){
		String team_name = (String) session.getAttribute("team_name");
		String away_team_name = teamRepo.selectMatch(team_name).getAway_team_name();
		model.addAttribute("away_team_name", away_team_name);
		model.addAttribute("homePlayer", teamRepo.selectTeam2(team_name));
		model.addAttribute("awayPlayer", teamRepo.selectTeam2(away_team_name));
	}
	
	// 점수입력 처리
	@PostMapping("scorewrite")
	public String scorewriteProcess(){
		
		
		return "success";
	}
	
	@GetMapping("/fixture")
	public void fixture(HttpSession session, Model model) {
		
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
 		String matchFlag = teamRepo.getMatchFlag((String)session.getAttribute("team_name"));
 		model.addAttribute("flag", matchFlag);
		if (Integer.parseInt(matchFlag) > 1){
			MatchDTO match = teamRepo.selectMatch((String)session.getAttribute("team_name"));
			model.addAttribute("away_team_name", match.getAway_team_name());
			model.addAttribute("matchdate", match.getMatchdate());
			model.addAttribute("match_address", match.getMatch_address());
		}
 		
		MatchDTO result = teamRepo.selectMatch2((String)session.getAttribute("team_name"));
		List<PlayerDTO> result2 = teamRepo.selectTeam3(result.getTeam_name());
		List<PlayerDTO> result3 = teamRepo.selectTeam3(result.getAway_team_name());
		
		
		if(Integer.parseInt(result.getHome_teamscore())<Integer.parseInt(result.getAway_teamscore())){
			model.addAttribute("left",result.getAway_team_name());
			model.addAttribute("right", result.getTeam_name());
			model.addAttribute("l_score",result.getAway_teamscore());
			model.addAttribute("r_score",result.getHome_teamscore());
			model.addAttribute("l_player",result3);
			model.addAttribute("r_player",result2);
		}else {
			model.addAttribute("right",result.getAway_team_name());
			model.addAttribute("left", result.getTeam_name());
			model.addAttribute("r_score",result.getAway_teamscore());
			model.addAttribute("l_score",result.getHome_teamscore());
			model.addAttribute("l_player",result2);
			model.addAttribute("r_player",result3);
		}
		
	}
	
	@PostMapping("/fixturelist")
	@ResponseBody
	public List<MatchDTO> fixturelist(HttpSession session) {
		List<MatchDTO> list = teamRepo.selectMatch3((String)session.getAttribute("team_name"));
		return list;
	}
	
	
	
}
