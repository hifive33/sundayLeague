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
	<%@include file="../menu/headerArea.jsp"%>
    <!-- Header Area End -->
    
    <!-- Breadcromb Area Start -->
    <%@include file="../menu/breadcrombArea.jsp"%>
    <!-- Breadcromb Area End -->
    
    <!-- Team Details Page Start -->
    <section class="kick-fixture-page-next-match section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="fixture-page-next-match-left">
                        <div class="single-upcoming-match">
                            <div id="wdl">
                            	<p><span>${team.victory}</span>win</p>
                            	<p><span>${team.draw}</span>draw</p>
                            	<p><span>${team.defeat}</span>lose</p>
                            </div>
                            <h2>Team Record</h2>
                            <div class="upcoming-match-box">
                                <div class="upcoming-teams-head">
                                    <div class="row">
                                        <div class="col-sm-5">
                                        </div>
                                        <div class="col-sm-2">
                                            <div class="team-head-image">
												 <!-- <img src="resources/img/emblem-null.png" alt="team image" /> -->
												<img src="/emblemimg/${team.team_name}" alt="team image" />
                                            </div>
                                        </div>
                                        <div class="col-sm-5">
                                        </div>
                                    </div>
                                </div>
								<h4>${team.team_name}</h4>
                                <p>${team.team_comment}</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
	                    <div class="order-tickets">
	                    	<div class="coupon-cart-right">
	                    		<!-- 등록 취소 변경 -->
	                    		<!-- 
	                    		<c:if test="${sessionScope.team_name == team.team_name && sessionScope.authority == 0}">
	                    			<a href="jointeamcancel?team_name=${team.team_name}" class="kick-btn">신청 취소</a>
	                    		</c:if>
	                    		<c:if test="${sessionScope.loginId != null && sessionScope.team_name == null}">
	                    			<a href="jointeam?team_name=${team.team_name}" class="kick-btn">가입 신청</a>
	                    		</c:if>
	                    		 -->
	                    	</div>
	                    </div>
                    </div>
                </div>
                <!-- 팀원 목록 -->
                <div class="col-md-4">
                    <div class="fixture-page-next-match-right">
                        <table class="table table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Position</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="board" items="${list}">
                            	<c:if test="${board.authority > 0}">
	                                <tr>
	                                    <td><a href="adminManagePlayerDetail?player_id=${board.player_id }">${board.name}</a></td>
	                                    <td>${board.position}</td>
	                                </tr>
                                </c:if>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Team Details Page End -->
    
    <!-- Footer Area Start -->
    <%@include file="../menu/footerArea.jsp"%>
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
			$(".breadcromb-box > h2").html("Team Details")
			$(".breadcromb-box ul li:last-child").html("Team Details")
			$(".kick-header-area a[href=teams]").parent().attr('class', 'current-page-item')
		})
	</script>
</body>
</html>