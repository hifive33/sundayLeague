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
                        <form action=registration method="post" enctype="multipart/form-data" id="regform">
                            <div class="account-form-group">
                                <input type="text" placeholder="ID" name="player_id" >
                                <i class="fa fa-user-o"></i>
                            </div>
							<div id="id_check" style="color:red !important;text-align: right;"></div>
                            <div class="account-form-group">
                                <input type="text" placeholder="お名前" name="name" >
                                <i class="fa fa-user"></i>
                            </div>
							<div id="name_check" style="color:red !important;text-align: right;"></div>
                            <div class="account-form-group">
                                <input type="email" placeholder="Email Address" name="email" >
                                <i class="fa fa-envelope-o"></i>
                            </div>
							<div id="email_check" style="color:red !important;text-align: right;"></div>
                            <div class="account-form-group">
                                <input type="password" placeholder="パスワード" name="password" id="pw">
                                <i class="fa fa-lock"></i>
                            </div>
							<div id="pw_check" style="color:red !important;text-align: right;"></div>
                            <div class="account-form-group">
                                <input type="password" placeholder="パスワード再確認" id="confirm">
                                <i class="fa fa-lock"></i>
                            </div>
							<div id="confirm_check" style="color:red !important;text-align: right;"></div>
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
                                <button id="regsubmit">登録</button>
                            </div>
                        </form>
                        <div class="login-sign-up">
                            <a href="login">ログイン画面に戻る</a>
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
			var validation = [false, false, false, false, false, false, false, false, false, false, false, false, false]
			$(".breadcromb-box > h2").html("Registraion")
			$(".breadcromb-box ul li:last-child").html("Registraion")
			
			/* 0. ID */
			$(".account-form-group > input[name=player_id]").on('keyup', function(){
				if ($(this).val().length < 3 || $(this).val().length > 10){
					$("#id_check").html("ID는 3~10자리만 가능합니다.")
					$(this).next().removeClass("fa-check");
					$(this).next().addClass("fa-user-o");
					validation[0] = false;
				}else {
					$.ajax({
						method:'get'
						,url:'checkId'
						,data:'player_id=' + $(this).val()
						,success:function(res){
							var temp = ".account-form-group > input[name=player_id]"
							if (res == 'success'){
								$("#id_check").html("이미 존재하는 ID 입니다")
								$(temp).next().removeClass("fa-check");
								$(temp).next().addClass("fa-user-o");
								validation[0] = false;
							} else{
								$("#id_check").html("")
								$(temp).next().removeClass("fa-user-o");
								$(temp).next().addClass("fa-check");
								validation[0] = true;
							}
						}
					})
				}
			})
			
			/* 1. user name */
			$(".account-form-group > input[name=name]").on('keyup', function(){
				if ($(this).val() != ""){
					$("#name_check").html("")
					$(this).next().removeClass("fa-user");
					$(this).next().addClass("fa-check");
					validation[1] = true;
				}else {
					$("#name_check").html("이름을 입력하세요.")
					$(this).next().removeClass("fa-check");
					$(this).next().addClass("fa-user");
					validation[1] = false;
				}
			})
			
			/* 2. Email */
			$(".account-form-group > input[name=email]").on('keyup', function(){
				var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
				// validation 추가
				if(!emailRule.test($(this).val())) {
					$("#email_check").html("올바른 email을 입력하세요.")
					$(this).next().removeClass("fa-check");
					$(this).next().addClass("fa-envelope-o");
					validation[2] = false;
				}else{
					$("#email_check").html("")
					$(this).next().removeClass("fa-envelope-o");
					$(this).next().addClass("fa-check");
					validation[2] = true;
				}
			})
			
			/* 3. Password */
			$(".account-form-group > input[name=password]").on('keyup', function(){
				if($(this).val().length < 3 || $(this).val().length > 10){
					$("#pw_check").html("pw는 3~10자리만 가능합니다.")
					$(this).next().removeClass("fa-check");
					$(this).next().addClass("fa-lock");
					validation[3] = false;
				} else{
					$("#pw_check").html("")
					$(this).next().removeClass("fa-lock");
					$(this).next().addClass("fa-check");
					validation[3] = true;
				}
			})
			
			/* 4. Confirm */
			$("#confirm").on('keyup', function(){
				if ($(this).val() != $("#pw").val()){
					$("#confirm_check").html("password가 일치하지 않습니다.")
					$(this).next().removeClass("fa-check");
					$(this).next().addClass("fa-lock");
					validation[4] = false;
				}else {
					$("#confirm_check").html("")
					$(this).next().removeClass("fa-lock");
					$(this).next().addClass("fa-check");
					validation[4] = true;
				}
			})
			
			/* 5. Position */
			$(".account-form-group > select[name=position]").on('change', function(){
				if ($(this).val() != $(this).children()[0].innerHTML){
					$(this).attr('style','color:black;')
						   .next().addClass("fa-check");
					validation[5] = true;
				}else {
					$(this).removeAttr('style')
						   .next().removeClass("fa-check");
					validation[5] = false;
				}
			})
			
			/* 6. SubPosition */
			$(".account-form-group > select[name=subposition]").on('change', function(){
				if ($(this).val() != $(this).children()[0].innerHTML){
					$(this).attr('style','color:black;')
						   .next().addClass("fa-check");
					validation[6] = true;
				}else {
					$(this).removeAttr('style')
						   .next().removeClass("fa-check");
					validation[6] = false;
				}
			})
			
			/* 7. Height */
			$(".account-form-group > input[name=height]").on('keyup', function(){
				if ($(this).val() != ""){
					$(this).next().addClass("fa-check");
					validation[7] = true;
				}else {
					$(this).next().removeClass("fa-check");
					validation[7] = false;
				}
			})
			$(".account-form-group > input[name=height]").on('change', function(){
				if ($(this).val() != ""){
					$(this).next().addClass("fa-check");
					validation[7] = true;
				}else {
					$(this).next().removeClass("fa-check");
					validation[7] = false;
				}
			})
			
			/* 8. Weight */
			$(".account-form-group > input[name=weight]").on('keyup', function(){
				if ($(this).val() != ""){
					$(this).next().addClass("fa-check");
					validation[8] = true;
				}else {
					$(this).next().removeClass("fa-check");
					validation[8] = false;
				}
			})
			$(".account-form-group > input[name=weight]").on('change', function(){
				if ($(this).val() != ""){
					$(this).next().addClass("fa-check");
					validation[8] = true;
				}else {
					$(this).next().removeClass("fa-check");
					validation[8] = false;
				}
			})
			
			/* 9. Birth Date */
		    var el = $('.account-form-group > input[type=date]')
		    if ($(el).val() == '') $(el).attr('type', 'text');
		    $(el).focus(function() {
		        $(this).attr('type', 'date');
		        $(this).next().addClass("fa-check");
				validation[9] = true;
		        el.click();
		    });
		    $(el).blur(function() {
		        if ($(this).val() == '') {
		        	$(this).attr('type', 'text');
		        	$(this).next().removeClass("fa-check");
					validation[9] = false;
		        }
		    });
			
			/* 10. mainfoot */
			$(".account-form-group > select[name=mainfoot]").on('change', function(){
				if ($(this).val() != $(this).children()[0].innerHTML){
					$(this).attr('style','color:black;')
						   .next().addClass("fa-check");
					validation[10] = true;
				}else {
					$(this).removeAttr('style')
						   .next().removeClass("fa-check");
					validation[10] = false;
				}
			})
			
			/* 11. Comment */
			$(".account-form-group > textarea").on('keyup', function(){
				if ($(this).val() != ""){
					$(this).next().addClass("fa-check");
					validation[11] = true;
				}else {
					$(this).next().removeClass("fa-check");
					validation[11] = false;
				}
			})
			$(".account-form-group > textarea").on('change', function(){
				if ($(this).val() != ""){
					$(this).next().addClass("fa-check");
					validation[11] = true;
				}else {
					$(this).next().removeClass("fa-check");
					validation[11] = false;
				}
			})
		    
			/* 12. Picture */
			$("#imgPreview").on('change', function(){
				previewImage(this); // 미리보기 함수
				
				if($("#imgPreview").val() != ''){
					$("#mypic").next().addClass('fa-check')
					validation[12] = true;
				}else{
					$("#mypic").next().removeClass("fa-check");
					validation[12] = false;
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

		    /* Submit Button */
		    $("#regsubmit").on('click', function(){
		    	var count = 0
		    	$.each(validation, function(index, item){
		    		if (!item){
		    			alert("빈칸을 모두 입력해주세요")
		    			return false;
		    		}else{
		    			count++;
		    		}
		    	});
		    	if (count == 13) {
		    		$("#regform").submit()
		    	}
		    	return false;
		    })
		    
		})
	</script>
	
</body>
</html>
