<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Title -->
    <title>Sunday League</title>
    
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="144x144" href="resources/favicons/apple-touch-icon.png">
    
    <link rel="icon" type="image/png" sizes="32x32" href="resources/favicons/favicon-32x32.png">
    
    <link rel="icon" type="image/png" sizes="16x16" href="resources/favicons/favicon-16x16.png">
    
    <link rel="manifest" href="resources/favicons/manifest.json">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    
    <!-- Font awesome CSS -->
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">
    
    <!-- Animate CSS -->
    <link rel="stylesheet" href="resources/css/animate.min.css">
    
    <!-- OwlCarousel CSS -->
    <link rel="stylesheet" href="resources/css/owl.carousel.css">
    
    <!-- SlickNav CSS -->
    <link rel="stylesheet" href="resources/css/slicknav.min.css">
    
    <!-- Magnific popup CSS -->
    <link rel="stylesheet" href="resources/css/magnific-popup.css">
    
    <!-- Scroll CSS -->
    <link rel="stylesheet" href="resources/css/perfect-scrollbar.min.css">
    
    <!-- Main CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="resources/css/responsive.css">

</head>
<body>

    <!-- Header Area Start -->
	<%@include file="menu/headerArea.jsp"%>
    <!-- Header Area End -->
    
    <!-- Breadcromb Area Start -->
    <%@include file="menu/breadcrombArea.jsp"%>
    <!-- Breadcromb Area End -->
    
    <!-- Match Area Start -->
    <section class="kick-tickets-list-area section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="fixture-page-next-match-left">
                        <div class="single-upcoming-match">
                            <div id="coming-soon"></div>
                            <h2>next match started in</h2>
                            <c:if test="${flag == '0'}">
	                            <div class="upcoming-match-box">
	                                <h4>위치</h4>
	                                <p>날짜</p>
	                                <div class="upcoming-teams-head">
	                                    <div class="row">
	                                        <div class="col-sm-5">
	                                            <div class="team-head-image">
	                                                <a href="#">
	                                                    <img src="resources/img/team-2.png" alt="team image" />
	                                                </a>
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-2">
	                                            <div class="team-head-vs">
	                                                <span>VS</span>
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-5">
	                                            <div class="team-head-image">
	                                                <a href="#">
	                                                    <img src="resources/img/team-3.png" alt="team image" />
	                                                </a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <h4>Sunday League</h4>
	                            </div>
                            </c:if>
                            <c:if test="${flag == '1'}">
	                            <div class="upcoming-match-box">
	                                <h4>위치</h4>
	                                <p>날짜</p>
	                                <div class="upcoming-teams-head">
	                                    <div class="row">
	                                        <div class="col-sm-5">
	                                            <div class="team-head-image">
	                                                <a href="myteam">
	                                                    <img src="emblemimg/${team_name}" alt="my team image" />
	                                                </a>
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-2">
	                                            <div class="team-head-vs">
	                                                <span>VS</span>
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-5">
	                                            <div class="team-head-image">
                                                	<a>
                                                    	<img src="resources/img/emblem-null.png" alt="away team image" />
													</a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <h4>Sunday League</h4>
	                            </div>
                            </c:if>
                            <c:if test="${flag > '1'}">
	                            <div class="upcoming-match-box">
	                                <h4>위치</h4>
	                                <p>날짜</p>
	                                <div class="upcoming-teams-head">
	                                    <div class="row">
	                                        <div class="col-sm-5">
	                                            <div class="team-head-image">
	                                                <a href="myteam">
	                                                    <img src="emblemimg/${team_name}" alt="my team image" />
	                                                </a>
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-2">
	                                            <div class="team-head-vs">
	                                                <span>VS</span>
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-5">
	                                            <div class="team-head-image">
	                                                <a href="teamdetails?team_name=${away_team_name}">
	                                                    <img src="emblemimg/${away_team_name}" alt="away team image" />
	                                                </a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <h4>Sunday League</h4>
	                            </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="match-find">
                    	<div class="match-form-group">
                    		<c:if test="${authority > 1}">
                    			<c:if test="${flag == '0'}">
	                    			<form action="matchfind">
	                    				<input type="checkbox" id="addressboolean" />
	                    				<input type="text" name="match_address" placeholder="Address" disabled="disabled" /><br />
	                    				<input type="radio" name="match_day" value="sat" checked="checked" />SATERDAY<input type="radio" name="matchday" value="sun"/>SUNDAY<br />
	                    				<button>MATCHING</button>
	                    			</form>
                    			</c:if>
                    			<c:if test="${flag == '1'}">
									<button type="button" id="matchfind">신청취소</button>
                    			</c:if>
                    			<c:if test="${flag > '1' && authority > 1}">
									<button type="button" id="scorewrite">점수입력</button>
                    			</c:if>
                    		</c:if>
                    	</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Match Area End -->
    
    
    <!-- Footer Area Start -->
    <%@include file="menu/footerArea.jsp"%>
    <!-- Footer Area End -->


    <!-- jQuery -->
    <script src="resources/js/jquery.min.js"></script>
    
    <!-- Bootstrap JS -->
    <script src="resources/js/bootstrap.min.js"></script>
    
    <!-- Magnific Popup JS -->
    <script src="resources/js/jquery.magnific-popup.min.js"></script>
    
    <!-- OwlCarousel JS -->
    <script src="resources/js/owl.carousel.min.js"></script>
    
    <!-- SlickNav JS -->
    <script src="resources/js/jquery.slicknav.min.js"></script>
    
    <!-- Scrollbar JS -->
    <script src="resources/js/jquery-perfect-scrollbar.min.js"></script>
    
    <!-- Countdown JS -->
    <script src="resources/js/jquery.countdown.min.js"></script>
    
    <!-- Waypoints JS -->
    <script src="resources/js/jquery.waypoints.min.js"></script>
    
    <!-- Progressbar JS -->
    <script src="resources/js/progressbar.min.js"></script>
    
    <!-- Isotop JS -->
    <script src="resources/js/isotope.pkgd.min.js"></script>
    
    <script src="resources/js/custom-isotop.js"></script>
    
    <!-- Custom JS -->
    <script src="resources/js/custom.js"></script>
    
    <!-- script -->
	<script>
		$(function(){
			$(".breadcromb-box > h2").html("Match")
			$(".breadcromb-box ul li:last-child").html("Match")
			
			var dday = '${dday}' // 경기시간
			
			$('#coming-soon').countdown(dday, function (event) {
	            var $this = $(this).html(event.strftime('' + '<p><span>%D</span>days</p>  ' + '<p><span>%H</span>Hours</p>  ' + '<p><span>%M</span>Minutes</p>  ' + '<p><span>%S</span>Seconds</p> '));
	        });
			
			$("#matchfind").on('click', function(){
				location.href = "matchfind"
				return false;
			})
			
			$("#scorewrite").on('click', function(){
				location.href = "scorewrite"
				return false;
			})
			
			$("#addressboolean").on('click', function(){
				if ($("#addressboolean").is(":checked"))
					$(this).next().removeAttr('disabled')
				else
					$(this).next().attr('disabled', 'disabled')
			})
		})
		
	</script>
	
</body>
</html>
