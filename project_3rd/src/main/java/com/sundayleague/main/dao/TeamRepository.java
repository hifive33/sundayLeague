package com.sundayleague.main.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
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

	public int updateMatch_flag(TeamDTO team) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.updateMatch_flag(team);
	}

	public String getMatchFlag(String team_name) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		return mapper.getMatch_flag(team_name);
	}
	
}
