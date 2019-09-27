package com.sundayleague.main.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sundayleague.main.dto.MatchDTO;
import com.sundayleague.main.dto.MatchGoalDTO;
import com.sundayleague.main.dto.MatchPlayerDTO;

@Repository
public class MatchRepository {

	@Autowired
	SqlSession session;

	public int updateMatchFlag(List<MatchDTO> matchList) {
		MatchMapper mapper = session.getMapper(MatchMapper.class);
		return mapper.updateMatchFlag(matchList);
	}

	public int insertMatches(List<MatchDTO> matchList) {
		MatchMapper mapper = session.getMapper(MatchMapper.class);
		return mapper.insertMatches(matchList);
	}

	public int scorewrite(List<MatchPlayerDTO> dataList) {
		MatchMapper mapper = session.getMapper(MatchMapper.class);
		return mapper.scorewrite(dataList);
	}

	public int updateMatchGoal(MatchDTO match) {
		MatchMapper mapper = session.getMapper(MatchMapper.class);
		return mapper.updateMatchGoal(match);
	}

	public int insertMatchGoal(List<MatchGoalDTO> match_goalList) {
		MatchMapper mapper = session.getMapper(MatchMapper.class);
		return mapper.insertMatchGoal(match_goalList);
	}
	
}
