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
    
    
    <!-- About Page Section Start -->
      <section class="kick-about-area section_100">
        <div class="back" style="background-color: #00000033;padding-top: 100px;padding-bottom:100px">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="kick-about-right">
                        <div class="kick-section-heading">
                            <h2>about <span>SundayLeague</span></h2>
                            <div class="title-line-one"></div>
                            <div class="title-line-two"></div>
                        </div>
                        <p>サッカー同好会の活動を活性化させるためにレーティング点数を基盤にマッチングするサービスをELO アルゴリズムを使って開発</p>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="single-about-right">
                                    <div class="single-about-right-con">
                                        <i class="fa fa-grav"></i>
                                    </div>
                                    <div class="single-about-right-text">
                                        <h3>Training period</h3>
                                        <p>3th March - 27th December</p>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="single-about-right">
                                    <div class="single-about-right-con">
                                        <i class="fa fa-trophy"></i>
                                    </div>
                                    <div class="single-about-right-text">
                                        <h3>used language</h3>
                                        <p>Spring FrameWork</p>
                                        <p>Mybtis</p>
                                        <p>JavaScript</p>
                                        <p>Oracle DataBase</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="single-about-right">
                                    <div class="single-about-right-con">
                                        <i class="fa fa-line-chart"></i>
                                    </div>
                                    <div class="single-about-right-text">
                                        <h3>Develope period</h3>
                                        <p>1th September - 10th October</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="single-about-right">
                                    <div class="single-about-right-con">
                                        <i class="fa fa-users"></i>
                                    </div>
                                    <div class="single-about-right-text">
                                        <h3>team member</h3>
                                        <p>Project manager Lee Jung Hyun</p>
                                        <p>Back-End Dev Jung Jin woo</p>
                                        <p>Back-End Dev Park Myeong Kook</p>
                                        <p>Front-End Dev Jin Sung Min</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="kick-about-left">
                        <img src="resources/img/img-03.png" alt="about player" />
                    </div>
                </div>
            </div>
            </div>
        </div>
    </section>
    <!-- About Page Section End -->
    
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
			$(".breadcromb-box > h2").html("About")
			$(".breadcromb-box ul li:last-child").html("About")
			$("a[href=about]").parent().attr('class', 'current-page-item')
		})
	</script>
</body>
</html>
