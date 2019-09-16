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
$(function(){
	if(ACCPET_FLAG==1){
		$('#n_approval').css("display","none");
		$('#y_approval').css("display","");
	}else{
		$('#n_approval').css("display","");
		$('#y_approval').css("display","none");
	}
})
</script>
<body>
<div id="n_approval" style="display:;">
창단을 요청하였습니다. 1~2일이 소요됩니다.
<br>
<a href="/main/">home으로</a>
</div>
<div id="y_approval" style="display:none">
<h1>구단 관리 메뉴</h1>
</div>
</body>
</html>