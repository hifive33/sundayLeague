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
	private String match_address;
	private String match_day;
}
