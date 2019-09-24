/*
 * Author : Jinwoo Jeong
 * When : 2019-09-09 ~ 
 * Environment : Windows 10, Spring Framework v3.8.2, JDK v1.8.0u202
 * Object : 관리자 페이지 Repo
 */

package com.sundayleague.main.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sundayleague.main.dto.ContactDTO;
import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.dto.TeamDTO;

@Repository
public class AdminRepository {

	@Autowired
	SqlSession session;

	public List<PlayerDTO> selectPlayerList(String searchItem, String searchWord, int startRecord, int countPerPage) {
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		Map<String, String> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		List<PlayerDTO> list = mapper.selectPlayerList(map, rb);
		
		return list;
	}

	public List<TeamDTO> selectTeamList(String searchItem, String searchWord, int startRecord, int countPerPage) {
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		Map<String, String> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		List<TeamDTO> list = mapper.selectTeamList(map, rb);
		
		return list;
	}

	public int getPlayerCount(String searchItem, String searchWord) {
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		
		Map<String, String> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		int result = mapper.selectPlayerCount(map);
		
		return result;
	}

	public int getTeamCount(String searchItem, String searchWord) {
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		
		Map<String, String> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		int result = mapper.selectTeamCount(map);
		
		return result;
	}

	public PlayerDTO selectPlayer(String player_id) {
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		
		PlayerDTO player = mapper.selectPlayer(player_id);
		
		return player;
	}

	public int deletePlayer(String player_id) {
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		
		int result = mapper.updatePlayerDelete(player_id);
		
		return result;
	}

	public TeamDTO selectTeam(String team_name) {
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		
		TeamDTO team = mapper.selectTeam(team_name);
		
		return team;
	}

	public List<PlayerDTO> selectTeamMember(String team_name) {
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		
		List<PlayerDTO> list = mapper.selectTeamMember(team_name); 
		
		return list;
	}
	
	public List<ContactDTO> allContact(){
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		return mapper.allContact();
	}
	
	public String findMail(String contact_no) {
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		return mapper.findMail(contact_no);
	}
	
	public int updateMail(String contact_no) {
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		return mapper.updateMail(contact_no);
	}
}
