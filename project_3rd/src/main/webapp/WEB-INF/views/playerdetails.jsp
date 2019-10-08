<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
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

    <!-- this is brand new css for layouts -->
    <style>
        .team__box__left{
            display: inline-block; 
            /* width: 300px; */
            width: 30%;
            vertical-align: top;
            margin-right: 8px;
            /* height:443px; */
            box-sizing: border-box;
        }

        .team__title{
            display: block; 
            width: 100%; 
            height: 50px;
            box-sizing: border-box;
            font-size: 18px; 
            background: #E01A22;
            text-align: center;
            color: #ffffff;
            padding: 10px;
            font-weight: 500;
            margin-bottom: 8px;
        }
        
        .team__title__right{
            display: block; 
            width: 100%; 
            height: 50px;
            box-sizing: border-box;
            font-size: 18px; 
            background: #E01A22;
            text-align: left;
            color: #ffffff;
            padding: 10px;
            font-weight: 500;
            margin-bottom: 8px;
        }
        
        .spec__box{
            padding: 14px;
            height:385px;
            background: #212121;
        }

        .spec__box2{
            padding: 14px;
            height:385px;
            background: #212121;
        }

		.img__box{
			padding: 14px;
			height: 518.6px;
			background: #212121;
			text-align: center;
		}
        .team__image{
            display: block;
            box-sizing: border-box;
            margin: 0 auto;
            width: 200px;
            height:230px;
            margin-bottom: 20px;
            text-align: center;
        }
        
        .team__image > img{
        	width: auto;
        	height: auto;
        	max-height: 100%;
        	max-width: 100%;
        }
        
        .team__score{
            padding: 0px 20px;
            font-size: 0;
        }

        .team__score>span{
            width: 50%;
            font-size: 16px;
            font-weight: 600;
            color: #ADADAD;
            display: inline-block;
        }

        .team__score>p{
            display: inline-block;
            text-align: right;
            color: #ffffff;
            font-size: 16px;
            width: 50%;
            vertical-align: top;
        }

        .team__box__right{
            display: inline-block;
            height: 443px;
            /* width: 657px; */
            width: 65%;
            background: #ffffff;
            margin-right: 8px;
        }

        .top__menu{
            height: 55px;
        }

        .top__menu>p{
            height: 100%;
        }
        .__navgation{
            margin: 0;
            padding: 0;
        }
        .__navgation > ul{
            font-size: 0;
        }
        .__navgation > ul > li{
            display: inline-block;
            width: 25%;
        }
        .__navgation > ul > li > a{
            display: block;
            width: 100%;
            padding: 10px;
            text-align: center;
            font-size: 18px;
            font-weight: 400;
            color: #898989;
            box-sizing: border-box;
            border-bottom: 4px solid #212121;
        }
        .navigation_active{
        	border-bottom: 4px solid #E01A22;
            color: #ffffff;
            transition: all 0.3s ease-in-out;
        }
        .__navgation > ul > li > a:hover,
        .__navgation > ul > li > a:active{
            border-bottom: 4px solid #E01A22;
            color: #ffffff;
            transition: all 0.3s ease-in-out;
        }
        .item__list{
            box-sizing: border-box;
            font-size: 0;
        }
        .__scroll{
            height: 260px;
            overflow-y: scroll;
        }
        .item__list > li > p{
            display: inline-block;
            vertical-align: middle;
            padding: 6px 10px;
            color: #ffffff;
            overflow: hidden;
            text-align: center;
            text-overflow: ellipsis;
            white-space: nowrap;
            
        }
        .item__list > li > p:nth-child(1){
            width: 20%;
        }
        .item__list > li > p:nth-child(2){
            width: 16%;
        }
        .item__list > li > p:nth-child(3){
            width: 16%;
        }
        .item__list > li > p:nth-child(4){
            width: 44%;
        }
        .__head{
            font-size: 16px;
            background: #2E2E2E;
        }
        .__item{
            font-size: 14px;
            font-weight: 100;
            border-bottom: 1px solid #2E2E2E;
        }
		.__item:hover{
			cursor: pointer;
		    background: #353535 none repeat scroll 0 0 !important;
		}
		ul::-webkit-scrollbar{width: 10px;}
		ul::-webkit-scrollbar-track {display: none;}
		ul::-webkit-scrollbar-thumb {background-color:#303030; }
		ul::-webkit-scrollbar-thumb:hover {background: #555;}
		ul::-webkit-scrollbar-button:start:decrement,::-webkit-scrollbar-button:end:increment {display: none;} 

    </style>
</head>
<body>
    
    <!-- Header Area Start -->
	<%@include file="menu/headerArea.jsp"%>
    <!-- Header Area End -->
    
    <!-- Breadcromb Area Start -->
    <%@include file="menu/breadcrombArea.jsp"%>
    <!-- Breadcromb Area End -->
    
	<!-- Player Details Page Start -->
    <section class="kick-fixture-page-next-match section_100">
        <div class="container">
            <div class="row">
                <!-- !Added_Layout Starts from here! Team Specification -->

                <!-- team_spec_left -->
                <div class="team__box__left">
                    <div class="team__title">${player.player_id }</div>

                    <div class="spec__box">
                        <div class="team__image" >
                        	<img src="/mypic/${player.player_id}" onerror="this.src='resources/img/player-5.jpg'" alt="player image" border=0 />
                        </div>

                        <div class="team__score">
                            <span>COMMENT</span><p>${player.player_comment }</p><br>
                        </div>
                    </div>
                </div>
                   
                <!-- team_spec_right -->
                <div class="team__box__right">
                	<div class="team__title__right">
                		Profile information
                	</div>
                	<div class="spec__box2">
                        <table class="table table-striped table-responsive">
                            <tbody>
                                <tr>
                                    <td>Team Name</td>
                                    <c:if test="${player.team_name == null }">
                                    <td>무소속</td>
                                    </c:if>
                                    <c:if test="${player.team_name != null }">
                                    <td>${player.team_name }</td>
                                    </c:if>
                                </tr>
                                <tr>
                                    <td>Birth Date</td>
                                    <td>${player.birth }</td>
                                </tr>
                                <tr>
                                    <td>Position</td>
                                    <td>${player.position}</td>
                                </tr>
                                <tr>
                                    <td>Subposition</td>
                                    <td>${player.subposition}</td>
                                </tr>
                                <tr>
                                    <td>Height</td>
                                    <td>${player.height }</td>
                                </tr>
                                <tr>
                                    <td>Weight</td>
                                    <td>${player.weight }</td>
                                </tr>
                                <tr>
                                    <td>Mainfoot</td>
                                    <td>${player.mainfoot}</td>
                                </tr>
                                <tr>
                                    <td>Authority</td>
                                    <td>${player.authority == 3 ? '監督' : 
                                    	  player.authority == 2 ? 'コーチ' : 
                                    	  player.authority == 1 ? '選手' : '承認待ち' }</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Player Details Page End -->
    
    
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
			$(".breadcromb-box > h2").html("Player Details")
			$(".breadcromb-box > ul > li:last-child").html("Player Details")
		})
	</script>
</body>
</html>
