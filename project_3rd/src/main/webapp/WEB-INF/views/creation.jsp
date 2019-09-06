<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="resources/js/jquery-3.4.1.min.js"></script>
<script>
	$(function() {

	})
	function categoryChange(e) {
		var seoul = [ "강동구","종로구", "중구", "용산구", "성동구", "광진구", "동대문구", "중랑구", "성북구", "강북구", "도봉구", "노원구", "은평구", "서대문구", "마포구", "양천구", "강서구", "구로구", "금천구", "영등포구", "동작구", "관악구", "서초구", "강남구", "송파구" ];
		var gyeonggi = [ "정현이형", "해주실거라", "믿습니다", "화이팅" ];
		var kangwon = [ "전국을", "다해야만", "하는건가", "불가능", "입니다" ];
		var target = document.getElementById("good");

		if (e.value == "서울시")
			var d = seoul;
		else if (e.value == "경기도")
			var d = gyeonggi;
		else if (e.value == "강원도")
			var d = kangwon;

		target.options.length = 0;

		for (x in d) {
			var opt = document.createElement("option");
			opt.value = d[x];
			opt.innerHTML = d[x];
			target.appendChild(opt);
		}
	}
</script>
<body>
	<h1>창단</h1>
	<form action="creation" method="POST">
		<table>
			<tr>
				<th colspan="2">구단 정보</th>
			</tr>
			<tr>
				<th>구단명 :</th>
				<td><input type="text" name="team_name"></td>
			</tr>
			<tr>
				<th>소개 :</th>
				<td><input type="text" name="team_comment"></td>
			</tr>
			<tr>
				<th>지역 :</th>
				<td><select onchange="categoryChange(this)" name="region">
						<option>지역을 선택해주세요.</option>
						<option value="서울시">서울시</option>
						<option value="경기도">경기도</option>
						<option value="강원도">강원도</option>
				</select> <select id="good" name="subregion">
						<option>---</option>
				</select></td>
			</tr>
			<tr>
				<th colspan="2">
					<button type="submit">창단</button>
					<button type="button">취소</button>

				</th>
			</tr>
		</table>
	</form>
</body>
</html>