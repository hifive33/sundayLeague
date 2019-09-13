package com.sundayleague.main.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sundayleague.main.dao.TeamRepository;
import com.sundayleague.main.dto.TeamDTO;
import com.sundayleague.main.util.FileService;
import com.sundayleague.main.util.PageNavigator;


@Controller
public class TeamController {

	@Autowired
	TeamRepository repo;
	
	final String uploadPath = "/uploadfile/emblems";
	
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
	public String insertTeam(TeamDTO team,String subregion,HttpSession session, MultipartFile emblemUpload) {
		team.setRegion(team.getRegion() + "-" + subregion);
		String player_id = (String)session.getAttribute("loginId");
		Map<String,Object>map = new HashMap<>();
		map.put("team", team);
		map.put("id", player_id);
		//procedure return == -1 
		if(repo.insertTeam(map)<0) {
			// upload된 emblem은 team_name으로 저장
			FileService.saveOriginalFile(emblemUpload, uploadPath, team.getTeam_name());
			session.setAttribute("team_name", team.getTeam_name());
			return "myteam";
		}else{
			return "creation";
		}
	}
	
	@GetMapping(value="/myteam")
	public String myteam(HttpSession session,Model model) {
		// 가입된 구단이 없을 시 creation으로 이동
		if(session.getAttribute("team_name")==null) return "creation";
		
		model.addAttribute("team", repo.selectTeam((String)session.getAttribute("team_name")));
		model.addAttribute("player", repo.selectTeam2((String)session.getAttribute("team_name")));
		return "myteam";
	}
	
	@GetMapping("/teams")
	public void team(@RequestParam(value = "region", defaultValue = "") String region
			,@RequestParam(value = "searchWord", defaultValue = "") String searchWord,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage, Model model) {
		int total = repo.getTeamCount(region, searchWord);
		PageNavigator navi = new PageNavigator(currentPage, total);
		List<TeamDTO>list = repo.selectTeamList(region,searchWord,navi.getStartRecord(), navi.getCountPerPage());

		model.addAttribute("navi", navi);
		model.addAttribute("teams", list);
		model.addAttribute("region", region);
		model.addAttribute("searchWord", searchWord);
	}
	
	@GetMapping("/teamdetails")
	public void teamdetails(String team_name, Model model) {
		model.addAttribute("team", repo.selectTeam(team_name));
		model.addAttribute("player", repo.selectTeam2(team_name));
	}
}
	
