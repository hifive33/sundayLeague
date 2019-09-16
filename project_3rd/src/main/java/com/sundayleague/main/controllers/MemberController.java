package com.sundayleague.main.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.sundayleague.main.dao.MemberRepository;
import com.sundayleague.main.dto.PlayerDTO;


@Controller
public class MemberController {
	
	@Autowired
	MemberRepository repo;
	
	@GetMapping("/login")
	public void login() {
	}

	@PostMapping("/login")
	public String loginProcess(PlayerDTO player, HttpSession session) {
		player = repo.login(player);
		
		if (player != null){
			session.setAttribute("loginId", player.getPlayer_id());
			session.setAttribute("team_name", player.getTeam_name());
			session.setAttribute("authority", player.getAuthority());
			return "redirect:/";
		} else{
			return "/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping("/registration")
	public void registration() {
	}

	@PostMapping("/registration")
	public String registrationProcess(PlayerDTO player){
		int result = repo.registration(player);
		
		return result == 1 ? "redirect:/login" : null;
	}
	
	@GetMapping("/myaccount")
	public void myaccount(HttpSession session, Model model) {
		String loginId = (String)session.getAttribute("loginId");
		PlayerDTO player = repo.selectProfile(loginId);
		System.out.println(player);
		model.addAttribute("player",player );		
	}
	
	@GetMapping("/updateprofile")
	public String updateProfile(HttpSession session, Model model) {
		String loginId = (String)session.getAttribute("loginId");
		PlayerDTO player = repo.selectProfile(loginId);
		System.out.println(player);
		model.addAttribute("player",player );
		return "updateprofile";
	
	}
	
	
	
	@PostMapping("/updateprofile")
	public String updateProfile(HttpSession session, PlayerDTO player) {
		//int result = 0;
		//String loginId = (String)session.getAttribute("loginId");
		//player.setPlayer_id(loginId);
		//result = repo.updateProfile(player);
		repo.updateProfile(player);
		return "redirect:/myaccount";
	}
}
