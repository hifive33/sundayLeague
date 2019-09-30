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
    
    <!-- Gallery Masonary Page Start -->
    <section class="kick-gallery-masonary section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="big-isotope-project">
                        <div class="projectFilter project-btn-const">
                            <a href="#" data-filter="*" class="current">All items</a>
                        	<c:forEach var="list" items="${galleryMap}">
	                            <a href="#" data-filter=".${list.key}">${list.key}</a>
                        	</c:forEach>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="clearfix projectContainer projectContainer3column">
                                	<c:forEach var="list" items="${galleryMap}">
                                		<c:forEach var="item" items="${list.value}">
											<div class="element-item ${list.key}">
		                                        <div class="single-match-gallery">
		                                           <a href="gallerys/${item}" class="gallery-lightbox">
		                                                <div class="project-img">
		                                                    <img src="gallerys/${item}" alt="single project" />
		                                                    <div class="single-pro-overlay">
		                                                        <i class="fa fa-search-plus"></i>
		                                                    </div>
		                                                </div>
		                                            </a>
		                                        </div>
		                                    </div>
                                    	</c:forEach>
                                	</c:forEach>
                                    <!-- <div class="element-item  construction">
                                        <div class="single-match-gallery">
                                           <a href="resources/img/gallery-1.jpg" class="gallery-lightbox">
                                                <div class="project-img">
                                                    <img src="resources/img/gallery-1.jpg" alt="single project" />
                                                    <div class="single-pro-overlay">
                                                        <i class="fa fa-search-plus"></i>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="element-item renovation plumbing">
                                        <div class="single-match-gallery">
                                           <a href="resources/img/gallery-2.jpg" class="gallery-lightbox">
                                                <div class="project-img">
                                                    <img src="resources/img/gallery-2.jpg" alt="single project" />
                                                    <div class="single-pro-overlay">
                                                        <i class="fa fa-search-plus"></i>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>    
                                    <div class="element-item flooring">
                                        <div class="single-match-gallery">
                                           <a href="resources/img/gallery-1.jpg" class="gallery-lightbox">
                                                <div class="project-img">
                                                    <img src="resources/img/gallery-1.jpg" alt="single project" />
                                                    <div class="single-pro-overlay">
                                                        <i class="fa fa-search-plus"></i>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="element-item plumbing ">
                                          <div class="single-match-gallery">
                                           <a href="resources/img/gallery-3.jpg" class="gallery-lightbox">
                                                <div class="project-img">
                                                    <img src="resources/img/gallery-3.jpg" alt="single project" />
                                                    <div class="single-pro-overlay">
                                                        <i class="fa fa-search-plus"></i>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="element-item construction plumbing">
                                        <div class="single-match-gallery">
                                           <a href="resources/img/gallery-4.jpg" class="gallery-lightbox">
                                                <div class="project-img">
                                                    <img src="resources/img/gallery-4.jpg" alt="single project" />
                                                    <div class="single-pro-overlay">
                                                        <i class="fa fa-search-plus"></i>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="element-item flooring">
                                        <div class="single-match-gallery">
                                           <a href="resources/img/gallery-5.jpg" class="gallery-lightbox">
                                                <div class="project-img">
                                                    <img src="resources/img/gallery-5.jpg" alt="single project" />
                                                    <div class="single-pro-overlay">
                                                        <i class="fa fa-search-plus"></i>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="element-item  construction">
                                        <div class="single-match-gallery">
                                           <a href="resources/img/gallery-6.jpg" class="gallery-lightbox">
                                                <div class="project-img">
                                                    <img src="resources/img/gallery-6.jpg" alt="single project" />
                                                    <div class="single-pro-overlay">
                                                        <i class="fa fa-search-plus"></i>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="element-item renovation plumbing">
                                        <div class="single-match-gallery">
                                           <a href="resources/img/gallery-3.jpg" class="gallery-lightbox">
                                                <div class="project-img">
                                                    <img src="resources/img/gallery-3.jpg" alt="single project" />
                                                    <div class="single-pro-overlay">
                                                        <i class="fa fa-search-plus"></i>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>    
                                    <div class="element-item flooring">
                                        <div class="single-match-gallery">
                                           <a href="resources/img/gallery-1.jpg" class="gallery-lightbox">
                                                <div class="project-img">
                                                    <img src="resources/img/gallery-1.jpg" alt="single project" />
                                                    <div class="single-pro-overlay">
                                                        <i class="fa fa-search-plus"></i>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="pagination-box">
                        <ul class="pagination">
                            <li><a href="#"><i class="fa fa-angle-double-left"></i></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li class="active"><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Gallery Masonary Page Start -->
    
    
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
			$(".breadcromb-box > h2").html("Gallery")
			$(".breadcromb-box ul li:last-child").html("Gallery")
			$(".kick-header-area a[href=gallery]").parent().attr('class', 'current-page-item')
		})
	</script>
</body>
</html>
