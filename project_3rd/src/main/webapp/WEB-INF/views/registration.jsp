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
                            <h3>register</h3>
                        </div>
                        <form action=registration method="post">
                            <div class="account-form-group">
                                <input type="text" placeholder="ID" name=player_id >
                                <i class="fa fa-user-o"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="text" placeholder="Username" name="name" >
                                <i class="fa fa-user"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="email" placeholder="Email Address" name="email" >
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
                                <input type="text" placeholder="Position" name="position" >
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="text" placeholder="Subposition" name="subposition" >
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="number" placeholder="Height" name="height" >
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="number" placeholder="Weight" name="weight" >
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                                <input type="number" placeholder="Age" name="age" >
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                            	<select name="mainfoot" >
                            		<option>Main Foot</option>
                            		<option>left</option>
                            		<option>right</option>
                            	</select>
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group" style="height: 90px">
                            	<textarea placeholder="Comment" name="player_comment"></textarea>
                                <i class="fa"></i>
                            </div>
                            <!-- <div class="remember">
                                <label>
                                    <input name="remember" type="checkbox">
                                     I agree the term’s &#38; conditions
                                </label>
                            </div> -->
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
				if ($(this).val() != $(this).children()[0].innerHTML)
					$(this).attr('style','color:black;');
				else
					$(this).removeAttr('style');
			})
		})
	</script>
	
</body>
</html>
