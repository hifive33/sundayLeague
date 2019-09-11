package com.sundayleague.main.dao;

import java.util.List;
import java.util.Map;

import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.dto.TeamDTO;

public interface TeamMapper {

	int insertTeam(Map<String, Object> map);
	TeamDTO selectTeam(String team_name);
	List<PlayerDTO> selectTeam2(String team_name);
}
