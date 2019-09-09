/*
 * Author : Jinwoo Jeong
 * When : 2019-09-07
 * Environment : Windows 10, Eclipse Photon for Java, JDK v1.8.0u202
 * Object : 축구 팀 매칭. List를 받아서 홈팀과 원정팀으로 짝을 지은 뒤 Map으로 출력한다.  
 */

package com.sundayleague.main.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TeamMatching {
	
	//매칭신청리스트, 신청팀수 입력
	public Map<String, String> matching(List<TeamMatchingVO> list, int count){
		Map<String, String> result = new HashMap<>();
		
		//리스트 데이터를 홈팀과 원정팀으로 나누어서 배열에 저장
		TeamMatchingVO home[] = new TeamMatchingVO[count];
		TeamMatchingVO away[] = new TeamMatchingVO[count];
	
		int homeCount=0;
		int awayCount=0;
		
		for(int i=0; i<count; i++) {
			if(list.get(i).getStadium()==1) {
				home[homeCount] = list.get(i);
				homeCount++;
			} else {
				away[awayCount] = list.get(i);
				awayCount++;
			}
		}
		
		selectionSort(home, homeCount);
		selectionSort(away, awayCount);
		
		
		
		
		///내부데이터 확인용
		System.out.println("j, k : " + homeCount+", "+awayCount);
		System.out.println("===Ȩ��===");
		for(int i=0; i<homeCount; i++) {
			
			System.out.println(home[i]);
		}
		System.out.println("===������===");
		for(int i=0; i<awayCount; i++) {
			
			System.out.println(away[i]);
		}
		///
		
		
		//배열에 저장된 데이터로 매칭
		result = match(home, homeCount, away, awayCount);
		
		
		
		return result;
	}
	
	private Map<String, String> match(TeamMatchingVO[] home, int homeCount, TeamMatchingVO[] away, int awayCount) {
		Map<String, String> result = new HashMap<>();
		int homeTemp[] = new int[homeCount];
		int awayTemp[] = new int[awayCount];
		int homeChecked[] = new int[homeCount];
		int awayChecked[] = new int[awayCount];
		int min = 0;
		int game = 0;
		
		if(homeCount > awayCount) { //원정팀의 숫자가 적다 -> 원정팀 기준으로 매칭
			
			for(int i=0; i<awayCount; i++) {
				
				//레이팅점수 차를 배열에 넣는다.
				for(int j=0; j<homeCount; j++) {
					homeTemp[j] = away[i].getRating()-home[j].getRating();
					if(homeTemp[j]<0) {homeTemp[j] *= -1;}
				}
				///내부데이터 확인용
				System.out.print("homeTemp = ");
				for(int j=0; j<homeCount; j++) {
					System.out.print(homeTemp[j]+", ");
				}
				System.out.println();
				///
				
				//배열에서 레이팅점수 차의 최소값을 찾는다. checked 위치에 1이 있으면 무시
				min = homeTemp[0];
				for(int j=0; j<homeCount; j++) {
					if(homeChecked[j]==1) {
						continue;
					}
					
					if(min > homeTemp[j]) {
						min = homeTemp[j];
					}
				}
				///내부데이터 확인용
				System.out.println("min = " + min);
				///
				
				
				//최소값이 존재하는 위치를 찾아서 맵에 매칭된 팀을 등록, 기록된 팀은 checked 배열에 기록
				for(int j=0; j<homeCount; j++) {
					if(min == homeTemp[j]) {
						//ex) home0 -> home팀 0번째 경기
						result.put("home"+game, home[j].getName());
						result.put("away"+game, away[i].getName());
						
						///내부데이터 확인용
						//result.put("homeRating"+game, String.valueOf(home[j].getRating()));
						//result.put("awayRating"+game, String.valueOf(away[i].getRating()));
						//result.put("game"+game, String.valueOf(homeTemp[j]));
						///
						
						game++;
						homeChecked[j] = 1;
						break;
					}
				}
				
				// 1. 리스트, 2. 레이팅 점수차, 3. checked
				
			}

		} else { //홈팀의 숫자가 적거나 같다
				
			for(int i=0; i<homeCount; i++) {
				
				//레이팅점수 차를 배열에 넣는다.
				for(int j=0; j<awayCount; j++) {
					awayTemp[j] = home[i].getRating()-away[j].getRating();
					if(awayTemp[j]<0) {awayTemp[j] *= -1;}
				}
				///내부데이터 확인용
				System.out.print("awayTemp = ");
				for(int j=0; j<awayCount; j++) {
					System.out.print(awayTemp[j]+", ");
				}
				System.out.println();
				///
				
				//배열에서 레이팅점수 차의 최소값을 찾는다. checked 위치에 1이 있으면 무시
				min = awayTemp[0];
				for(int j=0; j<awayCount; j++) {
					if(awayChecked[j]==1) {
						continue;
					}
					
					if(min > awayTemp[j]) {
						min = awayTemp[j];
					}
				}
				///내부데이터 확인용
				System.out.println("min = " + min);
				///
				
				
				//최소값이 존재하는 위치를 찾아서 맵에 매칭된 팀을 등록, 기록된 팀은 checked 배열에 기록
				for(int j=0; j<awayCount; j++) {
					if(min == awayTemp[j]) {
						//ex) home0 -> home팀 0번째 경기
						result.put("away"+game, away[j].getName());
						result.put("home"+game, home[i].getName());
						
						///내부데이터 확인용
						//result.put("awayRating"+game, String.valueOf(away[j].getRating()));
						//result.put("homeRating"+game, String.valueOf(home[i].getRating()));
						//result.put("game"+game, String.valueOf(awayTemp[j]));
						///
						
						game++;
						awayChecked[j] = 1;
						break;
					}
				}
				
				// 1. 리스트, 2. 레이팅 점수차, 3. checked
				
			}
			
		}
		
		///내부데이터 확인용
		System.out.println(result);
		///
		
		return result;
	}

	private void selectionSort(TeamMatchingVO [] array, int count) {
		for(int i=0 ; i<count-1 ; i++) {
			for(int j=i+1 ; j<count ; j++) {
				if(array[i].getRating() /*오름차순*/> array[j].getRating()) swap(i, j, array);
			}
		}
		
	}
	
	private void swap(int a, int b, TeamMatchingVO [] array) {
		TeamMatchingVO temp = array[a];
		array[a] = array[b];
		array[b] = temp;
	}

	
}
