/*
 * Author : Jinwoo Jeong
 * When : 2019-09-07
 * Environment : Windows 10, Eclipse Photon for Java, JDK v1.8.0u202
 * Object : 축구 팀 임시 VO. name, rating, stadium은 필수.
 */

package com.sundayleague.main.dto;

import lombok.Data;

@Data
public class TeamMatchingDTO {
	private String name;
	private int win;
	private int lose;
	private int draw;
	private int rating;
	private String region;
	private int stadium;
	private String match_day;
}
