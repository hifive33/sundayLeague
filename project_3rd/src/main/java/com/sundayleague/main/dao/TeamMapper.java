package com.sundayleague.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.dto.TeamDTO;

public interface TeamMapper {

	int insertTeam(Map<String, Object> map);
	TeamDTO selectTeam(String team_name);
	List<PlayerDTO> selectTeam2(String team_name);
	int getTeamCount(Map<String,String>map);
	List<TeamDTO> selectTeamList(Map<String, String> map, RowBounds rb);
	int updateMatch_flag(TeamDTO team);
	String getMatch_flag(String team_name);
}
