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
<style>
.resultList th{
text-align: center;
}
</style>
</head>
<body>
    
    <!-- Header Area Start -->
	<%@include file="menu/headerArea.jsp"%>
    <!-- Header Area End -->
    
    <!-- Breadcromb Area Start -->
    <%@include file="menu/breadcrombArea.jsp"%>
    <!-- Breadcromb Area End -->
    
    <!-- Fixture Page Next Match Start -->
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
	                                <h4>場所</h4>
	                                <p>日付</p>
	                                <div class="upcoming-teams-head">
	                                    <div class="row">
	                                        <div class="col-sm-5">
	                                            <div class="team-head-image">
                                                    <img src="resources/img/emblem-question.png" alt="team image" />
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-2">
	                                            <div class="team-head-vs">
	                                                <span>VS</span>
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-5">
	                                            <div class="team-head-image">
                                                    <img src="resources/img/emblem-question.png" alt="team image" />
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <h4>Sunday League</h4>
	                            </div>
                            </c:if>
                            <c:if test="${flag == '1'}">
	                            <div class="upcoming-match-box">
	                                <h4>場所</h4>
	                                <p>日付</p>
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
                                                   	<img src="resources/img/emblem-question.png" alt="away team image" />
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <h4>Sunday League</h4>
	                            </div>
                            </c:if>
                            <c:if test="${flag > '1'}">
	                            <div class="upcoming-match-box">
	                                <h4>${match_address}</h4>
	                                <p>${matchdate}</p>
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
        </div>
    </section>
    <!-- Fixture Page Next Match End -->
    
    
    <!-- Last Match Result Area Start -->
    <section class="kick-last-match-result section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="kick-section-heading">
                        <h2>last match <span>result</span></h2>
                        <div class="title-line-one"></div>
                        <div class="title-line-two"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="last-match-box">
                    <div class="col-md-5">
                        <div class="last-match-result-one last-match-result">
                            <div class="col-md-12">
                                <h3 class="result">win</h3>
                                <div class="result-details">
                                    <h3 class="result-details-left">
                                        <a href="#">${left }</a>
                                    </h3>
                                    <ul>
                                    <c:forEach var="list" items="${l_player }">
                           
                                        <li>${list.player_id}<span>(${2020-list.birth})</span></li>
                                        </c:forEach>
                                    </ul>
                                    <div class="last-match-logo">
                                        <a href="#"><img src="/emblemimg/${left}" alt="logo" /></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="last-match-score">
                            <h2>${l_score} <span class="devider">/</span> <span class="lose-point">${r_score}</span> </h2>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="last-match-result-two last-match-result">
                            <div class="col-md-12">
                                <h3 class="result">lose</h3>
                                <div class="result-details">
                                    <div class="last-match-logo-right">
                                        <a href="#"><img src="/emblemimg/${right }" alt="logo" /></a>
                                    </div>
                                    <h3 class="result-details-right">
                                        <a href="#">
                                           ${right }
                                        </a>
                                    </h3>
                                    <ul>
                                    <c:forEach var="list2" items="${r_player }">
                                        <li>${list2.player_id}<span>(${2020-list2.birth})</span></li>
                                        </c:forEach>
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="view-all-result">
                    <a id="resultlist"class="kick-btn">view all result</a>
                </div>
            </div>
            
            	<div class="resultListWrap" style="position: absolute; top: 0; padding: 50px; left: 0; display:none; width: 100%; height: 100%; background: #000000cc">
            		<div class="resultList" style="display: block; margin: 0 auto; width: 400px; text-align:center; height: 100%; background: #ffffffaa; vertical-align: middle">
 					<table style="width: 100%">
 					<thead>
 					<tr style="background: #00000077;text-align: center;">
 					<th>Home</th><th>Away</th><th colspan="2">Score</th><th>Location</th>
 					
 					</tr>
 					</thead>
 					<tbody id="resultList">
 
 					</tbody>
 					</table>     		
            		</div>
    		</div>
        </div>
    </section>
    <!-- Last Match Result Area End -->
    
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
			$(".breadcromb-box > h2").html("Fixture")
			$(".breadcromb-box ul li:last-child").html("Fixture")
			$(".kick-header-area a[href=fixture]").parent().attr('class', 'current-page-item')
			var dday = '${dday}' 
			$('#coming-soon').countdown(dday, function (event) {
	            var $this = $(this).html(event.strftime('' + '<p><span>%D</span>days</p>  ' + '<p><span>%H</span>Hours</p>  ' + '<p><span>%M</span>Minutes</p>  ' + '<p><span>%S</span>Seconds</p> '));
	        });
			$("#resultlist").on('click',function(){
				$(".resultListWrap").css('display','block');
			})
			$(".resultList").on('click',function(){
				$(".resultListWrap").css('display','none');
			})
			
			
			
			$("#resultlist").on('click',function(){
				var result = 'id="resultList"';
				$.ajax({
					url:"fixturelist",
					type:"POST",
					success:function(res){
						$.each(res,function(index,item){
							result += '<tr><td>'+item.team_name+'</td><td>'+item.away_team_name+'</td><td>'+item.away_teamscore+'</td><td>'+item.home_teamscore+'</td><td>'+item.match_address+'</td></tr>'
						})
						$("#resultList").html(result);
					}
				})
			})
		})
	</script>
</body>
</html>
