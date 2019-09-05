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
    
    <!-- Map Canvas Start -->
    <div id="map-canvas" class="map-canvas"></div>
    <!-- Map Canvas End -->
    
    
    <!-- Contact Form Area Start -->
    <section class="kick-contact-form-area section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="contact-form">
                        <div class="contact-heading">
                            <h3>get in touch</h3>
                            <p>Our experts will reply you very soon</p>
                        </div>
                        <form>
                            <div class="row">
                                <div class="col-md-4">
                                    <p>
                                        <input type="text" name="name" placeholder="Your Name" >
                                    </p>
                                </div>
                                <div class="col-md-4">
                                    <p>
                                        <input type="email" name="email" placeholder="Your Email" >
                                    </p>
                                </div>
                                <div class="col-md-4">
                                    <p>
                                        <input type="tel" name="phone" placeholder="Your Phone Number" >
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p>
                                        <textarea name="Message" placeholder="Write Your Message" ></textarea>
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="contact-form-button">
                                        <button type="submit" name="submit" >Send message</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Form Area End -->
    
    
    <!-- Contact Page Area Start -->
    <section class="kick-contact-page-area section_t_100 section_b_70">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-contact-address">
                        <h3>Manchester, UK</h3>
                        <ul>
                            <li>
                                <i class="fa fa-map-marker"></i>
                                <p>123 Eccles Old Road, New Salford Road London, Uk, M6 7AF</p>
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>
                                <p>+44 123 456 788 - 9</p>
                            </li>
                            <li>
                                <i class="fa fa-envelope-o"></i>
                                <p>info@domain.com</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-contact-address">
                        <h3>Bolton, UK</h3>
                        <ul>
                            <li>
                                <i class="fa fa-map-marker"></i>
                                <p>123 Eccles Old Road, New Salford Road London, Uk, M6 7AF</p>
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>
                                <p>+44 123 456 788 - 9</p>
                            </li>
                            <li>
                                <i class="fa fa-envelope-o"></i>
                                <p>info@domain.com</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-contact-address">
                        <h3>Warrington, UK</h3>
                        <ul>
                            <li>
                                <i class="fa fa-map-marker"></i>
                                <p>123 Eccles Old Road, New Salford Road London, Uk, M6 7AF</p>
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>
                                <p>+44 123 456 788 - 9</p>
                            </li>
                            <li>
                                <i class="fa fa-envelope-o"></i>
                                <p>info@domain.com</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Page Area End -->
    
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
    
    <!-- Map -->
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    
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
			$(".breadcromb-box > h2").html("Contact")
			$(".breadcromb-box ul li:last-child").html("Contact")
		})
	</script>
</body>
</html>
