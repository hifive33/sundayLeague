package com.sundayleague.main.dto;

import lombok.Data;

@Data
public class MatchGoalDTO {
	private String matchgoal_no;
	private String match_no;
	private String player_id;
	private String goaltime;
	private String assistedby;
}
