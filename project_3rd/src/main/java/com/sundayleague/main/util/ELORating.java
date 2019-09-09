/*
 * Author : Jinwoo Jeong
 * When : 2019-09-07
 * Environment : Windows 10, Eclipse Photon for Java, JDK v1.8.0u202
 * Object : 축구 팀 레이팅 점수 계산
 */

package com.sundayleague.main.util;

public class ELORating {
	
	static final double WIN = 1;			 //승리상수
	static final double DRAW = 0.5;			 //무승부상수
	static final double LOSE = 0;			 //패배상수
	
	static final int CONSTANT = 10;			 //일반경기 점수상수
	static final int PLACEMENTCONSTANT = 50; //배치고사용 점수상수
	
	public int calcRating(String flag, int teamRating, int objectTeamRating) {
		int result = 0;			// 결과 Rating점수
		double winRate = 0;		// 상대 팀에 대한 승률. Rating점수로 계산함.
		double pow = 0;
		
		//계산식
		pow = (double)(objectTeamRating-teamRating)/400;
		winRate = 1 / (1 + Math.pow(10, pow));
		
		switch(flag) {
		case "WIN":
			result = teamRating + (int)(CONSTANT * (WIN - winRate));
			break;
		case "LOSE":
			result = teamRating + (int)(CONSTANT * (LOSE - winRate));
			break;
		case "DRAW":
			result = teamRating + (int)(CONSTANT * (DRAW - winRate));
			break;
		}
		
		
		///내부데이터 확인용
		System.out.println("======");
		System.out.println("myTeam : " + teamRating);
		System.out.println("objectTeam : " + objectTeamRating);
		System.out.println("pow = " + pow);
		System.out.println("winRate = " + winRate);
		System.out.println("result = " + result);
		System.out.println("======");
		///
		
		return result;
	}
	
	public int placementCalcRating(String flag, int teamRating, int objectTeamRating) {
		int result = 0;			// 결과 Rating점수
		double winRate = 0;		// 상대 팀에 대한 승률. Rating점수로 계산함.
		double pow = 0;
		
		//계산식
		pow = (double)(objectTeamRating-teamRating)/400;
		winRate = 1 / (1 + Math.pow(10, pow));
		
		switch(flag) {
		case "WIN":
			result = teamRating + (int)(PLACEMENTCONSTANT * (WIN - winRate));
			break;
		case "LOSE":
			result = teamRating + (int)(PLACEMENTCONSTANT * (LOSE - winRate));
			break;
		case "DRAW":
			result = teamRating + (int)(PLACEMENTCONSTANT * (DRAW - winRate));
			break;
		}
		
		
		///내부데이터 확인용
		System.out.println("======");
		System.out.println("myTeam : " + teamRating);
		System.out.println("objectTeam : " + objectTeamRating);
		System.out.println("pow = " + pow);
		System.out.println("winRate = " + winRate);
		System.out.println("result = " + result);
		System.out.println("======");
		///
		
		return result;
	}
	
}
