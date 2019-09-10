/*
 * Author : Jinwoo Jeong
 * When : 2019-09-09 ~ 
 * Environment : Windows 10, Spring Framework v3.8.2, JDK v1.8.0u202
 * Object : 관리자 페이지 Mapper
 */

package com.sundayleague.main.dao;

import java.util.List;

import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.dto.TeamDTO;

public interface AdminMapper {

	List<PlayerDTO> selectPlayerList();

	List<TeamDTO> selectTeamList();

}