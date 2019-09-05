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
    
    
    <!-- Checkout Area Start -->
    <section class="kick-checkout-area section_100">
        <div class="container">
            <div class="row kick-checkout">
                <div class="col-md-6">
                    <div class="kick-checkout-form">
                        <h3>Shipping Address</h3>
                        <form>
                            <div class="row checkout-form">
                                <div class="col-md-6">
                                    <label for="name" >First Name</label>
                                    <input type="text" name="firstname" id="name" >
                                </div>
                                <div class="col-md-6">
                                    <label for="name2" >Last Name</label>
                                    <input type="text" name="lastname" id="name2" >
                                </div>
                            </div>
                            <div class="row checkout-form">
                                <div class="col-md-12">
                                    <label for="cntr" >Country</label>
                                    <input type="text" name="country" id="cntr" >
                                </div>
                            </div>
                            <div class="row checkout-form">
                                <div class="col-md-12">
                                    <label for="addr" >Address</label>
                                    <input type="text" name="address" id="addr" >
                                    <input type="text" name="address" id="addr1" >
                                </div>
                            </div>
                            <div class="row checkout-form">
                                <div class="col-md-12">
                                    <label for="Town" >Town / City *</label>
                                    <input type="text" name="town" id="Town" >
                                </div>
                            </div>
                            <div class="row checkout-form">
                                <div class="col-md-12">
                                    <label for="notes" >other notes</label>
                                    <textarea id="notes" ></textarea>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="kick-checkout-form checkout-form-right margin-top">
                        <h3>Billing Address</h3>
                        <form>
                            <div class="row checkout-form">
                                <div class="col-md-6">
                                    <label for="name23" >First Name</label>
                                    <input type="text" name="firstname" id="name23" >
                                </div>
                                <div class="col-md-6">
                                    <label for="name22" >Last Name</label>
                                    <input type="text" name="lastname" id="name22" >
                                </div>
                            </div>
                            <div class="row checkout-form">
                                <div class="col-md-12">
                                    <label for="cntr2" >Country</label>
                                    <input type="text" name="country" id="cntr2" >
                                </div>
                            </div>
                            <div class="row checkout-form">
                                <div class="col-md-12">
                                    <label for="addr2" >Address</label>
                                    <input type="text" name="address" id="addr2" >
                                    <input type="text" name="address" id="addr12" >
                                </div>
                            </div>
                            <div class="row checkout-form">
                                <div class="col-md-12">
                                    <label for="Town2" >Town / City *</label>
                                    <input type="text" name="town" id="Town2" >
                                </div>
                            </div>
                            <div class="row checkout-form">
                                <div class="col-md-12">
                                    <label for="info2" >Contact Info *</label>
                                    <input type="text" name="info2" id="info2" placeholder="Email Address" >
                                    <input type="text" name="info2" id="info12" placeholder="Phone Number" >
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row checkout-bottom">
                <div class="col-md-6">
                    <div class="checkout-cart-table cart-table">
                        <h3>Order Details</h3>
                        <table class="table table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th>Preview</th>
                                    <th>Product</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="shop-cart-item">
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
                                    <td class="kick-cart-quantity">
                                        <input type="number" value="1" >
                                    </td>
                                    <td class="kick-cart-total">
                                        <p>$180</p>
                                    </td>
                                </tr>
                                <tr class="shop-cart-item">
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
                                    <td class="kick-cart-quantity">
                                        <input type="number" value="1" >
                                    </td>
                                    <td class="kick-cart-total">
                                        <p>$290</p>
                                    </td>
                                </tr>
                                <tr class="shop-cart-item">
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
                                    <td class="kick-cart-quantity">
                                        <input type="number" value="1" >
                                    </td>
                                    <td class="kick-cart-total">
                                        <p>$230</p>
                                    </td>
                                </tr>
                                <tr class="shop-cart-item">
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
                <div class="col-md-6">
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
                    <div class="kick-payment">
                        <div class="payment">
                            <input type="checkbox">
                            <h4>Direct Bank Transfer</h4>
                            <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference.order won’t be shipped until the funds have cleared.</p>
                        </div>
                        <div class="payment">
                            <input type="checkbox">
                            <h4>Cheque Payment</h4>
                        </div>
                        <div class="payment">
                            <input type="checkbox">
                            <h4>Credit Card</h4>
                            <img src="resources/img/master-card.jpg" alt="credit card" />
                        </div>
                        <div class="payment">
                            <input type="checkbox">
                            <h4>Paypal</h4>
                            <img src="resources/img/paypal.jpg" alt="credit card" />
                        </div>
                    </div>
                    <div class="proceed-checkout">
                        <a href="#">place order</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Checkout Area End -->
    
    
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
			$(".breadcromb-box > h2").html("Checkout Page")
			$(".breadcromb-box ul li:last-child").html("Checkout Page")
		})
	</script>
</body>
</html>
