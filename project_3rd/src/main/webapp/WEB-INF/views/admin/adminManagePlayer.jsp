<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>관리자 - 선수관리</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>player_id</td>
			<td>team_name</td>
			<td>password</td>
			<td>email</td>
			<td>name</td>
			<td>position</td>
			<td>subposition</td>
			<td>height</td>
			<td>weight</td>
			<td>birth</td>
			<td>player_comment</td>
			<td>mainfoot</td>
			<td>withdrawal_flag</td>
			<td>authority</td>
		</tr>
		<c:if test="${not empty list }">
			<c:forEach var="board" items="${list }">
				<tr>
					<td>${board.player_id }</td>
					<td>${board.team_name }</td>
					<td>${board.password }</td>
					<td>${board.email }</td>
					<td>${board.name }</td>
					<td>${board.position }</td>
					<td>${board.subposition }</td>
					<td>${board.height }</td>
					<td>${board.weight }</td>
					<td>${board.birth }</td>
					<td>${board.player_comment }</td>
					<td>${board.mainfoot }</td>
					<td>${board.withdrawal_flag }</td>
					<td>${board.authority }</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>

	<ul>
		<li><a href="adminMain">뒤로</a></li>
	</ul>
</body>
</html>