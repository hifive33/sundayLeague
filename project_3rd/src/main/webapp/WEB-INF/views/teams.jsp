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
    
    <!-- Gallery Masonary Page Start -->
    <section class="kick-gallery-masonary section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="big-isotope-project">
                        <div class="projectFilter project-btn-const">
                            <a href="#" data-filter="*" class="current">전체</a>
                            <a href="#" data-filter=".construction">서울</a>
                            <a href="#" data-filter=".renovation">경기</a>
                            <a href="#" data-filter=".plumbing">강원</a>
                            <a href="#" data-filter=".flooring">충청</a>
                            <a href="#" data-filter=".flooring">전라</a>
                            <a href="#" data-filter=".flooring">경상</a>
                            <a href="#" data-filter=".flooring">제주</a>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="order-tickets">
			                        <table class="table table-striped table-responsive">
			                            <thead>
			                                <tr>
			                                    <th>순위</th>
			                                    <th>팀명</th>
			                                    <th>점수</th>
			                                    <th colspan="2">팀 정보</th>
			                                </tr>
			                            </thead>
			                            <tbody>
			                            	<!-- team list item start -->
			                            	<c:forEach var="team" items="teams" varStatus="stat">
				                                <tr class="team-rank-item">
				                                    <td class="element-team-rank">${stat.count }</td>
				                                    <td class="element-team-name">
				                                    	<img src="resources/img/emblem-null.png" alt="team image" />
				                                        <h3>${team.team_name }</h3>
				                                    </td>
				                                    <td class="element-team-rating">
				                                        <p>${team.rating }</p>
				                                    </td>
				                                    <td class="element-team-information">
				                                    	<p>지역:${team.region }</p>
				                                    	<p>연령대:</p>
				                                    	<p>실력:</p>
				                                    </td>
				                                    <td class="element-team-information">
				                                    	<p>소속유형:</p>
				                                    	<p>팀원 수:${team.headcount }</p>
				                                    	<p>경기유형:</p>
				                                    </td>
				                                </tr>
											</c:forEach>
			                                <!-- team list item end -->
			                            </tbody>
			                        </table>
			                    </div>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="pagination-box">
                        <ul class="pagination">
                            <li><a href="#"><i class="fa fa-angle-double-left"></i></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li class="active"><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Gallery Masonary Page Start -->
    
    
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
			$(".breadcromb-box > h2").html("Teams")
			$(".breadcromb-box ul li:last-child").html("Teams")
		})
	</script>
</body>
</html>
