package com.sundayleague.main.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sundayleague.main.dto.TeamDTO;

@Repository
public class TeamRepository {

	@Autowired
	SqlSession session;
	
	public int insertTeam(TeamDTO team) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.insertTeam(team);
	}
}
