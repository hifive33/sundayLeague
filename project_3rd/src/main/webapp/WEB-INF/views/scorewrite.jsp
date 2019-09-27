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

    <!-- Cart Area Start -->
    <section class="score-write-area section_100">
        <div class="container">
            <div class="row">
                <div class="score-write-table-div clearfix">
                    <div class="col-md-2 col-sm-2">
                    	<div class="score-write-table">
	                        <table class="table table-striped table-responsive" id="tabletime">
	                            <thead>
	                                <tr>
	                                    <th>Time</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            </tbody>
	                        </table>
	                    </div>
                    </div>
                    <div class="col-md-5 col-sm-5">
	                    <div class="score-write-table">
	                        <table class="table table-striped table-responsive" id="tableone">
	                            <thead>
	                                <tr>
	                                    <th></th>
	                                    <th colspan="5">${home_team_name} (Home Team)</th>
	                                </tr>
	                            </thead>
	                            <tbody>
									<tr>
	                                    <td class="score-write-table-close">
	                                        <a href="" class="addhome"><i class="fa fa-plus"></i></a>
	                                    </td>
	                                    <td colspan="3"></td>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
                    </div>
                    <div class="col-md-5 col-sm-5">
	                    <div class="score-write-table">
	                        <table class="table table-striped table-responsive" id="tabletwo">
	                            <thead>
	                                <tr>
	                                    <th></th>
	                                    <th colspan="5">${away_team_name} (Away Team)</th>
	                                </tr>
	                            </thead>
	                            <tbody>
									<tr>
	                                    <td class="score-write-table-close">
	                                        <a href="" class="addaway"><i class="fa fa-plus"></i></a>
	                                    </td>
	                                    <td colspan="3"></td>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
                    </div>
                </div>
            </div>
			<div class="row">
               <div class="col-md-12">
                   <div class="match-find">
                   	<div class="match-form-group">
						<button type="button" id="scorewritebutton">점수입력</button>
                   	</div>
                   </div>
               </div>
           </div>
        </div>
    </section>
    <!-- Cart Area End -->
    
    
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
			$(".breadcromb-box > h2").html("Score Write")
			$(".breadcromb-box ul li:last-child").html("Score Write")
			
			var count = 1
			
			var timetr = '<select><option>전반</option><option>후반</option><option>연장</option><option>PK</option></select><input type="number" /> :<input type="number" />'
			
			$('.score-write-table').on('click', '.addhome', function(){
				$(this).parent().parent().before('<tr class="score-write-item"><td class="score-write-table-close"><a href="" class="subhome" id="'+count+'"><i class="fa fa-close"></i></a></td><td class="score-write-table-select home-select"><select><option>--</option><option value="goal">GOAL</option><option value="redcard">Red Card</option><option value="yellowcard">Yellow Card</option></select></td><td class="score-write-table-personone"></td><td class="score-write-table-persontwo"></td></tr>');
				$("#tabletime tbody").append('<tr class="score-write-table-time '+ count +'"><td>'+timetr+'</td></tr>')
				$("#tabletwo tbody>tr:last-child").before('<tr class="'+ count +'"><td colspan="4"><i class="fa fa-ban"></i></td></tr>')
				count++
				return false;
			})
			.on('click', '.addaway', function(){
				$(this).parent().parent().before('<tr class="score-write-item"><td class="score-write-table-close"><a href="" class="subaway" id="'+count+'"><i class="fa fa-close"></i></a></td><td class="score-write-table-select away-select"><select><option>--</option><option value="goal">GOAL</option><option value="redcard">Red Card</option><option value="yellowcard">Yellow Card</option></select></td><td class="score-write-table-personone"></td><td class="score-write-table-persontwo"></td></tr>');
				$("#tabletime tbody").append('<tr class="score-write-table-time '+ count +'"><td>'+timetr+'</td></tr>')
				$("#tableone tbody>tr:last-child").before('<tr class="'+ count +'"><td colspan="4"><i class="fa fa-ban"></i></td></tr>')
				count++
				return false;
			})
			.on('click', '.subhome', function(){
				$(this).parent().parent().remove();
				var c = $(this).attr("id")
				$("#tabletime tbody>tr." + c).remove()
				$("#tabletwo tbody>tr." + c).remove()
				return false;
			})
			.on('click', '.subaway', function(){
				$(this).parent().parent().remove();
				var c = $(this).attr("id")
				$("#tabletime tbody>tr." + c).remove()
				$("#tableone tbody>tr." + c).remove()
				return false;
			})
			.on('change', '.home-select > select', function(){
				switch ($(this).val()) {
				case "goal":
					$(this).parent().next().html("<select><option>넌사람</option><c:forEach var="item" items="${homePlayer}"><option>${item.player_id}</option></c:forEach></select>")
									.next().html("<select><option>어시</option><c:forEach var="item" items="${homePlayer}"><option>${item.player_id}</option></c:forEach></select>")
					break;
				case "redcard":
					$(this).parent().next().html("<select><option>사람</option><c:forEach var="item" items="${homePlayer}"><option>${item.player_id}</option></c:forEach></select>")
									.next().html("")
					break;
				case "yellowcard":
					$(this).parent().next().html("<select><option>사람</option><c:forEach var="item" items="${homePlayer}"><option>${item.player_id}</option></c:forEach></select>")
									.next().html("")
					break;
				default:
					$(this).parent().next().html("")
									.next().html("")
					break;
				}
			})
			.on('change', '.away-select > select', function(){
				switch ($(this).val()) {
				case "goal":
					$(this).parent().next().html("<select><option>넌사람</option><c:forEach var="item" items="${awayPlayer}"><option>${item.player_id}</option></c:forEach></select>")
									.next().html("<select><option>어시</option><c:forEach var="item" items="${awayPlayer}"><option>${item.player_id}</option></c:forEach></select>")
					break;
				case "redcard":
					$(this).parent().next().html("<select><option>사람</option><c:forEach var="item" items="${awayPlayer}"><option>${item.player_id}</option></c:forEach></select>")
									.next().html("")
					break;
				case "yellowcard":
					$(this).parent().next().html("<select><option>사람</option><c:forEach var="item" items="${awayPlayer}"><option>${item.player_id}</option></c:forEach></select>")
									.next().html("")
					break;
				default:
					$(this).parent().next().html("")
									.next().html("")
					break;
				}
			})
			
			$("#scorewritebutton").on('click', function(){
				
				var dataList = []

				$.each($("#tabletime > tbody > tr"), function(index, item){
					var cl = numberdake($(item).attr('class'))
					var tableone = $("#tableone > tbody > tr")
					var tabletwo = $("#tabletwo > tbody > tr")
					var minutes_played = $(item).children().children().val() + ":" + $(item).children().children().next().val() + ":" + $(item).children().children().next().next().val()
					var action = $(tableone[index]).children().next().children().val()
					var player_id = null;
					var assists = null;
					
					var data = {}
					data.match_no = ${match_no}
					
					if (action == "--"){
					} else if (typeof action != "undefined"){
						switch (action) {
						case 'goal':
							player_id = $(tableone[index]).children().next().next().children().val()
							assists = $(tableone[index]).children().next().next().next().children().val()
							data.minutes_played = minutes_played
							data.player_id = player_id
							data.goal = "1"
							dataList.push(data)
							
							var data2 = {}
							data2.match_no = ${match_no}
							data2.minutes_played = minutes_played
							data2.player_id = assists
							data2.assists = "1"
							
							dataList.push(data2)
							break;
						case 'redcard':
							player_id = $(tableone[index]).children().next().next().children().val()
							data.minutes_played = minutes_played
							data.player_id = player_id
							data.redcard = "1"
							
							dataList.push(data)
							break;
						case 'yellowcard':
							player_id = $(tableone[index]).children().next().next().children().val()
							data.minutes_played = minutes_played
							data.player_id = player_id
							data.yellowcard = "1"
							
							dataList.push(data)
							break;
						default:
							break;
						}
					} else{
						action = $(tabletwo[index]).children().next().children().val()
						switch (action) {
						case 'goal':
							player_id = $(tabletwo[index]).children().next().next().children().val()
							assists = $(tabletwo[index]).children().next().next().next().children().val()
							data.minutes_played = minutes_played
							data.player_id = player_id
							data.goal = "1"
							dataList.push(data)
							
							var data2 = {}
							data2.match_no = ${match_no}
							data2.minutes_played = minutes_played
							data2.player_id = assists
							data2.assists = "1"
							
							dataList.push(data2)
							break;
						case 'redcard':
							player_id = $(tabletwo[index]).children().next().next().children().val()
							data.minutes_played = minutes_played
							data.player_id = player_id
							data.redcard = "1"
							
							dataList.push(data)
							break;
						case 'yellowcard':
							player_id = $(tabletwo[index]).children().next().next().children().val()
							data.minutes_played = minutes_played
							data.player_id = player_id
							data.yellowcard = "1"
							
							dataList.push(data)
							break;
						default:
							break;
						}
					}
				});

				console.log(dataList)
				
				$.ajax({
					type:'post'
					,url:'scorewrite'
					,data:JSON.stringify(dataList)
					,contentType:'application/json'
					,success:function(res){
						if (res == "success"){
							location.href = "/"
						}
						
					}
				})
				return false
			})
		});
		
		function numberdake(str){
		    var res;
		    res = str.replace(/[^0-9]/g,"");
		    return res;
		}
	</script>
</body>
</html>
