package com.sundayleague.main.dao;

import com.sundayleague.main.dto.PlayerDTO;

public interface MemberMapper {

	int insertPlayer(PlayerDTO player);
	PlayerDTO selectOne(PlayerDTO player);
	int updateProfile(PlayerDTO player);
	PlayerDTO selectProfile(String loginId);
	
}
