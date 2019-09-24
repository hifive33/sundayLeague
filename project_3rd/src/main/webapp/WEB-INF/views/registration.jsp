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
    
    <!-- Login Area Start -->
    <section class="kick-login-page-area section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="login-page-box">
                        <div class="login-page-heading">
                            <i class="fa fa-lock"></i>
                            <h3>register</h3>
                        </div>
                        <form action=registration method="post" enctype="multipart/form-data">
                            <div class="account-form-group">
                                <input type="text" placeholder="ID" name=player_id >
                                <i class="fa fa-user-o"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="text" placeholder="お名前" name="name" >
                                <i class="fa fa-user"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="email" placeholder="Email Address" name="email" >
                                <i class="fa fa-envelope-o"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="password" placeholder="パスワード" name="password" >
                                <i class="fa fa-lock"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="password" placeholder="パスワード再確認" id="confirm">
                                <i class="fa fa-lock"></i>
                            </div>
                            <hr>
                            <div class="account-form-group">
                            	<select name="position">
                            		<option>ポジション</option>
                            		<option value="GK">GK</option>
                            		<option value="CB">CB</option>
                            		<option value="LCB">LCB</option>
                            		<option value="RCB">RCB</option>
                            		<option value="LB">LB</option>
                            		<option value="RB">RB</option>
                            		<option value="LWB">LWB</option>
                            		<option value="RWB">RWB</option>
                            		<option value="CM">CM</option>
                            		<option value="LCM">LCM</option>
                            		<option value="RCM">RCM</option>
                            		<option value="CDM">CDM</option>
                            		<option value="CAM">CAM</option>
                            		<option value="LM">LM</option>
                            		<option value="RM">RM</option>
                            		<option value="LWM">LWM</option>
                            		<option value="RWM">RWM</option>
                            		<option value="CF">CF</option>
                            		<option value="SS">SS</option>
                            		<option value="ST">ST</option>
                            		<option value="LWF">LWF</option>
                            		<option value="RWF">RWF</option>
                            	</select>
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                                <select name="subposition">
                            		<option>サブポジション</option>
                            		<option value="GK">GK</option>
                            		<option value="CB">CB</option>
                            		<option value="LCB">LCB</option>
                            		<option value="RCB">RCB</option>
                            		<option value="LB">LB</option>
                            		<option value="RB">RB</option>
                            		<option value="LWB">LWB</option>
                            		<option value="RWB">RWB</option>
                            		<option value="CM">CM</option>
                            		<option value="LCM">LCM</option>
                            		<option value="RCM">RCM</option>
                            		<option value="CDM">CDM</option>
                            		<option value="CAM">CAM</option>
                            		<option value="LM">LM</option>
                            		<option value="RM">RM</option>
                            		<option value="LWM">LWM</option>
                            		<option value="RWM">RWM</option>
                            		<option value="CF">CF</option>
                            		<option value="SS">SS</option>
                            		<option value="ST">ST</option>
                            		<option value="LWF">LWF</option>
                            		<option value="RWF">RWF</option>
                            	</select>
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="number" placeholder="Height" name="height" min="0" >
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="number" placeholder="Weight" name="weight" min="0" >
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                            	<input type="date" placeholder="Birthdate" name="birth">
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                            	<select name="mainfoot" >
                            		<option>利き足</option>
                            		<option value="left">Left Foot</option>
                            		<option value="right">Right Foot</option>
                            	</select>
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group" style="height: 90px">
                            	<textarea placeholder="Comment" name="player_comment"></textarea>
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group" style="height: 135px">
	                            <img id="mypic" src="resources/img/emblem-null.png" style="height:130px" />
                                <i class="fa"></i>
							</div>
							<input id="imgPreview" type="file" name="mypicUpload" value="사진첨부" accept="image/jpg, image/jpeg, image/png, image/gif" />                            
                            <div class="submit-login">
                                <button type="submit" >登録</button>
                            </div>
                        </form>
                        <div class="login-sign-up">
                            <a href="login.html">ログイン画面に戻る</a>
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
			$(".breadcromb-box > h2").html("Registraion")
			$(".breadcromb-box ul li:last-child").html("Registraion")
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
			
			$(".account-form-group > input[name=name]").on('change', function(){
				// validation 추가
				if ($(this).val() != ""){
					$(this).next().removeClass("fa-user");
					$(this).next().addClass("fa-check");
				}else {
					$(this).next().removeClass("fa-check");
					$(this).next().addClass("fa-user");
				}
			})
			
			$(".account-form-group > input[name=email]").on('change', function(){
				// validation 추가
				if ($(this).val() != ""){
					$(this).next().removeClass("fa-envelope-o");
					$(this).next().addClass("fa-check");
				}else {
					$(this).next().removeClass("fa-check");
					$(this).next().addClass("fa-envelope-o");
				}
			})
			
			$(".account-form-group > input[name=password]").on('change', function(){
				// validation 추가
				if ($(this).val() != ""){
					$(this).next().removeClass("fa-lock");
					$(this).next().addClass("fa-check");
				}else {
					$(this).next().removeClass("fa-check");
					$(this).next().addClass("fa-lock");
				}
			})
			
			$("#confirm").on('change', function(){
				// validation 추가
				if ($(this).val() != ""){
					$(this).next().removeClass("fa-lock");
					$(this).next().addClass("fa-check");
				}else {
					$(this).next().removeClass("fa-check");
					$(this).next().addClass("fa-lock");
				}
			})
			
			$(".account-form-group > input[type=number], textarea").on('change', function(){
				// validation 추가
				if ($(this).val() != ""){
					$(this).next().addClass("fa-check");
				}else {
					$(this).next().removeClass("fa-check");
				}
			})
			
		    var el = $('.account-form-group > input[type="date"]')
		    if ($(el).val() == '') $(el).attr('type', 'text');
		    $(el).focus(function() {
		        $(this).attr('type', 'date');
		        $(this).next().addClass("fa-check");
		        el.click();
		    });
		    $(el).blur(function() {
		        if ($(this).val() == '') {
		        	$(this).attr('type', 'text');
		        	$(this).next().removeClass("fa-check");
		        }
		    });
		    
		    
		})
		$("#imgPreview").on('change', function(){
			previewImage(this); // 미리보기 함수
			
			if($("#imgPreview").val() != ''){
				$("#mypic").next().addClass('fa-check')
			}else{
				$("#mypic").next().removeClass("fa-check");
			}
		})
		function previewImage(input){
			// 이미지를 선택하면
			if(input.files && input.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					$("#mypic").attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			} else{
				$("#mypic").attr('src', "resources/img/emblem-null.png");
			}
			
		}
	</script>
	
</body>
</html>
