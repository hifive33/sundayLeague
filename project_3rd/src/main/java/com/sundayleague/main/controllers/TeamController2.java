package com.sundayleague.main.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sundayleague.main.dao.MemberRepository;


@Controller
public class TeamController2 {
	
	@Autowired
	MemberRepository memberRepo;
	
	@GetMapping("/playerdetails")
	public void playerdetails(String playerid, Model model) {
		model.addAttribute("player", memberRepo.selectProfile(playerid));
	}
	
}
