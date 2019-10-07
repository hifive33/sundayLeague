package com.sundayleague.main.controllers;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sundayleague.main.dao.MatchRepository;
import com.sundayleague.main.dao.TeamRepository;
import com.sundayleague.main.dto.MatchDTO;
import com.sundayleague.main.dto.MatchGoalDTO;
import com.sundayleague.main.dto.MatchPlayerDTO;
import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.dto.TeamDTO;
import com.sundayleague.main.util.ELORating;

@Controller
public class MatchController {
	
	@Autowired
	TeamRepository teamRepo;
	
	@Autowired
	MatchRepository matchRepo;
	
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
				
				model.addAttribute("home_team_name", match.getTeam_name());
				model.addAttribute("away_team_name", match.getAway_team_name());
				model.addAttribute("matchdate", match.getMatchdate());
				model.addAttribute("match_address", match.getMatch_address());
			}else{
				model.addAttribute("home_team_name", session.getAttribute("team_name"));
			}
			return "match";
		}
	}
	
	// 매칭신청, 취소
	@GetMapping("/matchfind")
	public String matchfind(HttpSession session, TeamDTO team){
		team.setTeam_name((String)session.getAttribute("team_name"));
		teamRepo.updateMatch_flag(team);
		return "redirect:/match";
	}
	
	// 점수입력 페이지로 이동
	@GetMapping("/scorewrite")
	public void scorewrite(HttpSession session, Model model){
		MatchDTO match = teamRepo.selectMatch((String) session.getAttribute("team_name"));
		String match_no = match.getMatch_no();
		String home_team_name = match.getTeam_name();
		String away_team_name = match.getAway_team_name();
		
		model.addAttribute("home_team_name", home_team_name);
		model.addAttribute("away_team_name", away_team_name);
		model.addAttribute("match_no", match_no);
		model.addAttribute("homePlayer", teamRepo.selectTeam2(home_team_name));
		model.addAttribute("awayPlayer", teamRepo.selectTeam2(away_team_name));
	}
	
	// 점수입력 처리
	@PostMapping("/scorewrite")
	@ResponseBody
	public String scorewriteProcess(@RequestBody ArrayList<MatchPlayerDTO> dataList, HttpSession session){
		List<MatchPlayerDTO> list = dataList;
		// insert match_player
		if (list.size() > 0) matchRepo.scorewrite(list);
		
		// update match
		MatchDTO match = teamRepo.selectMatch((String) session.getAttribute("team_name"));
		List<PlayerDTO> home_players = teamRepo.selectTeam2(match.getTeam_name());

		int home_teamscore = 0;
		int count = 0;
		
		for (MatchPlayerDTO matchPlayer : dataList){
			if (matchPlayer.getGoal() != null){
				for (PlayerDTO player : home_players){
					if (player.getPlayer_id().equals(matchPlayer.getPlayer_id())){
						home_teamscore++;
						break;
					}
				}
				count++;
			}
		}
		match.setHome_teamscore(String.valueOf(home_teamscore));
		match.setAway_teamscore(String.valueOf(count - home_teamscore));
		
		matchRepo.updateMatchGoal(match);
		
		// insert match_goal
		List<MatchGoalDTO> match_goalList = new ArrayList<>();
		Map<String, List<MatchPlayerDTO>> groupByMinutes = list.stream()
			.collect(Collectors.groupingBy(MatchPlayerDTO::getMinutes_played));
		if (groupByMinutes.size() != 0){
			System.out.println(groupByMinutes);
			groupByMinutes.entrySet().removeIf(entry -> entry.getValue().get(0).getGoal() == null);
			// 확인용 출력
			/*for (Map.Entry<String, List<MatchPlayerDTO>> entry : groupByMinutes.entrySet()){
				System.out.println(entry.getKey() + " : " + entry.getValue());
			}*/
			for (Map.Entry<String, List<MatchPlayerDTO>> entry : groupByMinutes.entrySet()){
				MatchGoalDTO matchGoal = new MatchGoalDTO();
				matchGoal.setMatch_no(match.getMatch_no());
				matchGoal.setPlayer_id(entry.getValue().get(0).getPlayer_id());
				matchGoal.setGoaltime(entry.getKey());
				try {
					matchGoal.setAssistedby(entry.getValue().get(1).getPlayer_id());
				} catch(IndexOutOfBoundsException e){
				}
				match_goalList.add(matchGoal);
			}
			if (match_goalList.size() > 0) matchRepo.insertMatchGoal(match_goalList);
			
			// update team / match_flag -> 0 / match_address, match_day -> null
			match.setMatchdate(null);
			List<MatchDTO> updateTeamList = new ArrayList<>();
			updateTeamList.add(match);
			matchRepo.updateMatchFlag(updateTeamList);
		}
		
		// win, lose, draw update
		// rating 처리
		List<TeamDTO> teamList = new ArrayList<>();
		ELORating elo = new ELORating();
		
		TeamDTO home_team = teamRepo.selectTeam(match.getTeam_name());
		TeamDTO away_team = teamRepo.selectTeam(match.getAway_team_name());
		if (Integer.parseInt(match.getHome_teamscore()) > Integer.parseInt(match.getAway_teamscore())){
			home_team.setVictory(home_team.getVictory() + 1);
			away_team.setDefeat(away_team.getDefeat() + 1);
			home_team.setRating(elo.calcRating("WIN", home_team.getRating(), away_team.getRating()));
			away_team.setRating(elo.calcRating("LOSE", away_team.getRating(), home_team.getRating()));
		} else if(Integer.parseInt(match.getHome_teamscore()) == Integer.parseInt(match.getAway_teamscore())){
			home_team.setDraw(home_team.getDraw() + 1);
			away_team.setDraw(away_team.getDraw() + 1);
			home_team.setRating(elo.calcRating("DRAW", home_team.getRating(), away_team.getRating()));
			away_team.setRating(elo.calcRating("DRAW", away_team.getRating(), home_team.getRating()));
		} else{
			home_team.setDefeat(home_team.getDefeat() + 1);
			away_team.setVictory(away_team.getVictory() + 1);
			home_team.setRating(elo.calcRating("LOSE", home_team.getRating(), away_team.getRating()));
			away_team.setRating(elo.calcRating("WIN", away_team.getRating(), home_team.getRating()));
		}
		teamList.add(home_team);
		teamList.add(away_team);
		matchRepo.updateTeamWinLoseRating(teamList);
		
		
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
			
			model.addAttribute("home_team_name", match.getTeam_name());
			model.addAttribute("away_team_name", match.getAway_team_name());
			model.addAttribute("matchdate", match.getMatchdate());
			model.addAttribute("match_address", match.getMatch_address());
		}else{
			model.addAttribute("home_team_name", session.getAttribute("team_name"));
		}
 		
		MatchDTO result = teamRepo.selectMatch2((String)session.getAttribute("team_name"));
		List<MatchGoalDTO> result2 = null;
		List<MatchGoalDTO> result3 = null;
		if (result != null) {
			result2 = teamRepo.selectTeam3(result.getTeam_name());
			result3 = teamRepo.selectTeam3(result.getAway_team_name());
		
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
	}
	
	@PostMapping("/fixturelist")
	@ResponseBody
	public List<MatchDTO> fixturelist(HttpSession session) {
		List<MatchDTO> list = teamRepo.selectMatch3((String)session.getAttribute("team_name"));
		return list;
	}
	
	
	
}
