<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

	<style>
		.btntoTop{
			background-color: #1759c6;
			border: 2px solid #1759c6;
		}
		.btntoTop.active:hover {
		    background: #1759c6  none repeat scroll 0 0;
		    opacity: 0.8;
		    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=80)";
		}
	</style>
</head>
<body>
	
    <!-- Header Area Start -->
	<%@include file="../menu/adminheaderArea.jsp"%>
    <!-- Header Area End -->
    
    <!-- Breadcromb Area Start -->
    <%@include file="../menu/adminbreadcrombArea.jsp"%>
    <!-- Breadcromb Area End -->
    
    <!-- Gallery Masonary Page Start -->
    <section class="kick-gallery-masonary section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="big-isotope-project">
                                <div class="order-tickets">
			                        <table class="table table-striped table-responsive">
			                            <thead>
			                                <tr>
			                                	<th>No.</th>
												<th>Message</th>
												<th>Name</th>
			                                </tr>
			                            </thead>
			                            <tbody>
			                            	<c:forEach var="contact" items="${list }">
												<tr>
													<td>${contact.contact_no }</td>
													<td id = "${contact.contact_no }"  class="contact">${contact.contact_message }</td>
													<td>${contact.contact_name }</td>
												<tr class="textbox">
													<th>Answer</th>
															<td>
																<textarea style="width:600px;height: 150px;"></textarea>
															</td>
														<td>
															<input type="button"value="전송" class="contactsubmit">
														</td>
													</tr>
													
												
											</c:forEach>
			                            </tbody>
			                        </table>
			                    </div>
			                    
                    </div> 
                </div>
            </div>
            <!-- Paging 시작 -->
<%-- 			<div class="row">
				<div class="col-md-12">
					<div class="pagination-box">
						<ul class="pagination admin-pagination">
						<li><a href="adminManagePlayer?currentPage=${navi.currentPage - navi.pagePerGroup }&searchItem=${searchItem}&searchWord=${searchWord}"><i class="fa fa-angle-double-left"></i></a></li>
						<li><a href="adminManagePlayer?currentPage=${navi.currentPage - 1 }&searchItem=${searchItem}&searchWord=${searchWord}"><i class="fa fa-angle-left"></i></a></li>
							<c:forEach var="page" begin="${navi.startPageGroup }" end="${navi.endPageGroup }">
								<li><a href="adminManagePlayer?currentPage=${page }&searchItem=${searchItem}&searchWord=${searchWord}">${page }</a></li>
							</c:forEach>
						<li><a href="adminManagePlayer?currentPage=${navi.currentPage + 1 }&searchItem=${searchItem}&searchWord=${searchWord}"><i class="fa fa-angle-right"></i></a></li>
						<li><a href="adminManagePlayer?currentPage=${navi.currentPage + navi.pagePerGroup }&searchItem=${searchItem}&searchWord=${searchWord}"><i class="fa fa-angle-double-right"></i></a></li>
						</ul>
					</div>
				</div>
			</div> --%>
			<!-- Paging 끝 -->
			
			<%-- <!-- search 시작 -->
            <div class="pull-right">
				<form action="adminManagePlayer" method="get">
					<select name="searchItem" style="height:25px;">
						<option value="team_name" ${searchItem == 'team_name' ? 'selected' : '' }>소속팀명</option>
						<option value="name" ${searchItem == 'name' ? 'selected' : '' }>선수명</option>
						<option value="email" ${searchItem == 'email' ? 'selected' : '' }>이메일</option>
					</select>
					<input type="text" name="searchWord" value="${searchWord }">
					<input type="submit" value="검색">
				</form>
			</div>
			<!-- search 끝 --> --%>
            
            
        </div>
    </section>
    <!-- Gallery Masonary Page Start -->
    
    
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
			$(".admin-breadcromb-box > h2").html("Answer")
			$(".admin-breadcromb-box ul li:last-child").html("Answer")
			$(".kick-header-area a[href=adminManageContact]").parent().attr('class', 'admin-current-page-item')
			$(".textbox").hide();
			$(".contact").on('click',function(){
			 $(this).parent().next().toggle();
			})
			$(".contactsubmit").on('click',function(){
				
				var form = {
					no:$(this).parent().parent().prev().children().html(),
					content:$(this).parent().prev().children().val()
				}
				$.ajax({
					url:"mail",
					type:"POST",
					data:form,
					success:function(res){
						$(document.getElementById(res)).parent().next().remove()
						$(document.getElementById(res)).parent().remove()
					}
					
				})
			
				
			})
		
		})
	</script>
</body>
</html>
