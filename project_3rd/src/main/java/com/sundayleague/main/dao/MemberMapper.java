package com.sundayleague.main.dao;

import com.sundayleague.main.dto.ContactDTO;
import com.sundayleague.main.dto.PlayerDTO;

public interface MemberMapper {

	int insertPlayer(PlayerDTO player);
	PlayerDTO selectOne(PlayerDTO player);
	int updateProfile(PlayerDTO player);
	PlayerDTO selectProfile(String loginId);
	String selectId(PlayerDTO player);
	String selectPw(PlayerDTO player);
	int insertContact(ContactDTO contact);
	void saveFile(String uploadPath);
	String checkId(String player_id);
	
}
