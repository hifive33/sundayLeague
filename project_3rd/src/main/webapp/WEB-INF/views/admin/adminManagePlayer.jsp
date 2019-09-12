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
												<th>player_id</th>
												<th>name</th>
												<th>team_name</th>
												<th>email</th>
												<!-- <th>position</th>
												<th>password</th>
												<th>subposition</th>
												<th>height</th>
												<th>weight</th>
												<th>birth date</th>
												<th>player_comment</th>
												<th>mainfoot</th> -->
												<th>withdrawal</th>
												<th>authority</th>
			                                </tr>
			                            </thead>
			                            <tbody>
			                            	<c:forEach var="board" items="${list }">
												<tr>
													<td>${board.player_id }</td>
													<td>${board.name }</td>
													<td>${board.team_name }</td>
													<td>${board.email }</td>
													<%-- <td>${board.position }</td>
													<td>${board.password }</td>
													<td>${board.subposition }</td>
													<td>${board.height }</td>
													<td>${board.weight }</td>
													<td>${board.birth }</td>
													<td>${board.player_comment }</td>
													<td>${board.mainfoot }</td> --%>
													<td>${board.withdrawal_flag == 1 ? '회원' : '탈퇴'}</td>
													<td>${board.authority == 2 ? '감독' : board.authority == 1 ? '코치' : '일반' }</td>
												</tr>
											</c:forEach>
			                            </tbody>
			                        </table>
			                    </div>
                    </div> 
                </div>
            </div>
            <!-- Paging 시작 -->
			<div class="row">
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
			</div>
			<!-- Paging 끝 -->
			
			<!-- search 시작 -->
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
			<!-- search 끝 -->
            
            
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
			$(".admin-breadcromb-box > h2").html("Manage Player")
			$(".admin-breadcromb-box ul li:last-child").html("Manage Player")
			$(".kick-header-area a[href=adminManagePlayer]").parent().attr('class', 'admin-current-page-item')
		})
	</script>
</body>
</html>
