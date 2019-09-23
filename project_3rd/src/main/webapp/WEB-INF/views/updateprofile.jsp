<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Title -->
    <title>Kick || Football Club</title>
    
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
                            <h3>update profile</h3>
                        </div>
                        <form action=updateprofile method="post" enctype="multipart/form-data">
                            <div class="account-form-group">
                                <input type="text" placeholder="ID" name=player_id value="${player.player_id}" readonly="readonly">
                                <i class="fa fa-user-o"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="text" placeholder="Username" name="name" value="${player.name}">
                                <i class="fa fa-user"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="email" placeholder="Email Address" name="email" value="${player.email}">
                                <i class="fa fa-envelope-o"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="password" placeholder="Choose Password" name="password" >
                                <i class="fa fa-lock"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="password" placeholder="Confirm Password" >
                                <i class="fa fa-lock"></i>
                            </div>
                            <hr>
                            <div class="account-form-group">
                            	<select name="position">
                            		<option>${player.position} </option>
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
                            		<option>${player.subposition}</option>
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
                                <input type="number" placeholder="Height" name="height" min="0" value="${player.height }" >
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="number" placeholder="Weight" name="weight" min="0" value="${player.weight }">
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                            	<input type="date" placeholder="Birthdate" name="birth" value="${player.birth }">
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                            	<select name="mainfoot" >
                            		<option>${player.mainfoot }</option>
                            		<option value="left">left</option>
                            		<option value="right">right</option>
                            	</select>
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group" style="height: 90px">
                            	<textarea placeholder="Comment" name="player_comment">${player.player_comment }</textarea>
                                <i class="fa"></i>
                            </div>
                            <!-- <div class="remember">
                                <label>
                                    <input name="remember" type="checkbox">
                                     I agree the term’s &#38; conditions
                                </label>
                            </div> -->
                            
                            <div class="account-form-group" style="height: 135px">
                            <c:if test="${result==false }">
	                            <img id="mypic" src="resources/img/emblem-null.png" name="mypicUpload" style="height:130px" />
                            </c:if>
                            <c:if test="${result==true }">
								<img id="mypic" src="/mypic/${loginId}" name="mypicUpload" style="height:130px" />
							</c:if>   
                                <i class="fa"></i>
                                
							</div>
							
								

							
							<input id="imgPreview" type="file" name="mypicUpload" value="사진첨부" accept="image/jpg, image/jpeg, image/png, image/gif" />                            
                            
                            <div class="submit-login">
                                <button type="submit" >Register</button>
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
			$(".breadcromb-box ul li:last-child").html("Registration")
			$(".account-form-group > select").on('change', function(){
				if ($(this).val() != $(this).children()[0].innerHTML){
					$(this).attr('style','color:black;')
						   .next().addClass("fa-check");
				}else {
					$(this).removeAttr('style')
						   .next().removeClass("fa-check");
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
		        $(el).attr('type', 'date');
		        el.click();
		    });
		    $(el).blur(function() {
		        if ($(el).val() == '') $(el).attr('type', 'text');
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
