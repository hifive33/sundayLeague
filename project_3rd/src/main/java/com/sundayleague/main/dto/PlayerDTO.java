package com.sundayleague.main.dto;

import lombok.Data;

@Data
public class PlayerDTO {
	private String player_id;
	private String team_name;
	private String password;
	private String email;
	private String name;
	private String position;
	private String subposition;
	private String height;
	private String weight;
	private String age;
	private String player_comment;
	private String mainfoot;
	private String withdrawal_flag;
	private String authority;
}
