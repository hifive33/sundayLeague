package com.sundayleague.main.dao;

import com.sundayleague.main.dto.PlayerDTO;

public interface MemberMapper {

	int insertPlayer(PlayerDTO player);
	PlayerDTO selectOne(PlayerDTO player);
	PlayerDTO updateProfile(String loginId);
	PlayerDTO selectProfile(String loginId);
	
}
