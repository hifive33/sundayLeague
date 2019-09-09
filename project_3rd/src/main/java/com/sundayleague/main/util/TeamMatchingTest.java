/*
 * Author : Jinwoo Jeong
 * When : 2019-09-07
 * Environment : Windows 10, Eclipse Photon for Java, JDK v1.8.0u202
 * Object : 축구 팀 매칭 예제
 */

package com.sundayleague.main.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class TeamMatchingTest {
	public static void main(String[] args) {
		
		Random rand = new Random();
		List<TeamMatchingVO> list = new ArrayList<>();
		Map<String, String> map = new HashMap<>();
		
		int rating = 0;
		int stadium = 0;
		int count = 0;
		
		TeamMatching team = new TeamMatching();
		

		for(int i=0; i<10; i++) {
			rating = rand.nextInt(301) + 1000;
			stadium = rand.nextInt(2);
			list.add(new TeamMatchingVO("team"+i, 0, 0, 0, rating, stadium));
			count++;
		}
		
		map = team.matching(list, count); //매칭신청리스트, 신청팀수
		
		//System.out.println(map);
	}
	
	
}
