<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>관리자 - 구단관리</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>team_name</td>
			<td>victory</td>
			<td>defeat</td>
			<td>draw</td>
			<td>rating</td>
			<td>established</td>
			<td>headcount</td>
			<td>team_comment</td>
			<td>region</td>
			<td>deleted_flag</td>
			<td>accpet_flag</td>
		</tr>
		<c:if test="${not empty list }">
			<c:forEach var="board" items="${list }">
				<tr>
					<td>${board.team_name }</td>
					<td>${board.victory }</td>
					<td>${board.defeat }</td>
					<td>${board.draw }</td>
					<td>${board.rating }</td>
					<td>${board.established }</td>
					<td>${board.headcount }</td>
					<td>${board.team_comment }</td>
					<td>${board.region }</td>
					<td>${board.deleted_flag }</td>
					<td>${board.accpet_flag }</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<ul>
		<li><a href="adminMain">뒤로</a></li>
	</ul>
</body>
</html>