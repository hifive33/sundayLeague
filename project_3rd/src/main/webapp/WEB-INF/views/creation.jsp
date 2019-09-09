<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    
    <!-- Login Area Start -->
    <section class="kick-login-page-area section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="login-page-box">
                        <div class="login-page-heading">
                            <i class="fa fa-lock"></i>
                            <h3>Create Team</h3>
                        </div>
                        <form action=registration method="post">
                            <div class="account-form-group">
                                <input type="text" placeholder="구단명" name=player_id >
                                <i class="fa fa-user-o"></i>
                            </div>
                            <div class="account-form-group">
                                <select name="region">
									<option>지역을 선택해주세요.</option>
									<option value="서울시">서울시</option>
									<option value="경기도">경기도</option>
									<option value="강원도">강원도</option>
                            	</select>
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                                <select id="subregion" name="subregion">
									<option>---</option>
                            	</select>
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group" style="height: 90px">
                            	<textarea placeholder="구단 소개" name="player_comment"></textarea>
                                <i class="fa"></i>
                            </div>
                            <div class="submit-login">
                                <button type="submit" >창단</button>
                            </div>
                        </form>
                        <div class="login-sign-up">
                            <a href="login.html">back to login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Login Area End -->
    
    
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
			$(".breadcromb-box ul li:last-child").html("Create Team")
			$(".account-form-group > select").on('change', function(){
				if ($(this).val() != $(this).children()[0].innerHTML){
					$(this).attr('style','color:black;')
						   .next().addClass("fa-check");
				}else {
					$(this).removeAttr('style')
						   .next().removeClass("fa-check");
				}
			})
			$(".account-form-group > input[name=player_id]").on('change', function(){
				// validation 추가
				if ($(this).val() != ""){
					$(this).next().removeClass("fa-user-o");
					$(this).next().addClass("fa-check");
				}else {
					$(this).next().removeClass("fa-check");
					$(this).next().addClass("fa-user-o");
				}
			})
			$(".account-form-group > textarea").on('change', function(){
				// validation 추가
				if ($(this).val() !0= ""){
					$(this).next().addClass("fa-check");
				}else {
					$(this).next().removeClass("fa-check");
				}
			})
		    $(".account-form-group > select[name=region]").on('change', categoryChange)
		})
		function categoryChange() {
			var none = [ "---" ];
			var seoul = [ "---", "강동구","종로구", "중구", "용산구", "성동구", "광진구", "동대문구", "중랑구", "성북구", "강북구", "도봉구", "노원구", "은평구", "서대문구", "마포구", "양천구", "강서구", "구로구", "금천구", "영등포구", "동작구", "관악구", "서초구", "강남구", "송파구" ];
			var gyeonggi = [ "---", "정현이형", "해주실거라", "믿습니다", "화이팅" ];
			var kangwon = [ "전국을", "다해야만", "하는건가", "불가능", "입니다" ];
			var target = document.getElementById("subregion");

			switch ($(this).val()){
			case"지역을 선택해주세요.":
				var d = none;
				break;
			case"서울시":
				var d = seoul;
				break;
			case"경기도":
				var d = gyeonggi;
				break;
			case"강원도":
				var d = kangwon;
				break;
			}

			target.options.length = 0;

			for (x in d) {
				var opt = document.createElement("option");
				opt.value = d[x];
				opt.innerHTML = d[x];
				target.appendChild(opt);
				$(target).removeAttr('style')
				  		 .next().removeClass("fa-check");
			}
		}
	</script>
</body>
</html>