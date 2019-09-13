<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
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
    
    <!-- Player Page Section Start -->
    <section class="kick-player-page section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4">
                    <div class="player-details-left">
                        <div class="single-top-player details">
                            <img src="resources/img/player-4.jpg" alt="top player" />
                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-sm-8">
                    <div class="player-details-right">
                        <h2>${player.player_id }</h2>
                        <hr>
                        <div class="player-desc">
                            <p>${player.player_comment }</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Player Page Section Start -->
    
    
    <!-- Player Profile Info Start -->
    <section class="kick-player-profile-info section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="kick-section-heading">
                        <h2>Profile <Span>information</Span></h2>
                        <div class="title-line-one"></div>
                        <div class="title-line-two"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="player-profile-left">
                        <table class="table table-striped table-responsive">
                            <tbody>
                                <tr>
                                    <td>Team Name</td>
                                    <c:if test="${player.team_name == null }">
                                    <td>무소속</td>
                                    </c:if>
                                    <c:if test="${player.team_name != null }">
                                    <td>${player.team_name }</td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>Birth Date</td>
                                    <td>${player.birth }</td>
                                </tr>
                                <tr>
                                    <td>Position</td>
                                    <td>${player.position}</td>
                                </tr>
                                <tr>
                                    <td>Subposition</td>
                                    <td>${player.subposition}</td>
                                </tr>
                                <tr>
                                    <td>Height</td>
                                    <td>${player.height }</td>
                                </tr>
                                <tr>
                                    <td>Weight</td>
                                    <td>${player.weight }</td>
                                </tr>
                                <tr>
                                    <td>Mainfoot</td>
                                    <td>${player.mainfoot}</td>
                                </tr>
                                <tr>
                                    <td>Authority</td>
                                    <td>${player.authority == 3 ? '감독' : 
                                    	  player.authority == 2 ? '코치' : 
                                    	  player.authority == 1 ? '일반' : '승인 대기' }</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="player-profile-right">
                        <ul class="progress-list">
                            <li>
                                <p>Attendance</p>
                                <div class="bar" data-value="92"></div>
                            </li>
                            <li>
                                <p>Winning Rate</p>
                                <div class="bar" data-value="85"></div>
                            </li>
<!--                             <li>
                                <p>timing Accuracy</p>
                                <div class="bar" data-value="90"></div>
                            </li>
                            <li>
                                <p>total Accuracy</p>
                                <div class="bar" data-value="95"></div>
                            </li> -->
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
				<div class="player-profile-update clearfix">
					<div class="col-md-12 col-sm-6">
						<div class="coupon-cart-right">
							<a href="updateprofile">Edit Profile</a>
						</div>
					</div>
				</div>
			</div>
        </div>

    </section>
    <!-- Player Profile Info End -->
    
    
    <!-- Player Page Gallery Start -->
    <!-- <section class="kick-player-page-gallery section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="kick-section-heading">
                        <h2>Player <span>Gallery</span></h2>
                        <div class="title-line-one"></div>
                        <div class="title-line-two"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <a href="resources/img/player-gallery-5.jpg" class="gallery-lightbox">
                        <div class="project-img player-gallery-single">
                            <img src="resources/img/player-gallery-5.jpg" alt="single project" />
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="resources/img/player-gallery-4.jpg" class="gallery-lightbox">
                        <div class="project-img player-gallery-single">
                            <img src="resources/img/player-gallery-4.jpg" alt="single project" />
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="resources/img/player-gallery-6.jpg" class="gallery-lightbox">
                        <div class="project-img player-gallery-single">
                            <img src="resources/img/player-gallery-6.jpg" alt="single project" />
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="resources/img/player-gallery-3.jpg" class="gallery-lightbox">
                        <div class="project-img player-gallery-single">
                            <img src="resources/img/player-gallery-3.jpg" alt="single project" />
                        </div>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <a href="resources/img/player-gallery-6.jpg" class="gallery-lightbox">
                        <div class="project-img player-gallery-single">
                            <img src="resources/img/player-gallery-6.jpg" alt="single project" />
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="resources/img/player-gallery-5.jpg" class="gallery-lightbox">
                        <div class="project-img player-gallery-single">
                            <img src="resources/img/player-gallery-5.jpg" alt="single project" />
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="resources/img/player-gallery-2.jpg" class="gallery-lightbox">
                        <div class="project-img player-gallery-single">
                            <img src="resources/img/player-gallery-2.jpg" alt="single project" />
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="resources/img/player-gallery-1.jpg" class="gallery-lightbox">
                        <div class="project-img player-gallery-single">
                            <img src="resources/img/player-gallery-1.jpg" alt="single project" />
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section> -->
    <!-- Player Page Gallery End -->
    
    
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
			$(".breadcromb-box > h2").html("My Account")
			$(".breadcromb-box > ul > li:last-child").html("My Account")
		})
	</script>
</body>
</html>
