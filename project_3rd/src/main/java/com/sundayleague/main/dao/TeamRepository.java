package com.sundayleague.main.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeamRepository {

	@Autowired
	SqlSession session;
	
	public int insertTeam(Map<String, Object> map) {
		TeamMapper mapper = session.getMapper(TeamMapper.class);
		System.out.println();
		return mapper.insertTeam(map);
	}
}
