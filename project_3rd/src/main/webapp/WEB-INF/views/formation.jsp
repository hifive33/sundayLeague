<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<style>
	#body {
		margin: 0 auto;
		background: #34495e;
		font-family: "Open Sans", sans-serif;
		cursor: default;
	}
	
	#header {
		width: 100%;
		color: #eee;
		border-bottom: 1px solid #eee;
		font-size: 32px;
		padding: 20px 70px;
	}
	
	#main {
		padding: 20px 30px;
	}
	
	.pitch {
		background: #26A65B;
		width: 300px;
		height: 400px;
		border-radius: 5px;
		padding: 20px;
		margin: 0 16px;
		display: inline-block;
	}
	
	.pitch h4 {
		position: absolute;
		color: #eee;
		text-align: center;
		margin: -40px 100px;
	}
	
	.pitch .container {
		margin: -20px -20px;
		width: 300px;
		height: 400px;
		border: 2px solid #eee;
	}
	
	.pitch .half {
		margin: 200px 0 0 -17px;
		width: 300px;
		border: 1px solid #eee;
	}
	
	.pitch .half:before {
		position: absolute;
		margin: -50px 100px;
		width: 100px;
		height: 100px;
		border-radius: 60px;
		border: 2px solid #eee;
		content: "";
	}
	
	.pitch .box1 {
		position: absolute;
		margin: -2px 75px;
		width: 120px;
		height: 60px;
		border: 2px solid #eee;
	}
	
	.pitch .pen1 {
		position: absolute;
		margin: -2px 21px;
		width: 75px;
		height: 35px;
		border: 2px solid #eee;
	}
	
	.pitch .box2 {
		position: absolute;
		margin: 135px 75px;
		width: 120px;
		height: 60px;
		border: 2px solid #eee;
	}
	
	.pitch .pen2 {
		position: absolute;
		margin: 23px 21px;
		width: 75px;
		height: 35px;
		border: 2px solid #eee;
	}
	
	.pos {
		position: absolute;
		width: 30px;
		height: 30px;
		border-radius: 20px;
		background: #BDC3C7;
		color: #34495e;
		text-align: center;
		line-height: 30px;
		font-size: 20px;
		font-weight: 100;
		transition: .3s linear all;
		z-index: 1;
	}
	
	.pos:hover {
		color: #BDC3C7;
		background: #34495e;
	}
	
	.p {
		width: 300px;
		height: 400px;
		background: rgba(0, 0, 0, .6);
		margin: 0px 25px;
		border-radius: 5px;
		padding: 20px;
		display: inline-block;
		color:white; 
	}

	
</style>
</head>
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>

<script>
$(function(){
	
if($("#authority").val()=='2' || $("#authority").val()=='3'){	
	$(".pitch h4").on("click", function(){
		
		$(".modal-header").html('<h5 class="modal-title" id="formationModalLabel">팀 포메이션 변경</h5>' +
		        				'<button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>');
		
		$(".modal-body").html("<ul>" +
							  " 	<li><input type='radio' name='formation' value='4-3-3' checked> 4-3-3</li>" +
							  " 	<li><input type='radio' name='formation' value='4-4-2'> 4-4-2</li>" +
							  " 	<li><input type='radio' name='formation' value='3-4-2-1'> 3-4-2-1</li>" +
							  "</ul> ");
		
		$("#formationModal").modal("show");
	});
	
	$(".pos").on("click", function(){
		$(".modal-header").html('<h5 class="modal-title" id="formationModalLabel">개별 포메이션 변경</h5>' +
								'<button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>');

		$(".modal-body").html("<ul>" +
							  "		<input type='hidden' name='player' value='" + $(this).text() + "'> " +	
							  " 	<c:if test='${not empty player }'> " + 
							  "			<c:forEach var='list' items='${player }' > " +
							  "				<li><input type='radio' name='player_id' value='${list.player_id}'> ${list.name}(${list.player_id})</li> " +
							  "			</c:forEach> " +
							  "		</c:if> " +
							  "</ul> ");
		
		
		
		$("#formationModal").modal("show");
	});
	
	$("#submitFormation").on("click", function(){
		alert("submitFormation");
		$("#formationModal").modal("hide");
		$("#formationModalForm").submit();
		
	});
}
	
	$(".pos").on("mouseover", function(){
		var number = $(this).text();
		var player = "player" + number;
		var team_name = "${team.team_name}";
		
		
		$.ajax({
			url: 'printFormation',
			type: 'GET',
			data: 'player=' + player + '&team_name=' + team_name,
			success: function(res) {
				if(res!=""){
					
					$(".p").html("<ul>" +
							 "	<li>아이디 :" + res.player_id + "</li>" +
							 "	<li>이름 :" + res.name + "</li>" +
							 "	<li>주 포지션 : " + res.position + "</li>" +
							 "	<li>부 포지션 : " + res.subposition + "</li>" +
							 "	<li>신장 : " + res.height + "cm</li>" +
							 "	<li>몸무게 : " + res.weight + "kg</li>" +
							 "</ul>");
				} else{
					$(".p").html("미설정");
				}
			}
		});
		
		
		
		
		
		
		
						
		
		
		
	});
	
	$(".pos").on("mouseout", function(){		
		$(".p").html("");
	});
});
	
