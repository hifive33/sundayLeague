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
    
    <!-- Login Area Start -->
    <section class="kick-login-page-area section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="login-page-box">
                        <div class="login-page-heading">
                            <i class="fa fa-lock"></i>
                            <h3>Create Team</h3>
                        </div>
                        <form action=creation method="post">
                            <div class="account-form-group">
                                <input type="text" placeholder="team_name" name=team_name >
                                <i class="fa fa-user-o"></i>
                            </div>
                            <div class="account-form-group">
                            	<select name="region">
                            		<option>지역을 선택해주세요.</option>
									<option value="서울">서울</option>
									<option value="경기">경기</option>
									<option value="강원">강원</option>
									<option value="인천">인천</option>
									<option value="대전">대전</option>
									<option value="광주">광주</option>
									<option value="대구">대구</option>
									<option value="울산">울산</option>
									<option value="부산">부산</option>
									<option value="충북">충북</option>
									<option value="충남">충남</option>
									<option value="전북">전북</option>
									<option value="전남">전남</option>
									<option value="경북">경북</option>
									<option value="경남">경남</option>
									<option value="제주">제주</option>
                            	</select>
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group">
                            	<select id="subregion" name="subregion">
                            		<option>---</option>
                            	</select>
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group" style="height: 90px">
                            	<textarea placeholder="team_comment" name="team_comment"></textarea>
                                <i class="fa"></i>
                            </div>
                            <div class="account-form-group" style="height: 135px">
	                            <img id="mypic" src="resources/img/emblem-null.png" style="height:135px" />
                                <i class="fa"></i>
							</div>
							<input id="imgPreview" type="file" value="사진첨부" accept="image/jpg, image/jpeg, image/png, image/gif" />
                            <div class="submit-login">
								s<button type="submit" >창단</button>
                            </div>
                        </form>
                        <div class="login-sign-up">
                            <a href="login.html">취소</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Login Area End -->
    
    
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
			$(".breadcromb-box > h2").html("Create Team")
			$(".breadcromb-box ul li:last-child").html("Create Team")
			
			$(".account-form-group > select").on('change', function(){
				if ($(this).val() != $(this).children()[0].innerHTML){
					$(this).attr('style','color:black;')
						   .next().addClass("fa-check");
				}else {
					$(this).removeAttr('style')
						   .next().removeClass("fa-check");
				}
			})
			
			$(".account-form-group > textarea").on('change', function(){
				// validation 추가
				if ($(this).val() != ""){
					$(this).next().addClass("fa-check");
				}else {
					$(this).next().removeClass("fa-check");
				}
			})
			
		    $(".account-form-group > input[name=team_name]").on('change', function(){
				// validation 추가
				if ($(this).val() != ""){
					$(this).next().removeClass("fa-user-o");
					$(this).next().addClass("fa-check");
				}else {
					$(this).next().removeClass("fa-check");
					$(this).next().addClass("fa-user-o");
				}
		    })
		    
		    $(".account-form-group > select[name=region]").on('change', function(){
				var none = [ "---" ]
				var seoul = [ "---", "강동구","종로구", "중구", "용산구", "성동구", "광진구", "동대문구", "중랑구", "성북구", "강북구", "도봉구", "노원구", "은평구", "서대문구", "마포구", "양천구", "강서구", "구로구", "금천구", "영등포구", "동작구", "관악구", "서초구", "강남구", "송파구" ];
				var gyeonggi = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
				var kangwon = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
				var incheon = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
				var daejeon = ["대덕구","동구","서구","유성구","중구"];
				var gwangju =  ["광산구","남구","동구","북구","서구"];
				var daegu = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
				var ulsan = ["남구","동구","북구","중구","울주군"];
				var busan = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
				var chbuk =["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
				var chnam =["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
				var junbuk = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
				var junnam = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
				var gyungbuk = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
				var gyungnam = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
				var jeju = ["서귀포시","제주시","남제주군","북제주군"];
				var target = document.getElementById("subregion");
		
				switch($(this).val()){
				case "지역을 선택해주세요.":
					var d = none;
					$(target).removeAttr('style')
							 .next().removeClass("fa-check");
					break;
				case "서울":
					var d = seoul;
					break;
				case "경기":
					var d = gyeonggi;
					break;
				case "강원":
					var d = kangwon;
					break;
				case "인천":
					var d = incheon;
					break;
				case "대전":
					var d = daejeon;
					break;
				case "광주":
					var d = gwangju;
					break;
				case "대구":
					var d = daegu;
					break;
				case "울산":
					var d = ulsan;
					break;
				case "부산":
					var d = busan;
					break;
				case "충북":
					var d = chbuk;
					break;
				case "충남":
					var d = chnam;
					break;
				case "전북":
					var d = junbuk;
					break;
				case "전남":
					var d = junnam;
					break;
				case "경북":
					var d = gyungbuk;
					break;
				case "경남":
					var d = gyungnam;
					break;
				case "제주":
					var d = jeju;
					break;
				
					
				}
		
				target.options.length = 0;
		
				for (x in d) {
					var opt = document.createElement("option");
					opt.value = d[x];
					opt.innerHTML = d[x];
					target.appendChild(opt);
				}
			})
		})
		
		function categoryChange(e) {
			var none = [ "---" ]
			var seoul = [ "---", "강동구","종로구", "중구", "용산구", "성동구", "광진구", "동대문구", "중랑구", "성북구", "강북구", "도봉구", "노원구", "은평구", "서대문구", "마포구", "양천구", "강서구", "구로구", "금천구", "영등포구", "동작구", "관악구", "서초구", "강남구", "송파구" ];
			var gyeonggi = [ "---", "정현이형", "해주실거라", "믿습니다", "화이팅" ];
			var kangwon = [ "---", "전국을", "다해야만", "하는건가", "불가능", "입니다" ];
			var target = document.getElementById("subregion");
	
			switch(e.value){
			case "지역을 선택해주세요.":
				var d = none;
				break;
			case "서울시2":
				var d = seoul;
				break;
			case "경기도":
				var d = gyeonggi;
				break;
			case "강원도":
				var d = kangwon;
				break;
			}
	
			target.options.length = 0;
	
			for (x in d) {
				var opt = document.createElement("option");
				opt.value = d[x];
				opt.innerHTML = d[x];
				target.appendChild(opt);
			}
		}
		
		$("#imgPreview").on('change', function(){
			previewImage(this); // 미리보기 함수
		})
		function previewImage(input){
			// 이미지를 선택하면
			if(input.files && input.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					$("#mypic").attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>
	
</body>
</html>