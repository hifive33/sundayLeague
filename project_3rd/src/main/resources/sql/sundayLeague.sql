/* Create User */

--create user project_3rd identified by 1234;
--grant connect, resource, dba to project_3rd;

/* Drop Sequences */

DROP SEQUENCE SEQ_match_no;
DROP SEQUENCE SEQ_match_goal_no;
DROP SEQUENCE SEQ_match_formation_no;
DROP SEQUENCE SEQ_match_player_no;

/* Drop Tables */

DROP TABLE match_goal;
DROP TABLE match_player;
DROP TABLE match_formation;
DROP TABLE match;
DROP TABLE player;
DROP TABLE team;


/* Create Sequences */

CREATE SEQUENCE SEQ_match_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_match_goal_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_match_formation_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_match_player_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_contact_no INCREMENT BY 1 START WITH 20001;
/* Create Tables */

CREATE TABLE match
(
	match_no number,
	-- 홈팀구단명
	team_name varchar2(20) NOT NULL,
	-- 원정팀구단명
	away_team_name varchar2(20) NOT NULL,
	-- 홈팀점수
	home_teamscore number NOT NULL,
	-- 원정팀점수
	away_teamscore number NOT NULL,
	-- 경기일자
	matchdate date NOT NULL,
	PRIMARY KEY (match_no)
);

--CONTACT Page DB
create table CONTACT(
CONTACT_NO NUMBER,
CONTACT_NAME varchar2(20),
CONTACT_EMAIL varchar2(20),
CONTACT_PHONE varchar2(20),
CONTACT_MESSAGE varchar2(1000)
)




CREATE TABLE match_formation
(
	-- 포메이션일련번호
	matchformation_no number,
	match_no number NOT NULL,
	-- 홈원정구분
	homeaway varchar2(10) NOT NULL,
	-- 포메이션
	-- ex) 4-3-3
	formation varchar2(10) NOT NULL,
	-- 선수0
	player0 number,
	player1 number,
	player2 number,
	player3 number,
	player4 number,
	player5 number,
	player6 number,
	player7 number,
	player8 number,
	player9 number,
	-- 골키퍼
	goalkeeper number,
	PRIMARY KEY (matchformation_no)
);


CREATE TABLE match_goal
(
	-- 선수개별득점기록
	matchgoal_no number,
	match_no number NOT NULL,
	-- 웹페이지 접속용 아이디
	player_id varchar2(20) NOT NULL,
	-- 득점시간
	goaltime date,
	-- 어시스트
	assistedby varchar2(20),
	PRIMARY KEY (matchgoal_no)
);


CREATE TABLE match_player
(
	-- 선수개별경기일련번호
	match_player_no number,
	-- 웹페이지 접속용 아이디
	player_id varchar2(20) NOT NULL,
	match_no number NOT NULL,
	-- 경기시간
	minutes_played number DEFAULT 0,
	-- 득점
	goal number DEFAULT 0,
	-- 실점(골키퍼 전용)
	conceded_goal number DEFAULT 0,
	assists number DEFAULT 0,
	-- 옐로우카드
	yellowcard number DEFAULT 0,
	-- 레드카드
	redcard number DEFAULT 0,
	PRIMARY KEY (match_player_no)
);


-- 선수 정보
CREATE TABLE player
(
	-- 웹페이지 접속용 아이디
	player_id varchar2(20),
	-- 구단명
	team_name varchar2(20),
	-- 웹페이지 접속용 비밀번호
	password varchar2(20) NOT NULL,
	-- 선수 식별 email
	email varchar2(20) NOT NULL UNIQUE,
	-- 선수명
	name varchar2(20) NOT NULL,
	-- 포지션
	position varchar2(20) NOT NULL,
	-- 서브포지션
	subposition varchar2(20) NOT NULL,
	-- 신장
	height number(5,2) NOT NULL,
	-- 체중
	weight number(5,2) NOT NULL,
	-- 나이
	birth date NOT NULL,
	player_comment varchar2(1000) NOT NULL,
	-- 주로 사용하는 발
	mainfoot varchar2(10) NOT NULL,
	-- 탈퇴여부 1 : 활성화, 0 : 비활성화(탈퇴)
	withdrawal_flag char(1) DEFAULT '1' NOT NULL,
	-- 구단에서의 권한, 0: 일반, 1: 감독, 2: 코치
	authority char(1) DEFAULT '0' NOT NULL,
	CONSTRAINT player_playerid_pk PRIMARY KEY (player_id)
);


-- 구단 정보
CREATE TABLE team
(
	-- 구단명
	team_name varchar2(20),
	-- 승리 횟수
	victory number DEFAULT 0,
	-- 패배 횟수
	defeat number DEFAULT 0,
	-- 무승부 횟수
	draw number DEFAULT 0,
	-- 래더점수
	rating number DEFAULT 1000,
	-- 구단 창단일
	established date DEFAULT sysdate,
	-- 구단 인원수
	headcount number DEFAULT 1,
	-- 구단 소개문
	team_comment varchar2(3000),
	-- 소속 지역
	region varchar2(20) NOT NULL,
	-- 삭제여부 1 : 활성화, 0 : 비활성화(삭제)
	deleted_flag char(1) DEFAULT '1',
	-- 구단 승인 여부 0:대기 1:승인
	accpet_flag char(1) DEFAULT '0',
	-- 매칭 신청 여부 0: 신청 안했음, 1: 신청했음
	match_flag char(1) DEFAULT '0',
	-- 경기장 주소 null 일시 경기장 보유x
	match_address varchar2(200),
	-- 경기요일
	match_day varchar2(20),
	CONSTRAINT team_teamid_pk PRIMARY KEY (team_name)
);



