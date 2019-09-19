package com.sundayleague.main.dto;

import lombok.Data;

@Data
public class TeamDTO {
	private String team_name;
	private int victory;
	private int defeat;
	private int draw;
	private int rating;
	private String established;
	private int headcount;
	private String team_comment;
	private String region;
	private String deleted_flag;
	private String accpet_flag;
	private String match_flag;
}
