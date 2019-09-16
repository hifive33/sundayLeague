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
import org.springframework.web.bind.annotation.RequestParam;

import com.sundayleague.main.dao.AdminRepository;
import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.dto.TeamDTO;
import com.sundayleague.main.util.PageNavigator;

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
	public String adminManagePlayer(@RequestParam(value="searchItem", defaultValue="name") String searchItem, 
			@RequestParam(value="searchWord", defaultValue="") String searchWord, 
			@RequestParam(value="currentPage", defaultValue="1") int currentPage, 
			Model model){
		
		
		//전체 유저수 조회
		int totalRecordCount = adRepo.getPlayerCount(searchItem, searchWord);
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		
		
		
		List<PlayerDTO> list = adRepo.selectPlayerList(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());
		
		
		model.addAttribute("searchItem", searchItem);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("navi", navi);
		model.addAttribute("list", list);

		System.out.println(navi);
		System.out.println(list);
		
		return "admin/adminManagePlayer";
	}
	
	@RequestMapping(value="/adminManageTeam", method=RequestMethod.GET)
	public String adminManageTeam(@RequestParam(value="searchItem", defaultValue="team_name") String searchItem, 
			@RequestParam(value="searchWord", defaultValue="") String searchWord, 
			@RequestParam(value="currentPage", defaultValue="1") int currentPage, 
			Model model){
		
		//전체 구단수 조회
		int totalRecordCount = adRepo.getTeamCount(searchItem, searchWord);
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		
		List<TeamDTO> list = adRepo.selectTeamList(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());
		
		model.addAttribute("searchItem", searchItem);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("navi", navi);
		model.addAttribute("list", list);

		System.out.println(navi);
		System.out.println(list);

		
		return "admin/adminManageTeam";
	}
	
	@RequestMapping(value="/adminManagePlayerDetail", method=RequestMethod.GET)
	public String adminManagePlayerDetail(String player_id, Model model){
		
		if(player_id == null){ return "redirect:/adminMain"; }
		
		System.out.println(player_id);
		
		PlayerDTO player = adRepo.selectPlayer(player_id);
		
		System.out.println(player);
		
		model.addAttribute("player", player);
		
		return "admin/adminManagePlayerDetail";
	}
}
