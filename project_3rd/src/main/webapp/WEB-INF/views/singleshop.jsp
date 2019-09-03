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
    
    
    <!-- Top Products Area Start -->
    <section class="kick-single-products-page-area section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="single-product-page-left">
                        <div class="row">
                            <div class="col-md-3">
                                <div id="viewproduct" class="nav nav-tabs product-view bxslider" data-tabs="tabs">
                                    <div class="pro-view b-img active"><a href="#view1" data-toggle="tab"><img src="resources/img/min-pro-4.jpg" alt="product"></a></div>
                                    <div class="pro-view b-img"><a href="#view2" data-toggle="tab"><img src="resources/img/min-pro-1.jpg" alt="product"></a></div>
                                    <div class="pro-view b-img"><a href="#view3" data-toggle="tab"><img src="resources/img/min-pro-2.jpg" alt="product"></a></div>
                                    <div class="pro-view b-img"><a href="#view4" data-toggle="tab"><img src="resources/img/min-pro-3.jpg" alt="product"></a></div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div id="my-tab-content" class="tab-content mb-30">
                                    <div class="tab-pane b-img active" id="view1">
                                        <a href="#" ><img src="resources/img/product-3.jpg" alt="product"></a>
                                    </div>
                                    <div class="tab-pane b-img" id="view2">
                                        <a href="#" ><img src="resources/img/view-pro-1.jpg" alt="product"></a>
                                    </div>
                                    <div class="tab-pane b-img" id="view3">
                                        <a href="#"><img src="resources/img/view-pro-2.jpg" alt="product"></a>
                                    </div>
                                    <div class="tab-pane b-img" id="view4">
                                        <a href="#"><img src="resources/img/view-pro-3.jpg" alt="product"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="single-product-page-right">
                        <h3>Denim Sports shoes</h3>
                        <ul>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star-half-o"></i></li>
                        </ul>
                        <div class="product-single-page-widget">
                            <h4>$290</h4>
                        </div>
                        <div class="product-single-page-widget">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. luptate </p>
                        </div>
                        <div class="product-single-page-widget">
                            <h5>size</h5>
                            <ul class="size">
                                <li><a href="#">s</a></li>
                                <li><a href="#">m</a></li>
                                <li><a href="#">l</a></li>
                                <li><a href="#">xl</a></li>
                                <li><a href="#">xxl</a></li>
                            </ul>
                        </div>
                        <div class="product-single-page-widget">
                            <div class="product-single-page-widget-double">
                                <h5>color</h5>
                                <ul class="color">
                                    <li><a href="#" class="color_1">c</a></li>
                                    <li><a href="#" class="color_2">>c</a></li>
                                    <li><a href="#" class="color_3">>c</a></li>
                                    <li><a href="#" class="color_4">>c</a></li>
                                    <li><a href="#" class="color_5">>c</a></li>
                                </ul>
                            </div>
                            <div class="product-single-page-widget-double">
                                <h5>quantity</h5>
                                <input type="number" value="1" >
                            </div>
                        </div>
                        <div class="product-single-page-widget">
                            <a href="#" class="kick-btn">add to cart</a>
                            <div class="product-single-page-share-btn">
                                <a href="#"><i class="fa fa-heart"></i></a>
                                <a href="#"><i class="fa fa-share"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tabs shop-tab" data-example-id="togglable-tabs">
                        <ul class="nav nav-tabs" id="singleshop" role="tablist">
                            <li class="active" role="presentation"><a href="#sdescription" id="sall" aria-expanded="true" aria-controls="sall" role="tab" data-toggle="tab">description</a>
                            </li>
                            <li role="presentation"><a href="#shopreviews" id="srev" aria-controls="shopreviews" data-toggle="tab">reviews(2)</a></li>
                        </ul>
                        <div id="product_tab_content" class="tab-content">
                            <div id="sdescription" class="tab-pane fade in active" aria-labelledby="sall">
                                <div class="panel-body desc">
                                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years on purpose.</p>
                                    <p>Distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors when looking.</p>
                                </div>
                            </div>
                            <div id="shopreviews" class="tab-pane fade in" aria-labelledby="srev">
                                <div class="panel-body shop">
                                    <div class="kick-comment-list">
                                        <div class="single-comment-item">
                                            <div class="single-comment-box">
                                                <div class="main-comment">
                                                    <div class="author-image">
                                                        <img src="resources/img/author-7.jpg" alt="author" />
                                                    </div>
                                                    <div class="comment-text">
                                                        <div class="comment-info">
                                                            <h4>david kamal</h4>
                                                            <p>12 february 2015 At 11:30 pm</p>
                                                        </div>
                                                        <div class="comment-text-inner">
                                                            <p>Ne erat velit invidunt his. Eum in dicta veniam interesset, harum lupta definitionem. Vocibus suscipit prodesset vim ei, equidem perpetua eu per.</p>
                                                        </div>
                                                        <a href="#" class="reply">Reply</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-comment-box">
                                        <div class="main-comment">
                                            <div class="author-image">
                                                <img src="resources/img/author-6.jpg" alt="author" />
                                            </div>
                                            <div class="comment-text">
                                                <div class="comment-info">
                                                    <h4>sumaiya mim</h4>
                                                    <p>12 february 2015 At 11:30 pm</p>
                                                </div>
                                                <div class="comment-text-inner">
                                                    <p>Ne erat velit invidunt his. Eum in dicta veniam interesset, harum lupta definitionem. Vocibus suscipit prodesset vim ei, equidem perpetua eu per.</p>
                                                </div>
                                                <a href="#" class="reply">Reply</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="kick-related-products-area clearfix">
                    <div class="col-md-12">
                        <div class="kick-section-heading">
                            <h2>related <span>products</span></h2>
                            <div class="title-line-one"></div>
                            <div class="title-line-two"></div>
                        </div>
                    </div>
                    <div class="kick-related-products">
                        <div class="col-md-3 col-sm-6">
                            <div class="single-top-product">
                                <div class="product-image">
                                    <a href="#">
                                        <img src="resources/img/product-1.jpg" alt="product image" />
                                    </a>
                                    <div class="product-image-hover">
                                        <a href="#">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                        <a href="#">
                                            <i class="fa fa-shopping-cart"></i>
                                        </a>
                                        <a href="#">
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                    <div class="product-overlay"></div>
                                </div>
                                <div class="product-text">
                                    <h3><a href="single-shop.html">Shoe</a></h3>
                                    <ul>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star-half-o"></i></li>
                                    </ul>
                                    <h2>$290</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-top-product">
                                <div class="product-image">
                                    <a href="#">
                                        <img src="resources/img/product-2.jpg" alt="product image" />
                                    </a>
                                    <div class="product-image-hover">
                                        <a href="#">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                        <a href="#">
                                            <i class="fa fa-shopping-cart"></i>
                                        </a>
                                        <a href="#">
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                    <div class="product-overlay"></div>
                                </div>
                                <div class="product-text">
                                    <h3><a href="single-shop.html">jersey</a></h3>
                                    <ul>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star-half-o"></i></li>
                                    </ul>
                                    <h2>$390</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-top-product">
                                <div class="product-image">
                                    <a href="#">
                                        <img src="resources/img/product-3.jpg" alt="product image" />
                                    </a>
                                    <div class="product-image-hover">
                                        <a href="#">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                        <a href="#">
                                            <i class="fa fa-shopping-cart"></i>
                                        </a>
                                        <a href="#">
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                    <div class="product-overlay"></div>
                                </div>
                                <div class="product-text">
                                    <h3><a href="single-shop.html">jackets</a></h3>
                                    <ul>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star-half-o"></i></li>
                                    </ul>
                                    <h2>$480</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-top-product">
                                <div class="product-image">
                                    <a href="#">
                                        <img src="resources/img/product-1.jpg" alt="product image" />
                                    </a>
                                    <div class="product-image-hover">
                                        <a href="#">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                        <a href="#">
                                            <i class="fa fa-shopping-cart"></i>
                                        </a>
                                        <a href="#">
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                    <div class="product-overlay"></div>
                                </div>
                                <div class="product-text">
                                    <h3><a href="single-shop.html">shoe</a></h3>
                                    <ul>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star-half-o"></i></li>
                                    </ul>
                                    <h2>$290</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Top Products Area End -->
    
    
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
			$(".breadcromb-box ul li:last-child").html("Single Shop")
		})
	</script>
</body>
</html>
