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
    
    <!-- Faqs Area Start -->
    <section class="kick-faqs-area section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="kick-faqs-left">
                        <div class="kick-faqs-left-box">
                            <div class="kick-single-faqs">
                                <i class="fa fa-question-circle"></i>
                                <h3>How do I become an author?</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eveniet sequi placeat beatae neque, officiis repudiandae totam quia, consectetur, soluta </p>
                            </div>
                            <div class="kick-single-faqs">
                                <i class="fa fa-question-circle"></i>
                                <h3>Can I start multiple project?</h3>
                                <p>dolor sit amet, consectetur adipisicing elit. Temporibus Lorem ipsum  eveniet sequi placeat beatae neque, officiis repudiandae totam quia, consectetur, soluta </p>
                            </div>
                            <div class="kick-single-faqs">
                                <i class="fa fa-question-circle"></i>
                                <h3>Tips for Increasing Your Income?</h3>
                                <p>consectetur sit amet, consectetur adipisicing elit. Temporibus Lorem ipsum  eveniet sequi placeat beatae neque, officiis repudiandae totam quia, consectetur, soluta </p>
                            </div>
                            <div class="kick-single-faqs">
                                <i class="fa fa-question-circle"></i>
                                <h3>How can I install a theme?</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eveniet sequi placeat beatae neque, officiis repudiandae totam quia, consectetur, soluta </p>
                            </div>
                            <div class="kick-single-faqs">
                                <i class="fa fa-question-circle"></i>
                                <h3>Tips for Increasing Your Income?</h3>
                                <p>consectetur sit amet, consectetur adipisicing elit. Temporibus Lorem ipsum  eveniet sequi placeat beatae neque, officiis repudiandae totam quia, consectetur, soluta </p>
                            </div>
                            <div class="kick-single-faqs">
                                <i class="fa fa-question-circle"></i>
                                <h3>Can I start multiple project?</h3>
                                <p>dolor sit amet, consectetur adipisicing elit. Temporibus Lorem ipsum  eveniet sequi placeat beatae neque, officiis repudiandae totam quia, consectetur, soluta </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="kick-faqs-right margin-top">
                        <h3>Didn't find the answer?</h3>
                        <form>
                            <p>
                                <label for="name">Name : </label>
                                <input id="name" name="name" placeholder="Enter Your Name" type="text">
                            </p>
                            <p>
                                <label for="email">Email : </label>
                                <input id="email" name="email" placeholder="Enter Your Email" type="email">
                            </p>
                            <p>
                                <label for="message">how can we help you? </label>
                                <textarea id="message" placeholder="Message..." name="Message"></textarea>
                            </p>
                            <p>
                                <button type="submit" name="submit">Send</button>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Faqs Area End -->
    
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
			$(".breadcromb-box > h2").html("FAQs Page")
			$(".breadcromb-box ul li:last-child").html("FAQs Page")
			$(".kick-header-area a[href=faq]").parent().attr('class', 'current-page-item')
		})
	</script>
</body>
</html>
