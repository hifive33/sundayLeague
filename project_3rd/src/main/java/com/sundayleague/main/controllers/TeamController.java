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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sundayleague.main.dao.MemberRepository;
import com.sundayleague.main.dao.TeamRepository;
import com.sundayleague.main.dto.FormationDTO;
import com.sundayleague.main.dto.MatchDTO;
import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.dto.TeamDTO;
import com.sundayleague.main.util.FileService;
import com.sundayleague.main.util.PageNavigator;


@Controller
public class TeamController {

	@Autowired
	TeamRepository repo;
	
	@Autowired
	MemberRepository Mrepo;
	
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
			session.setAttribute("authority", "3");
			return "redirect:/myteam";
		}else{
			return "creation";
		}
	}
	
	@GetMapping(value="/myteam")
	public String myteam(HttpSession session,Model model) {
		// 가입된 구단이 없을 시 creation으로 이동
		if(session.getAttribute("team_name")==null) return "creation";
		TeamDTO team = repo.selectTeam((String)session.getAttribute("team_name"));
		team.setHeadcount(repo.countHead((String)session.getAttribute("team_name")));
		model.addAttribute("team", team);
		List<PlayerDTO> playerList = repo.selectTeam2((String)session.getAttribute("team_name"));
		playerList.forEach(x -> x.setPlayer_comment(x.getPlayer_comment().split("\r\n")[0]));
		model.addAttribute("player", playerList);
		model.addAttribute("player2", repo.selectTeam4((String)session.getAttribute("team_name")));
		
		model.addAttribute("team", repo.selectTeam((String)session.getAttribute("team_name")));
		model.addAttribute("player", repo.selectTeam2((String)session.getAttribute("team_name")));
		
		////팀 포메이션 정보 획득 
		FormationDTO formation = repo.selectFormation((String)session.getAttribute("team_name"));
		if(formation==null){
			formation = repo.insertFormation((String)session.getAttribute("team_name"));
		}
		model.addAttribute("formation", formation);
		
		System.out.println("선수리스트 : " + repo.selectTeam2((String)session.getAttribute("team_name")));
		System.out.println("포메이션 : " + formation);

		return "myteam";
	}
	
	@GetMapping("/printFormation")
	@ResponseBody
	public PlayerDTO printFormation(String player, String team_name) {
		System.out.println(player);
		System.out.println(team_name);
		
		String name = ""; 
		
		FormationDTO result = repo.selectFormation(team_name);
		
		switch(player){
		case "playerGK":
			name = result.getPlayer0(); break;
		case "player1":
			name = result.getPlayer1(); break;
		case "player2":
			name = result.getPlayer2(); break;
		case "player3":
			name = result.getPlayer3(); break;
		case "player4":
			name = result.getPlayer4(); break;
		case "player5":
			name = result.getPlayer5(); break;
		case "player6":
			name = result.getPlayer6(); break;
		case "player7":
			name = result.getPlayer7(); break;
		case "player8":
			name = result.getPlayer8(); break;
		case "player9":
			name = result.getPlayer9(); break;
		case "player10":
			name = result.getPlayer10(); break;
		}
		System.out.println("name : " + name);
		
		if(name == null){
			System.out.println("null");
			return null;
		} else {
		
		PlayerDTO res = repo.selectPlayer(name, team_name);
		System.out.println("res : " + res);
		
		return res;
		}
	}
	
	@RequestMapping(value="/formationModalForm", method=RequestMethod.POST)
	public String formationModalForm(String formation, String player_id, String player, HttpSession session){
		System.out.println("--formationModalForm--");
		System.out.println("formation : " + formation);
		System.out.println("player_id : " + player_id);
		System.out.println("player : " + player);
		
		if(player!=null){
			if(player.equals("GK")){
				player = "0";
			}
		}
		
		String team_name = (String)session.getAttribute("team_name");
		if(formation != null){
			int result = repo.updateTeamFormation(team_name, formation);
		} else if(player_id != null){
			int result = repo.updatePlayerFormation(team_name, player_id, "player"+player);
		}
		return "redirect:/myteam";
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
	
	@GetMapping("/teamdelete")
	public String teamdelete(HttpSession session) {
		repo.deleteTeam((String)session.getAttribute("team_name"));
		FileService.deleteFile(uploadPath + "/" + (String)session.getAttribute("team_name"));
		session.removeAttribute("team_name");
		session.setAttribute("authority", 0);
		return "redirect:/";
	}
	
}
	
