package com.sundayleague.main.dto;

import lombok.Data;

@Data
public class MatchPlayerDTO {
	private String match_player_no;
	private String player_id;
	private String match_no;
	private String minutes_played;
	private String goal;
	private String conceded_goal;
	private String assists;
	private String yellowcard;
	private String redcard;
}
