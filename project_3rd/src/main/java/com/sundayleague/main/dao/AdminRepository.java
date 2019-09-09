/*
 * Author : Jinwoo Jeong
 * When : 2019-09-09 ~ 
 * Environment : Windows 10, Spring Framework v3.8.2, JDK v1.8.0u202
 * Object : 관리자 페이지 Repo
 */

package com.sundayleague.main.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.dto.TeamDTO;

@Repository
public class AdminRepository {

	@Autowired
	SqlSession session;

	public List<PlayerDTO> selectPlayerList() {
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		
		List<PlayerDTO> list = mapper.selectPlayerList();
		
		return list;
	}

	public List<TeamDTO> selectTeamList() {
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		
		List<TeamDTO> list = mapper.selectTeamList();
		
		return list;
	}
	
}
