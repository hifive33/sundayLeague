package com.sundayleague.main.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	@GetMapping("/registration")
	public void registration() {
	}

	@PostMapping("/registration")
	public String registrationProcess(PlayerDTO player){
		int result = repo.registration(player);
		
		return result == 1 ? "redirect:/login" : null;
	}
	
	
}
