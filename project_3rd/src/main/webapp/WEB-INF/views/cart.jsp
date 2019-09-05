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
    <section class="kick-cart-area section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="cart-table">
                        <table class="table table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Preview</th>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
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
                                <tr class="shop-cart-item">
                                    <td class="kick-cart-close">
                                        <a href="#"><i class="fa fa-close"></i></a>
                                    </td>
                                    <td class="kick-cart-preview">
                                        <a href="#">
                                            <img src="resources/img/min-pro-2.jpg" alt="cart-1" />
                                        </a>
                                    </td>
                                    <td class="kick-cart-product">
                                        <a href="#">
                                            <p>denim jackets</p>
                                        </a>
                                    </td>
                                    <td class="kick-cart-price">
                                        <p>$290</p>
                                    </td>
                                    <td class="kick-cart-quantity">
                                        <input type="number" value="1" >
                                    </td>
                                    <td class="kick-cart-total">
                                        <p>$290</p>
                                    </td>
                                </tr>
                                <tr class="shop-cart-item">
                                    <td class="kick-cart-close">
                                        <a href="#"><i class="fa fa-close"></i></a>
                                    </td>
                                    <td class="kick-cart-preview">
                                        <a href="#">
                                            <img src="resources/img/min-pro-3.jpg" alt="cart-1" />
                                        </a>
                                    </td>
                                    <td class="kick-cart-product">
                                        <a href="#">
                                            <p>denim jackets</p>
                                        </a>
                                    </td>
                                    <td class="kick-cart-price">
                                        <p>$230</p>
                                    </td>
                                    <td class="kick-cart-quantity">
                                        <input type="number" value="1" >
                                    </td>
                                    <td class="kick-cart-total">
                                        <p>$230</p>
                                    </td>
                                </tr>
                                <tr class="shop-cart-item">
                                    <td class="kick-cart-close">
                                        <a href="#"><i class="fa fa-close"></i></a>
                                    </td>
                                    <td class="kick-cart-preview">
                                        <a href="#">
                                            <img src="resources/img/min-pro-4.jpg" alt="cart-1" />
                                        </a>
                                    </td>
                                    <td class="kick-cart-product">
                                        <a href="#">
                                            <p>denim jackets</p>
                                        </a>
                                    </td>
                                    <td class="kick-cart-price">
                                        <p>$330</p>
                                    </td>
                                    <td class="kick-cart-quantity">
                                        <input type="number" value="1" >
                                    </td>
                                    <td class="kick-cart-total">
                                        <p>$330</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="kick-update-cart clearfix">
                    <div class="col-md-6 col-sm-6">
                        <div class="coupon-cart-left">
                            <form>
                                <input type="text" placeholder="Coupon Code" >
                                <input type="submit" value="Apply Coupon" >
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="coupon-cart-right">
                            <a href="#">Update cart</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="kick-calculate-shipping clearfix">
                    <div class="col-md-6 col-sm-6">
                        <div class="calculate-shipping-left">
                            <h3>Calculate Shipping</h3>
                            <form>
                                <div class="row single-shipping">
                                    <div class="col-md-12">
                                        <select>
                                            <option value="0" selected >united kingdom (uk)</option>
                                            <option value="1" >united state (usa)</option>
                                            <option value="2" >united kingdom (uk)</option>
                                            <option value="3" >canada</option>
                                            <option value="4" >france</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row single-shipping">
                                    <div class="col-md-6">
                                        <input type="text" placeholder="State/Country" >
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" placeholder="Zip Code" >
                                    </div>
                                </div>
                                <div class="row single-shipping">
                                    <div class="col-md-12">
                                        <button type="submit" >submit</button>
                                    </div>
                                </div> 
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="calculate-shipping-right">
                            <h3>Cart Totals</h3>
                            <table>
                                <tbody>
                                    <tr>
                                        <td>Cart Subtotal</td>
                                        <td>$1030</td>
                                    </tr>
                                    <tr>
                                        <td>Shipping and Handling</td>
                                        <td>Free Shipping</td>
                                    </tr>
                                    <tr>
                                        <td>Order Total</td>
                                        <td>$1030</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="proceed-checkout">
                            <a href="checkout.html">proceed to checkout</a>
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
		})
	</script>
</body>
</html>
