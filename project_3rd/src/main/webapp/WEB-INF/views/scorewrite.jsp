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
    
    <div class="career">
		<label for="company">
			회사명 : <input id="company" type="text" name="company" />
		</label>
		<label for="title">
			직책 : <input id="title" type="text" name="title" />
		</label>
		<input class="add" type="button" value="+" />
		<input class="sub" type="button" value="-" />
	</div>

    <!-- Cart Area Start -->
    <section class="score-write-area section_100">
        <div class="container">
            <div class="row">
                <div class="score-write-table-div clearfix">
                    <div class="col-md-6 col-sm-6">
                    <div class="score-write-table">
                        <table class="table table-striped table-responsive" border="1">
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
                    <div class="col-md-6 col-sm-6">
                    <div class="cart-table">
                        <table class="table table-striped table-responsive" border="1">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th colspan="5">Away Team</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="shop-cart-item">
                                    <td class="kick-cart-close">
                                        <a href="#"><i class="fa fa-plus"></i></a>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td class="kick-cart-close">
                                        <a href="#"><i class="fa fa-close"></i></a>
                                    </td>
                                </tr>
                                <tr class="shop-cart-item">
                                    <td class="kick-cart-close">
                                        <a href="#"><i class="fa fa-close"></i></a>
                                    </td>
                                    <td class="kick-cart-preview">
                                        <a href="#">
                                            <img src="resources/img/min-pro-1.jpg" alt="cart-1" />
                                        </a>
                                    </td>
                                    <td class="kick-cart-product">
                                        <a href="#">
                                            <p>denim jackets</p>
                                        </a>
                                    </td>
                                    <td class="kick-cart-price">
                                        <p>$180</p>
                                    </td>
                                    <td class="kick-cart-quantity">
                                        <input type="number" value="1" >
                                    </td>
                                    <td class="kick-cart-total">
                                        <p>$180</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
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
			$(".breadcromb-box > h2").html("Cart Page")
			$(".breadcromb-box ul li:last-child").html("Cart Page")
			
			/* var item = '<tr>'
					+'<td class="score-write-table-close">'
		            +'<a href="#"><i class="fa fa-close"></i></a>'
			        +'</td>'
			        +'<td class="score-write-table-select">'
		        	+'<select>'
		       		+'<option>--</option>'
		       		+'<option value="goal">GOAL</option>'
		       		+'<option value="redcard">Red Card</option>'
		       		+'<option value="yellowcard">Yellow Card</option>'
		        	+'</select>'
			        +'</td>'
			        +'<td class="score-write-table-personone">'
			        +'</td>'
			        +'<td class="score-write-table-persontwo">'
			        +'</td>'
				    +'</tr>'; */
			
			var item = $(".score-write-item")[0].outerHTML
			
			$('.score-write-table').on('click', '.add', function(){
				$(this).parent().parent().before(item);
				return false;
			});
			
			$('.score-write-table').on('click', '.sub', function(){
				$(this).parent().parent().remove();
				return false;
			});
			
			$(".score-write-table-select > select").on('change', function(){
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