</script>
<body>
	<div id="body">
		<div id="header">
			S<i class="fa fa-futbol-o" style="font-size: 22px;"></i>ccer Formations
		</div>
		<div id="main">
		<table>
			<tr><td>
			<div class="pitch">
				<h4>${formation.formation }</h4>
				<div class="container">
					<div class="box1">
						<div class="pen1">
							<div class="pos" style="margin: 15px 20px;">GK</div>
						</div>
					</div>
					<!-- 선수 배치하기 -->

					
					
					<c:if test="${formation.formation == '4-3-3' }">
						<div class="pos" style="margin: 65px 16px">1</div>
						<div class="pos" style="margin: 65px 88px">2</div>
						<div class="pos" style="margin: 65px 151px">3</div>	
						<div class="pos" style="margin: 65px 226px">4</div>
						
						<div class="pos" style="margin: 105px 57px">5</div>
						<div class="pos" style="margin: 105px 120px">6</div>
						<div class="pos" style="margin: 105px 187px">7</div>
	
						<div class="pos" style="margin: 145px 57px;">8</div>
						<div class="pos" style="margin: 145px 120px;">9</div>
						<div class="pos" style="margin: 145px 187px;">10</div>
					</c:if>
					<c:if test="${formation.formation == '4-4-2' }">
					
						<div class="pos" style="margin: 65px 16px">1</div>
						<div class="pos" style="margin: 65px 88px">2</div>
						<div class="pos" style="margin: 65px 151px">3</div>	
						<div class="pos" style="margin: 65px 226px">4</div>
						
						<div class="pos" style="margin: 105px 16px">5</div>
						<div class="pos" style="margin: 105px 88px">6</div>
						<div class="pos" style="margin: 105px 151px">7</div>
						<div class="pos" style="margin: 105px 226px;">8</div>
						
						<div class="pos" style="margin: 145px 88px;">9</div>
						<div class="pos" style="margin: 145px 153px;">10</div>
					</c:if> 
					<c:if test="${formation.formation == '3-4-2-1' }">
						<div class="pos" style="margin: 65px 57px">1</div>
						<div class="pos" style="margin: 65px 120px">2</div>
						<div class="pos" style="margin: 65px 187px">3</div>
		
						<div class="pos" style="margin: 105px 16px">4</div>
						<div class="pos" style="margin: 105px 89px">5</div>
						<div class="pos" style="margin: 105px 149px">6</div>
						<div class="pos" style="margin: 105px 221px">7</div>
		
						<div class="pos" style="margin: 145px 53px;">8</div>
						<div class="pos" style="margin: 145px 185px;">9</div>
		
						<div class="pos" style="margin: 170px 120px;">10</div>
					</c:if>
					<div class="half"></div>
					<div class="box2">
						<div class="pen2"></div>
					</div>
				</div>
			</div>
			</td>
			<td class="p">
			
			</td>
			</tr>
			</table>
		</div>
	</div>
	
	
	<!-- Modal -->
<div class="modal fade" id="formationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <!-- 제목 -->
      </div>
		<form action="formationModalForm" id="formationModalForm" method="POST">
			<div class="modal-body">
	      		<!-- 입력 -->
	      		
	      	</div>
	      <div class="modal-footer">
	        	<!-- 버튼 -->
	        	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" id="submitFormation">Save changes</button>
	      </div>
      </form>
    </div>
  </div>
</div>
<input type="hidden" id="authority" value=${sessionScope.authority }>
</body>
</html>