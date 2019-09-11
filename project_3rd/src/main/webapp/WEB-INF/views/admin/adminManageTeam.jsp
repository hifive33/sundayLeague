<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<%@include file="../menu/adminheaderArea.jsp"%>
    <!-- Header Area End -->
    
    <!-- Breadcromb Area Start -->
    <%@include file="../menu/adminbreadcrombArea.jsp"%>
    <!-- Breadcromb Area End -->
    
    <!-- Gallery Masonary Page Start -->
    <section class="kick-gallery-masonary section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="big-isotope-project">
                                <div class="order-tickets">
			                        <table class="table table-striped table-responsive">
			                            <thead>
			                                <tr>
												<th>team_name</th>
												<th>victory</th>
												<th>defeat</th>
												<th>draw</th>
												<th>rating</th>
												<th>established</th>
												<th>headcount</th>
												<th>team_comment</th>
												<th>region</th>
												<th>deleted_flag</th>
												<th>accpet_flag</th>
			                                </tr>
			                            </thead>
			                            <tbody>
			                            	<c:forEach var="board" items="${list }">
												<tr>
													<td>${board.team_name }</td>
													<td>${board.victory }</td>
													<td>${board.defeat }</td>
													<td>${board.draw }</td>
													<td>${board.rating }</td>
													<td>${board.established }</td>
													<td>${board.headcount }</td>
													<td>${board.team_comment }</td>
													<td>${board.region }</td>
													<td>${board.deleted_flag }</td>
													<td>${board.accpet_flag }</td>
												</tr>
											</c:forEach>
			                            </tbody>
			                        </table>
			                    </div>
                    </div> 
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="pagination-box">
                        <ul class="pagination admin-pagination">
                            <li><a href="#" style="border:1px solid #1759c6  !important"><i class="fa fa-angle-double-left"></i></a></li>
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
			$(".admin-breadcromb-box > h2").html("Manage Team")
			$(".admin-breadcromb-box ul li:last-child").html("Manage Team")
			$("a[href=adminManageTeam]").parent().attr('class', 'admin-current-page-item')
		})
	</script>
</body>
</html>
