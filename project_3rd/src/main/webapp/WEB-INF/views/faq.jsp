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
                                <h3>개발기간은 얼마나 걸렸나요?</h3>
                                <p>9월초부터 1달정도 걸렸습니다</p>
                            </div>
                            <div class="kick-single-faqs">
                                <i class="fa fa-question-circle"></i>
                                <h3>팀 매칭은 어떻게 되나요?</h3>
                                <p>구단, 지역, 레이팅 별로 계산하여 동일한 수준의 팀과 자동으로 매칭됩니다</p>
                            </div>
                            <div class="kick-single-faqs">
                                <i class="fa fa-question-circle"></i>
                                <h3>서비스 이용료는 얼마인가요 ?</h3>
                                <p>Sunday League는 모든 서비스가 무료입니다</p>
                            </div>
                            <div class="kick-single-faqs">
                                <i class="fa fa-question-circle"></i>
                                <h3>개발에 사용한 언어는 무엇인가요 ?</h3>
                                <p>java, javascript, ajax, json, Spring Legacy, tomcat, OracleDB, BootStrap, CSS, HTML5 등 다양한 언어를 사용하였습니다</p>
                            </div>
                            <div class="kick-single-faqs">
                                <i class="fa fa-question-circle"></i>
                                <h3>개발하면서 어려웠던점은 무엇인가요 ?</h3>
                                <p>데이터베이스랑 디자인부분이 어려웠습니다</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="kick-faqs-right margin-top">
                        <h3>Didn't find the answer?</h3>
                        <form action="contact" method="POST">
                            <p>
                                <label for="name">Name : </label>
                                <input id="name" name="contact_name" placeholder="Enter Your Name" type="text">
                            </p>
                            <p>
                                <label for="email">Email : </label>
                                <input id="email" name="contact_email" placeholder="Enter Your Email" type="email">
                            </p>
                            <p>
                                <label for="message">how can we help you? </label>
                                <textarea id="message" placeholder="Message..." name="contact_message"></textarea>
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
