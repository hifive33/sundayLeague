package com.sundayleague.main.dto;

import lombok.Data;

@Data
public class MatchDTO {
	private String match_no;
	private String team_name;
	private String away_team_name;
	private String home_teamscore;
	private String away_teamscore;
	private String matchdate;
	private String match_address;
}