/* Comments */

COMMENT ON COLUMN match.team_name IS '홈팀구단명';
COMMENT ON COLUMN match.away_team_name IS '원정팀일련번호';
COMMENT ON COLUMN match.home_teamscore IS '홈팀점수';
COMMENT ON COLUMN match.away_teamscore IS '원정팀점수';
COMMENT ON COLUMN match.matchdate IS '경기일자';
COMMENT ON COLUMN match_formation.matchformation_no IS '포메이션일련번호';
COMMENT ON COLUMN match_formation.homeaway IS '홈원정구분';
COMMENT ON COLUMN match_formation.formation IS '포메이션
ex) 4-3-3';
COMMENT ON COLUMN match_formation.player0 IS '선수0';
COMMENT ON COLUMN match_formation.goalkeeper IS '골키퍼';
COMMENT ON COLUMN match_goal.matchgoal_no IS '선수개별득점기록';
COMMENT ON COLUMN match_goal.player_id IS '웹페이지 접속용 아이디';
COMMENT ON COLUMN match_goal.goaltime IS '득점시간';
COMMENT ON COLUMN match_goal.assistedby IS '어시스트';
COMMENT ON COLUMN match_player.match_player_no IS '선수개별경기일련번호';
COMMENT ON COLUMN match_player.player_id IS '웹페이지 접속용 아이디';
COMMENT ON COLUMN match_player.minutes_played IS '경기시간';
COMMENT ON COLUMN match_player.goal IS '득점';
COMMENT ON COLUMN match_player.conceded_goal IS '실점(골키퍼 전용)';
COMMENT ON COLUMN match_player.yellowcard IS '옐로우카드';
COMMENT ON COLUMN match_player.redcard IS '레드카드';
COMMENT ON TABLE player IS '선수 정보';
COMMENT ON COLUMN player.player_id IS '웹페이지 접속용 아이디';
COMMENT ON COLUMN player.team_name IS '구단명';
COMMENT ON COLUMN player.password IS '웹페이지 접속용 비밀번호';
COMMENT ON COLUMN player.email IS '선수 식별 email';
COMMENT ON COLUMN player.name IS '선수명';
COMMENT ON COLUMN player.position IS '포지션';
COMMENT ON COLUMN player.subposition IS '서브포지션';
COMMENT ON COLUMN player.height IS '신장';
COMMENT ON COLUMN player.weight IS '체중';
COMMENT ON COLUMN player.age IS '나이';
COMMENT ON COLUMN player.mainfoot IS '주로 사용하는 발';
COMMENT ON COLUMN player.withdrawal_flag IS '탈퇴여부 1 : 활성화, 0 : 비활성화(탈퇴)';
COMMENT ON COLUMN player.authority IS '구단에서의 권한, 0: 일반, 1: 감독, 2: 코치';
COMMENT ON TABLE team IS '구단 정보';
COMMENT ON COLUMN team.team_name IS '구단명';
COMMENT ON COLUMN team.victory IS '승리 횟수';
COMMENT ON COLUMN team.defeat IS '패배 횟수';
COMMENT ON COLUMN team.draw IS '무승부 횟수';
COMMENT ON COLUMN team.rating IS '래더점수';
COMMENT ON COLUMN team.established IS '구단 창단일';
COMMENT ON COLUMN team.headcount IS '구단 인원수';
COMMENT ON COLUMN team.team_comment IS '구단 소개문';
COMMENT ON COLUMN team.region IS '소속 지역';
COMMENT ON COLUMN team.deleted_flag IS '삭제여부 1 : 활성화, 0 : 비활성화(삭제)';


/* 구단 창단(Insert) Procedure
 * Team Table add & Player Table modify(team_name & authority)
 * */
create or replace PROCEDURE
sp_insert_team
(
    v_team_name IN team.team_name%TYPE,
    v_team_comment IN team.team_comment%TYPE,
    v_team_region IN team.region%TYPE,
    v_player_id IN player.player_id%TYPE
)
is
begin
  	insert into TEAM(
		TEAM_NAME,
		VICTORY,
		DEFEAT,
		DRAW,
		RATING,
		ESTABLISHED,
		HEADCOUNT,
		TEAM_COMMENT,
		REGION,
		DELETED_FLAG,
		ACCPET_FLAG)
	values(
		v_team_name,
		default,
		default,
		default,
		1000,
		sysdate,
		default,
		v_team_comment,
		v_team_region,
		default,
		0);
        
    update player set authority=3, 
	team_name=v_team_name 
    where player_id=v_player_id;
end;
/