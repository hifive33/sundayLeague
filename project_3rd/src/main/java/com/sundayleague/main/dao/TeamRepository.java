package com.sundayleague.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.dto.TeamDTO;

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

}
