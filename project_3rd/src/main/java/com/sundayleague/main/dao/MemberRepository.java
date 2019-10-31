package com.sundayleague.main.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sundayleague.main.dto.ContactDTO;
import com.sundayleague.main.dto.PlayerDTO;

@Repository
public class MemberRepository {

	@Autowired
	SqlSession session;

	public int registration(PlayerDTO player) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		
		int result = mapper.insertPlayer(player);
		
		return result;
	}

	public PlayerDTO login(PlayerDTO player) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		
		PlayerDTO result = mapper.selectOne(player);
		
		return result;
	}
	public PlayerDTO selectProfile(String loginId) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		
		PlayerDTO player = mapper.selectProfile(loginId);
		
		return player;
	}

	public int updateProfile(PlayerDTO player) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		
		int result = mapper.updateProfile(player);
		return result;
	}

	public String selectId(PlayerDTO player) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		String id = null;
		id = mapper.selectId(player);
		
		return id;
	}

	public String selectPw(PlayerDTO player) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		String pw = null;
		pw = mapper.selectPw(player);
		
		return pw;
	}

	public void saveFile(String uploadPath) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		mapper.saveFile(uploadPath);
		
	}
	
	
	public int insertContact(ContactDTO contact) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		return mapper.insertContact(contact);
	}

	public String checkId(String player_id) {
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		return mapper.checkId(player_id);
	}
	
	
}
