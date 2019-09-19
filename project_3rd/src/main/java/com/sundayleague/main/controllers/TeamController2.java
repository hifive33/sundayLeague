package com.sundayleague.main.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sundayleague.main.dao.MemberRepository;
import com.sundayleague.main.dao.TeamRepository;
import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.dto.TeamDTO;


@Controller
public class TeamController2 {
	
	@Autowired
	MemberRepository memberRepo;
	
	@Autowired
	TeamRepository teamRepo;
	
	@GetMapping("/playerdetails")
	public void playerdetails(String playerid, Model model) {
		model.addAttribute("player", memberRepo.selectProfile(playerid));
	}
	
	// 가입신청
	@GetMapping("/jointeam")
	public String jointeam(PlayerDTO player, HttpSession session, RedirectAttributes rttr){
		player.setPlayer_id((String)session.getAttribute("loginId"));
		memberRepo.updateProfile(player);
		
		session.setAttribute("team_name", player.getTeam_name());
		rttr.addAttribute("team_name", player.getTeam_name());
		return "redirect:/teamdetails";
	}
	
	// 가입신청취소
	@GetMapping("/jointeamcancel")
	public String jointeamcancel(PlayerDTO player, HttpSession session, RedirectAttributes rttr){
		player.setPlayer_id((String)session.getAttribute("loginId"));
		String team_name = player.getTeam_name();
		player.setTeam_name("nn");
		memberRepo.updateProfile(player);
		
		session.removeAttribute("team_name");
		rttr.addAttribute("team_name", team_name);
		return "redirect:/teamdetails";
	}
	
	// 가입승인
	@GetMapping("/joinapply")
	public String joinapply(PlayerDTO player, HttpSession session, RedirectAttributes rttr){
		player.setAuthority("1");
		memberRepo.updateProfile(player);
		
		return "redirect:/myteam";
	}
	
	// match페이지로 이동
	@GetMapping("/match")
	public String match(Model model, HttpSession session) {
		if ((String)session.getAttribute("team_name") == null) return "redirect:/creation";
		else {
			model.addAttribute("flag", teamRepo.getMatchFlag((String)session.getAttribute("team_name")));
			return "match";
		}
		
		
	}
	
	// 매칭신청, 취소
	@GetMapping("matchfind")
	public String matchfind(HttpSession session){
		TeamDTO team = new TeamDTO();
		team.setTeam_name((String)session.getAttribute("team_name"));
		teamRepo.updateMatch_flag(team);
		return "redirect:/match";
	}
	
}
