package com.sundayleague.main.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sundayleague.main.dto.FormationDTO;
import com.sundayleague.main.dto.MatchDTO;
import com.sundayleague.main.dto.MatchGoalDTO;
import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.dto.TeamDTO;
import com.sundayleague.main.dto.TeamMatchingDTO;

@Repository
public class TeamRepository {

	@Autowired
	SqlSession session;
	
	public int insertTeam(Map<String, Object> map) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		int result = mapper.insertTeam(map);
		System.out.println(result+"return값 확인");
		return result;
	}
	
	public TeamDTO selectTeam(String team_name) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.selectTeam(team_name);
	}
	
	public List<PlayerDTO> selectTeam2(String team_name){
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.selectTeam2(team_name);
	}
	
	public List<MatchGoalDTO> selectTeam3(String team_name){
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.selectTeam3(team_name);
	}
	public List<PlayerDTO> selectTeam4(String team_name){
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.selectTeam4(team_name);
	}
	public int getTeamCount(String region,String searchWord) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		Map<String,String> map = new HashMap<>();
		map.put("region", region);
		map.put("searchWord",searchWord);
		
		return mapper.getTeamCount(map);
	}
	
	public List<TeamDTO> selectTeamList(String region,String searchWord, int startRecord, int countPerPage){
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		Map<String,String> map = new HashMap<>();
		map.put("region", region);
		map.put("searchWord", searchWord);
		
		return mapper.selectTeamList(map, new RowBounds(startRecord,countPerPage));
	}
	
	public int deleteTeam(String team_name) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.deleteTeam(team_name);
	}


	public int updateMatch_flag(TeamDTO team) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.updateMatch_flag(team);
	}

	public String getMatchFlag(String team_name) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.getMatch_flag(team_name);
	}
	
	public List<TeamMatchingDTO> selectMatchTeamList(){
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.selectMatchTeamList();
	}

	public MatchDTO selectMatch(String team_name) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.selectMatch(team_name);
	}
	public MatchDTO selectMatch2(String team_name) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.selectMatch2(team_name);
	}

	public int countUpHeadcount(TeamDTO team) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.countUpHeadcount(team);
	}
	public List<MatchDTO> selectMatch3(String team_name) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.selectMatch3(team_name);
	}

	public FormationDTO selectFormation(String team_name) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		FormationDTO formation = mapper.selectFormation(team_name);
		return formation;
	}

	public FormationDTO insertFormation(String team_name) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		int result = mapper.insertFormation(team_name);
		FormationDTO formation = mapper.selectFormation(team_name); 
		return formation;
	}

	public PlayerDTO selectPlayer(String name, String team_name) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		Map<String, String> map = new HashMap<>();
		map.put("player_id", name);
		map.put("team_name", team_name);
		PlayerDTO result = mapper.selectPlayer(map);
		return result;
	}

	public int updateTeamFormation(String team_name, String formation) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		Map<String, String> map = new HashMap<>();
		map.put("formation", formation);
		map.put("team_name", team_name); 
		int result = mapper.updateTeamFormation(map);
		return result;
	}

	public int updatePlayerFormation(String team_name, String player_id, String player) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		Map<String, String> map = new HashMap<>();
		map.put("team_name", team_name);
		map.put("name", player_id);
		map.put("player", player);
		
		
		FormationDTO formation = mapper.selectFormation(team_name);
		
		if(formation.getPlayer0()!=null){
			if(formation.getPlayer0().equals(player_id)){
				String play = "player0"; 
				map.put("player", play);
				int result = mapper.deletePlayerFormation(map);
			}
		}
		if(formation.getPlayer1()!=null){
			if(formation.getPlayer1().equals(player_id)){
				String play = "player1"; 
				map.put("player", play);
				int result = mapper.deletePlayerFormation(map);
			}
		}
		if(formation.getPlayer2()!=null){
			if(formation.getPlayer2().equals(player_id)){
				String play = "player2"; 
				map.put("player", play);
				int result = mapper.deletePlayerFormation(map);
			}
		}
		if(formation.getPlayer3()!=null){
			if(formation.getPlayer3().equals(player_id)){
				String play = "player3"; 
				map.put("player", play);
				int result = mapper.deletePlayerFormation(map);
			}
		}
		if(formation.getPlayer4()!=null){
			if(formation.getPlayer4().equals(player_id)){
				String play = "player4"; 
				map.put("player", play);
				int result = mapper.deletePlayerFormation(map);
			}
		}
		if(formation.getPlayer5()!=null){
			if(formation.getPlayer5().equals(player_id)){
				String play = "player5"; 
				map.put("player", play);
				int result = mapper.deletePlayerFormation(map);
			}
		}
		if(formation.getPlayer6()!=null){
			if(formation.getPlayer6().equals(player_id)){
				String play = "player6"; 
				map.put("player", play);
				int result = mapper.deletePlayerFormation(map);
			}
		}
		if(formation.getPlayer7()!=null){
			if(formation.getPlayer7().equals(player_id)){
				String play = "player7"; 
				map.put("player", play);
				int result = mapper.deletePlayerFormation(map);
			}
		}
		if(formation.getPlayer8()!=null){
			if(formation.getPlayer8().equals(player_id)){
				String play = "player8"; 
				map.put("player", play);
				int result = mapper.deletePlayerFormation(map);
			}
		}
		if(formation.getPlayer9()!=null){
			if(formation.getPlayer9().equals(player_id)){
				String play = "player9"; 
				map.put("player", play);
				int result = mapper.deletePlayerFormation(map);
			}
		}
		if(formation.getPlayer10()!=null){
			if(formation.getPlayer10().equals(player_id)){
				String play = "player10"; 
				map.put("player", play);
				int result = mapper.deletePlayerFormation(map);
			}
		}
		
			
		map.put("player", player);
		
		
		int result = mapper.updatePlayerFormation(map);
		return result;
	}
	
	public int countHead(String team_name) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.countHead(team_name);
	}
	public List<TeamDTO>rankTeam(){
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.rankTeam();
  }

	public String checkTeamName(String team_name) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.checkTeamName(team_name);
	}
}
