<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Title -->
<title>Sunday League</title>
<link rel='stylesheet' href='resources/css/fullcalendar.css' />





<!-- Favicon -->
<link rel="apple-touch-icon" sizes="144x144"
	href="resources/favicons/apple-touch-icon.png">

<link rel="icon" type="image/png" sizes="32x32"
	href="resources/favicons/favicon-32x32.png">

<link rel="icon" type="image/png" sizes="16x16"
	href="resources/favicons/favicon-16x16.png">

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
	<%@include file="menu/headerArea.jsp"%>
	<!-- Header Area End -->

	<!-- Breadcromb Area Start -->
	<%@include file="menu/breadcrombArea.jsp"%>
	
	<section class="kick-tickets-list-area section_100">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div id="calendar"></div>
				</div>
			</div>
		</div>
	</section>





 
<!-- Button trigger modal -->
<!--
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button>
 -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
		<form id="createEventForm" >
			<div class="modal-body">
	      		<table>
					<tr>
						<td>TITLE:&nbsp;</td>
						<td><input type="text" name="title" id="title"></td>
					</tr>
	        		<tr>
						<td>DESCRIPTION:&nbsp;</td>
	        			<td><textarea rows="3" cols="21" name="description" id="description"></textarea></td>
	        		</tr>
	        		<tr>
						<td>START:&nbsp;</td>
	        			<td><input type="text" name="start" id="start" readOnly="readOnly"></td>
	        		</tr>
	        		<tr>
						<td>END:&nbsp;</td>
	        			<td><input type="text" name="end" id="end" readOnly="readOnly"></td>
	        		</tr>
				</table>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary" id="submitButton">Save changes</button>
	      </div>
      </form>
    </div>
  </div>
</div>

	<input type="hidden" name="team_name" id="team_name" value="${sessionScope.team_name }">	
	<input type="hidden" name="authority" id="authority" value="${sessionScope.authority }">
	

	<%@include file="menu/footerArea.jsp"%>
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


	<!-- Custom JS -->
 
	<script src="resources/js/custom.js"></script>
	
	<script src='resources/js/moment.min.js'></script>
	
	<script src='resources/js/fullcalendar.js'></script>
 
	<script src='resources/js/custom/scheduleCalendar.js'></script>

	
	
	
	<!-- script -->
	<script>
		$(function() {
			$(".breadcromb-box > h2").html("Calendar")
			$(".breadcromb-box ul li:last-child").html("Calendar")
			
		})
	</script>
</body>

</html>