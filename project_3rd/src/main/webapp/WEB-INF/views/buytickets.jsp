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
    
    <!-- Tickets List Area Start -->
    <section class="kick-tickets-list-area section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="fixture-page-next-match-left">
                        <div class="single-upcoming-match">
                            <div id="coming-soon"></div>
                            <h2>next match started in</h2>
                            <div class="upcoming-match-box">
                                <h4>Laliga Semi Finals at city stadium</h4>
                                <p>Friday, 10th Sep, 2016, 16:00GMT</p>
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
                                <h4>Quarter final</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="order-tickets">
                        <table class="table table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>tickets</th>
                                    <th>Price</th>
                                    <th>person</th>
                                    <th>action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="shop-cart-item">
                                    <td><i class="fa fa-ticket"></i></td>
                                    <td class="kick-cart-preview">
                                        <h3>Standard Ticket</h3>
                                        <p>This ticket is for unlimited persons.</p>
                                    </td>
                                    <td class="kick-cart-price">
                                        <p>$180</p>
                                    </td>
                                    <td class="kick-cart-quantity">
                                        <input type="number" value="0" >
                                    </td>
                                    <td>
                                        <a href="#" class="kick-btn">Buy now</a>
                                    </td>
                                </tr>
                                <tr class="shop-cart-item">
                                    <td><i class="fa fa-ticket"></i></td>
                                    <td class="kick-cart-preview">
                                        <h3>Family Ticket</h3>
                                        <p>This ticket is only for family Maxium 4 person Are Allowed.</p>
                                    </td>
                                    <td class="kick-cart-price">
                                        <p>$280</p>
                                    </td>
                                    <td class="kick-cart-quantity">
                                        <input type="number" value="0" max="4" >
                                    </td>
                                    <td>
                                        <a href="#" class="kick-btn">Buy now</a>
                                    </td>
                                </tr>
                                <tr class="shop-cart-item">
                                    <td><i class="fa fa-ticket"></i></td>
                                    <td class="kick-cart-preview">
                                        <h3>Vip Ticket</h3>
                                        <p>This ticket is only for a single person .</p>
                                    </td>
                                    <td class="kick-cart-price">
                                        <p>$350</p>
                                    </td>
                                    <td class="kick-cart-quantity">
                                        <input type="number" value="0" max="1" >
                                    </td>
                                    <td>
                                        <a href="#" class="kick-btn">Buy now</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Tickets List Area End -->
    
    
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
			$(".breadcromb-box > h2").html("Tickets Details")
			$(".breadcromb-box ul li:last-child").html("Tickets Details")
		})
	</script>
</body>
</html>
