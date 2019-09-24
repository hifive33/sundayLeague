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
	                            	<tr></tr>
	                                <tr class="score-write-table-time">
	                                	<td>
	                                		<input type="time" />
	                                	</td>
	                                </tr>
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
	                                    <th colspan="5">Home Team</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                                <tr class="score-write-item">
	                                    <td class="score-write-table-close">
	                                        <a href="" class="sub"><i class="fa fa-close"></i></a>
	                                    </td>
	                                    <td class="score-write-table-select">
	                                    	<select>
	                                    		<option>--</option>
	                                    		<option value="goal">GOAL</option>
	                                    		<option value="redcard">Red Card</option>
	                                    		<option value="yellowcard">Yellow Card</option>
	                                    	</select>
	                                    </td>
	                                    <td class="score-write-table-personone">
	                                    </td>
	                                    <td class="score-write-table-persontwo">
	                                    </td>
	                                </tr>
									<tr>
	                                    <td class="score-write-table-close">
	                                        <a href="" class="add"><i class="fa fa-plus"></i></a>
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
	                                    <th colspan="5">Away Team</th>
	                                </tr>
	                            </thead>
	                            <tbody>
		                            <tr></tr>
		                            <tr><td colspan="4"><i class="fa fa-ban"></i></td></tr>
									<tr>
	                                    <td class="score-write-table-close">
	                                        <a href="" class="add"><i class="fa fa-plus"></i></a>
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
						<button type="button" id="scorewrite">점수입력</button>
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
			
			var item = $(".score-write-item")[0].outerHTML
			
			$('.score-write-table').on('click', '.add', function(){
				$(this).parent().parent().before(item);
				if ($(this).parent().parent().parent().parent().attr("id") == "tableone"){
					$("#tabletime tbody>tr:last-child").before('<tr class="score-write-table-time"><td><input type="time" /></td></tr>')
					$("#tabletwo tbody>tr:last-child").before('<tr><td colspan="4"><i class="fa fa-ban"></i></td></tr>')
				}else{
					$("#tabletime tbody>tr:last-child").before('<tr class="score-write-table-time"><td><input type="time" /></td></tr>')
					$("#tableone tbody>tr:last-child").before('<tr><td colspan="4"><i class="fa fa-ban"></i></td></tr>')
				}
				return false;
			});
			
			$('.score-write-table').on('click', '.sub', function(){
				$(this).parent().parent().remove();
				return false;
			});
			
			$(".score-write-table").on('change', 'select', function(){
				switch ($(this).val()) {
				case "goal":
					$(this).parent().next().html("<input type='text' placeholder='넌사람' />")
									.next().html("<input type='text' placeholder='어시' />")
					break;
				case "redcard":
					$(this).parent().next().html("<input type='text' placeholder='넌사람' />")
									.next().html("")
					break;
				case "yellowcard":
					$(this).parent().next().html("<input type='text' placeholder='넌사람' />")
									.next().html("")
					break;
				default:
					$(this).parent().next().html("")
									.next().html("")
					break;
				}
				if ($(this).val() != $(this).children()[0].innerHTML){
					
				}else {
				}
			})
		});
	</script>
</body>
</html>
