/*
 * Author : Jinwoo Jeong
 * When : 2019-09-09 ~ 
 * Environment : Windows 10, Spring Framework v3.8.2, JDK v1.8.0u202
 * Object : 관리자 페이지 Mapper
 */

package com.sundayleague.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.sundayleague.main.dto.ContactDTO;
import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.dto.TeamDTO;

public interface AdminMapper {

	List<PlayerDTO> selectPlayerList(Map<String, String> map, RowBounds rb);

	List<TeamDTO> selectTeamList(Map<String, String> map, RowBounds rb);

	int selectPlayerCount(Map<String, String> map);

	int selectTeamCount(Map<String, String> map);

	PlayerDTO selectPlayer(String player_id);

	int updatePlayerDelete(String player_id);

	TeamDTO selectTeam(String team_name);

	List<PlayerDTO> selectTeamMember(String team_name);
	List<ContactDTO> allContact();
	String findMail(String contact_no);
	int updateMail(String contact_no);
}
