package com.sundayleague.main.dao;

import java.util.List;

import com.sundayleague.main.dto.MatchDTO;

public interface MatchMapper {

	int updateMatchFlag(List<MatchDTO> matchList);
	int insertMatches(List<MatchDTO> matchList);
	
}
