package com.sundayleague.main.dao;

import java.util.List;

import com.sundayleague.main.dto.MatchDTO;
import com.sundayleague.main.dto.MatchGoalDTO;
import com.sundayleague.main.dto.MatchPlayerDTO;
import com.sundayleague.main.dto.TeamDTO;

public interface MatchMapper {

	int updateMatchFlag(List<MatchDTO> matchList);
	int insertMatches(List<MatchDTO> matchList);
	int scorewrite(List<MatchPlayerDTO> dataList);
	int updateMatchGoal(MatchDTO match);
	int insertMatchGoal(List<MatchGoalDTO> match_goalList);
	int updateTeamWinLoseRating(List<TeamDTO> teamList);
	
}
