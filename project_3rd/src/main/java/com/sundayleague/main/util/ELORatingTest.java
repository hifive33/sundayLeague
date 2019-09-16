
/*
 * Author : Jinwoo Jeong
 * When : 2019-09-07
 * Environment : Windows 10, Eclipse Photon for Java, JDK v1.8.0u202
 * Object : 축구 팀 레이팅 점수 계산 예제
 */

package com.sundayleague.main.util;

public class ELORatingTest {

	public static void main(String[] args) {
		ELORating elo = new ELORating();
		
		//초기점수
		int start = 500;
		//WIN, LOSE, DRAW
		String flag = "LOSE"; 
		
		//일반 경기
		elo.calcRating(flag, start, start);
		elo.calcRating(flag, start+100, start);
		elo.calcRating(flag, start+200, start);
		elo.calcRating(flag, start+300, start);
		elo.calcRating(flag, start+400, start);
		
		//배치고사
		elo.placementCalcRating(flag, start, start);
		elo.placementCalcRating(flag, start+100, start);
		elo.placementCalcRating(flag, start+200, start);
		elo.placementCalcRating(flag, start+300, start);
		elo.placementCalcRating(flag, start+400, start);
		
		
	}

}
