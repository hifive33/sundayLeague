package com.sundayleague.main.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
}
