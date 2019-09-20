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
<link rel="apple-touch-icon" sizes="144x144"
	href="resources/favicons/apple-touch-icon.png">

<link rel="icon" type="image/png" sizes="32x32"
	href="resources/favicons/favicon-32x32.png">

<link rel="icon" type="image/png" sizes="16x16"
	href="resources/favicons/favicon-16x16.png">

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
	<div id="map" style="width: 500px; height: 400px; top:50px;margin:auto;"></div>
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
										<input type="text" name="name" placeholder="Your Name">
									</p>
								</div>
								<div class="col-md-4">
									<p>
										<input type="email" name="email" placeholder="Your Email">
									</p>
								</div>
								<div class="col-md-4">
									<p>
										<input type="tel" name="phone" placeholder="Your Phone Number">
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<p>
										<textarea name="Message" placeholder="Write Your Message"></textarea>
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="contact-form-button">
										<button type="submit" name="submit">Send message</button>
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
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1abed35924ccf6b87189ef4304a905e4"></script>
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
		$(function() {
			
			$(".breadcromb-box > h2").html("Contact")
			$(".breadcromb-box ul li:last-child").html("Contact")
			$(".kick-header-area a[href=contact]").parent().attr('class',
					'current-page-item')
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = { 
				        center: new kakao.maps.LatLng(37.512898, 127.058852), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };

				var map = new kakao.maps.Map(mapContainer, mapOption);

				// 마커가 표시될 위치입니다 
				var markerPosition  = new kakao.maps.LatLng(37.512898, 127.058852); 

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
				    position: markerPosition
				});

				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);

				var iwContent = '<div id="map2"style="padding:5px;text">TEPPEN</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				    iwPosition = new kakao.maps.LatLng(37.512898, 127.058852); //인포윈도우 표시 위치입니다
				    
				// 인포윈도우를 생성합니다
				var infowindow = new kakao.maps.InfoWindow({
				    position : iwPosition, 
				    content : iwContent 
				});
				
				// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
				infowindow.open(map, marker); 
				$("#map2").parent().css("width","100%");
				$("#map2").css("text-align","center");
		})
	</script>
</body>
</html>
