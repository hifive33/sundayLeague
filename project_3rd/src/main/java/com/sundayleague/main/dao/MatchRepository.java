package com.sundayleague.main.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sundayleague.main.dto.MatchDTO;

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
	
}
