<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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

	<!-- JqueryUI CSS -->
	<link rel="stylesheet" href="resources/css/jquery-ui.css">
	
    <!-- this is brand new css for layouts -->
    <style>
        .team__box__left{
            display: inline-block; 
            /* width: 300px; */
            width: 30%;
            vertical-align: top;
            margin-right: 8px;
            	height:443px;
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
        
        .spec__box{
            padding: 14px;
            	height:385px;
            background: #212121;
        }

        .team__image{
            display: block;
            box-sizing: border-box;
            margin: 0 auto;
            width: 200px;
            height:230px;
            margin-bottom: 20px;
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
        }

        .team__box__right{
            display: inline-block;
            height: 443px;
            /* width: 657px; */
            width: 65%;
            background: #212121;
        }

        .top__menu{
            height: 90px;
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

    <!-- My Team Page Start -->
    <section class="kick-fixture-page-next-match section_100">
        <div class="container">
            <div class="row">
                <!-- !Added_Layout Starts from here! Team Specification -->
                <!-- team_spec_left -->
                <div class="team__box__left">
                    <div class="team__title">${team.team_name }</div>

                    <div class="spec__box">
                        <div class="team__image" >
                            <img style="height: 100%;"src="emblemimg/${team.team_name}"/>
                        </div>

                        <div class="team__score">
                            <span>RATING</span><p>${team.rating }</p><br>
                            <span>HEADCOUNT</span><p>${team.headcount }</p><br>
                            <span>REGION</span><p>${team.region }</p>
                            
                        </div>
                    </div>
                </div>
                   
                <!-- team_spec_right -->
                <div class="team__box__right">
                    <div id="wdl" class="top__menu">
                        <p>${team.victory }<br>win</p>
                        <p>${team.draw }<br>draw</p>
                        <p>${team.defeat }<br>lose</p>
                    </div>

                    <div class="__navgation">
                        <ul>
                        <c:if test="${sessionScope.authority >=0}">
                            <li id="list1"><a href="#">팀 목록</a></li>
                        </c:if> 
                        	<c:if test="${sessionScope.authority >1}">
                            <li id="list2"><a href="#">가입 승인</a></li>
                        </c:if>
                       	<c:if test="${sessionScope.authority >2}">
                            <li id="list3"><a href="#">스탭 임명</a></li>
                  
                            <li id="delete"><a href="#">구단 해체</a></li>
                        </c:if>
                        </ul>
                    </div>
                    
                    <ul class="item__list">
                            <li class="__head">
                                <p>ID</p>
                                <p>Position</p>
                                <p>Rank</p>
                                <p>Comment</p>
                            </li>     
                    </ul>
                    
                    <ul class="item__list __scroll" id="listmain">
                    <c:forEach var ="list" items="${player }">
                    <c:if test="${list.authority > 0}">
                        <li class="__item" onclick="playerDetail(this)">
                            <p>${list.player_id}</p>
                            <p>${list.position }</p>
                            <p>${list.authority ==3 ? '구단주':list.authority ==2 ? '스태프':'팀원'}</p>
                            <p>${list.player_comment }</p>
                        </li>
                        </c:if>
                        </c:forEach>
                       </ul>
                </div>
			</div>
		</div>
    </section> 
    <!-- My Team Page End -->
    
    <!-- Footer Area Start -->
    
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
    
    <!-- Jquery-ui -->
	<script src="resources/js/jquery-ui.js"></script>
	
    <!-- script -->
	<script>
		$(function(){
			$(".breadcromb-box > h2").html("My Team")
			$(".breadcromb-box ul li:last-child").html("My Team")
			$("a[href=myteam]").parent().attr('class', 'current-page-item')
			$(".__navgation > ul > li").on('click', toggle)
			$("#delete").on('click',delteam)
			$(".__navgation > ul > li:first-child").toggleClass('navigation_active')
			$(".applylist").on('click',function(){
				alert("fuck you")
			})
			
			//가입목록	
			$("#list2").on('click',function(){
			
			
		var result = '<c:forEach var ="list" items="${player2}"><li class="__item" onclick="confirmApply(this)">'
				result += '<p>${list.player_id}</p>'
				result += '<p>${list.position }</p>'
                result += '<p>${list.authority ==3 ? "구단주":list.authority ==2 ? "스태프":"팀원"}</p>'
                result += '<p>${list.player_comment}</p>'
           	    result += '</li>'
           	    result += '</c:forEach>'
				$("#listmain").html(result)
				return false;
			})
			
			//팀목록
			$("#list1").on('click',function(){
				var head = '<li class="__head"><p>ID</p>\ <p>Position</p><p>Rank</p><p>Comment</p></li>'
					$(".item__list").html(head)
				var result = '<c:forEach var ="list" items="${player}"><c:if test="${list.authority > 0}"><li class="__item" onclick="playerDetail(this)">'
				result += '<p>${list.player_id}</p>'
				result += '<p>${list.position }</p>'
                result += '<p>${list.authority ==3 ? "구단주":list.authority ==2 ? "스태프":"팀원"}</p>'
                result += '<p>${list.player_comment }</p>'
           	    result += '</li></c:if>'
           	    result += '</c:forEach>'
				$("#listmain").html(result)
				return false;
			})
			
			//스태프 임명
			$("#list3").on('click',function(){
				var result = '<c:forEach var ="list" items="${player}"><c:if test="${list.authority > 0 && list.authority < 2}"><li class="__item" onclick="confirmAppoint(this)">'
				result += '<p>${list.player_id}</p>'
				result += '<p>${list.position }</p>'
                result += '<p>${list.authority ==3 ? "구단주":list.authority ==2 ? "스태프":"팀원"}</p>'
                result += '<p>${list.player_comment}</p>'
           	    result += '</li></c:if>'
           	    result += '</c:forEach>'
				$("#listmain").html(result)
				return false;
			})
			
			$("#dialog").on('click', function(e) {
                e.preventDefault();
                var dialog = $('<p>Are you sure?</p>').dialog({
                    buttons: {
                        "Yes": function() {
            				location.href="joinapply?player_id=" + $(param).children()[0].innerText;
                            dialog.dialog('close');
                        },
                        "No":  function() {
            				location.href="joinrefuse?player_id=" + $(param).children()[0].innerText;
                            dialog.dialog('close');
                        },
                        "Cancel":  function() {
                            dialog.dialog('close');
                        }
                    }
                })
			});

		})
		
		function toggle(){
			$(".navigation_active").toggleClass('navigation_active');
			$(this).toggleClass('navigation_active');
		}
		function delteam(){
			var dialog = $('<p>구단을 해체하시겠습니까?</p>').dialog({
				buttons: {
					"구단 해체": function() {
        				location.href="teamdelete";
						dialog.dialog('close');
					},
					"취소":  function() {
						dialog.dialog('close');
					}
                }
            })
            return false;
		}
		function playerDetail(param){
			location.href="playerdetails?playerid=" + $(param).children()[0].innerText;
			return false;
		}
		function confirmApply(param) {
			var dialog = $('<p>승인 하시겠습니까?</p>').dialog({
				buttons: {
					"승인": function() {
        				location.href="joinapply?player_id=" + $(param).children()[0].innerText;
						dialog.dialog('close');
					},
					"거절":  function() {
        				location.href="joinrefuse?player_id=" + $(param).children()[0].innerText;
						dialog.dialog('close');
					},
					"취소":  function() {
						dialog.dialog('close');
					}
                }
            })
		}
		function confirmAppoint(param) {
			var dialog = $('<p>임명 하시겠습니까?</p>').dialog({
				buttons: {
					"임명": function() {
        				location.href="appoint?player_id=" + $(param).children()[0].innerText;
						dialog.dialog('close');
					},
					"취소":  function() {
						dialog.dialog('close');
					}
                }
            })
		}
	</script>
</body>
</html>
