package com.sundayleague.main.util;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.stream.Collectors;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sundayleague.main.dao.CalendarRepository;
import com.sundayleague.main.dao.MatchRepository;
import com.sundayleague.main.dao.TeamRepository;
import com.sundayleague.main.dto.MatchDTO;
import com.sundayleague.main.dto.TeamMatchingDTO;

//Servlet DaemonThread Example
@Service
public class MatchTimeThread implements Runnable { // (1)
	
	private TeamMatching teamMatching = new TeamMatching();
	private List<TeamMatchingDTO> list = new ArrayList<>();
	private Map<String, String> result = new HashMap<>();
	private Map<List<String>, List<TeamMatchingDTO>> groupedByRegionDay = null;
	
	@Autowired
	TeamRepository teamRepo;
	
	@Autowired
	MatchRepository matchRepo;
	
	@Autowired
	CalendarRepository calendarRepo;
	
    /** 작업을 수행할 thread */
    private Thread thread;
   
    /** 작업을 수행한다 */
    public void startDaemon() {
    	System.out.println("start DaemonThread!");
        if (thread == null) { // (3)
            thread = new Thread(this, "Daemon thread for background task");
            thread.setDaemon(true);
        }
       
        if (!thread.isAlive()) { // (4)
            thread.start();
        }
    }

    /** 스레드가 실제로 작업하는 부분 */
    public void run() {
        Thread currentThread = Thread.currentThread(); // (5)
       
        while (currentThread == thread) { // (5)
            try {
            	// 매주 수요일 자정에 실행
                Thread.sleep(timeUntil()); // (6)
//                Thread.sleep(1000*2); // (6)
            } catch (InterruptedException e) {
            	e.printStackTrace();
            }

            // 실제 작업이 여기에 들어간다.
            if (currentThread == thread) { // (8)
            	// 매칭서비스
            	this.list = teamRepo.selectMatchTeamList();
            	
            	// list 지역별, 날짜별로 grouping
            	this.groupedByRegionDay = this.list
            			.stream()
            			.collect(Collectors.groupingBy(x->{
                            return new ArrayList<String>(Arrays.asList(x.getRegion(), x.getMatch_day()));
                        }));
            	
            	// group별 matching
            	for (Map.Entry<List<String>, List<TeamMatchingDTO>> entry : groupedByRegionDay.entrySet()){
            		// 확인용 출력
//            		System.out.println(entry.getKey() + teamMatching.matching(entry.getValue()).toString());
            		result = teamMatching.matching(entry.getValue());
            		
            		// Map 키값 오름차순 정렬
            		TreeMap<String,String> tm = new TreeMap<String,String>(result);
            		Iterator<String> iteratorKey = tm.keySet().iterator();
            		int count = 0, max = tm.size()/2;
            		List<MatchDTO> matchList = new ArrayList<>();
            		while(iteratorKey.hasNext()) {
            			String key = iteratorKey.next();
            			if (count < max){
            				// away 팀 순서대로
            				matchList.add(new MatchDTO());
            				matchList.get(count).setAway_team_name(tm.get(key));
            			} else{
            				// home 팀 순서대로
            				matchList.get(count - max).setTeam_name(tm.get(key));
            				matchList.get(count - max).setMatchdate((entry.getKey().get(1).equals("sat")) ? this.getCurSaterday() : this.getCurSunday());
            				for (TeamMatchingDTO teamMatching : entry.getValue()){
            					if (teamMatching.getName().equals(tm.get(key))){
            						matchList.get(count - max).setMatch_address(teamMatching.getMatch_address());
            					}
            				}
            			}
            			count++;
            		}
            		// 확인용 출력
//            		System.out.println(matchList);
            		
            		
            		if (matchList.size() != 0) {
            			// db처리 match_flag -> 2  => 매칭완료
            			matchRepo.updateMatchFlag(matchList);
            			// matching log table에 추가
            			matchRepo.insertMatches(matchList);
            			// insert calendar
            			for (MatchDTO match : matchList){
            				String str = match.getTeam_name() + " VS " + match.getAway_team_name();
            				match.setMatch_no(str);
            			}
            			calendarRepo.insertMatchEvent(matchList);
            		}
            		
            	}
            	
            	// list, map 초기화
            	list.clear();
            	groupedByRegionDay.clear();
            }
        }
    }

	private long timeUntil(){
		long sleep = this.getCurWednesday() - new Date().getTime();
		return sleep;
	}
	
	//오는 수요일 자정
 	private long getCurWednesday(){
 		Calendar c = Calendar.getInstance();
 		if(c.get(Calendar.DAY_OF_WEEK) <= 4){
 			c.set(Calendar.DAY_OF_WEEK,Calendar.THURSDAY);
 		} else{
 			c.add(Calendar.DATE, 7);
 			c.set(Calendar.DAY_OF_WEEK,Calendar.THURSDAY);
 		}
 		return c.getTimeInMillis();
 	}

 	//오는 토요일
 	private String getCurSaterday(){
 		Calendar c = Calendar.getInstance();
 		SimpleDateFormat format = new SimpleDateFormat();
 		format.applyPattern("yyyy-MM-dd");
 		c.set(Calendar.DAY_OF_WEEK,Calendar.SATURDAY);
 		return format.format(c.getTime());
 	}

 	//오는 일요일
 	private String getCurSunday(){
 		Calendar c = Calendar.getInstance();
 		SimpleDateFormat format = new SimpleDateFormat();
 		format.applyPattern("yyyy-MM-dd");
 		c.add(Calendar.DATE, 7);
 		c.set(Calendar.DAY_OF_WEEK,Calendar.SUNDAY);
 		return format.format(c.getTime());
 	}

 	/** initMethod */
 	@PostConstruct
    public void init() {
//        sc = event.getServletContext(); // (2)
        startDaemon();
    }
 
    /** destroy */
 	@PreDestroy
    public void destroy() {
        thread = null; // (7)
    }
    
}