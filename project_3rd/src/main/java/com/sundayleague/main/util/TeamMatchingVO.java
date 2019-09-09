/*
 * Author : Jinwoo Jeong
 * When : 2019-09-07
 * Environment : Windows 10, Eclipse Photon for Java, JDK v1.8.0u202
 * Object : 축구 팀 임시 VO. name, rating, stadium은 필수.
 */

package com.sundayleague.main.util;

public class TeamMatchingVO {
	private String name;
	private int win;
	private int lose;
	private int draw;
	private int rating;
	private int stadium;
	
	public TeamMatchingVO(String name, int win, int lose, int draw, int rating, int stadium) {
		super();
		this.name = name;
		this.win = win;
		this.lose = lose;
		this.draw = draw;
		this.rating = rating;
		this.stadium = stadium;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getWin() {
		return win;
	}

	public void setWin(int win) {
		this.win = win;
	}

	public int getLose() {
		return lose;
	}

	public void setLose(int lose) {
		this.lose = lose;
	}

	public int getDraw() {
		return draw;
	}

	public void setDraw(int draw) {
		this.draw = draw;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		rating = rating;
	}

	public int getStadium() {
		return stadium;
	}

	public void setStadium(int stadium) {
		this.stadium = stadium;
	}

	@Override
	public String toString() {
		return "TeamTestVO [name=" + name + ", win=" + win + ", lose=" + lose + ", draw=" + draw + ", rating=" + rating
				+ ", stadium=" + stadium + "]";
	}
	
	
}
