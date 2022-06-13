<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="festivalCon">
		<table border="1">
			<tr>
				<td colspan="9">서울시 축제 목록</td>
			</tr>
			<tr>
				<td>분류코드</td>
				<td>지역자치구</td>
				<td>축제타이틀</td>
				<td>일시</td>
				<td>장소</td>
				<td>홈페이지 주소</td>
				<td>사진</td>
				<td>연령제한</td>
				<td>가격</td>
			</tr>
			<c:forEach var="festival" items="${festivals }">
				<tr>
					<td>${festival.codeName }</td>
					<td>${festival.guName }</td>
					<td>${festival.title }</td>
					<td>${festival.date }</td>
					<td>${festival.place }</td>
					<td>${festival.orgLink }</td>
					<td>${festival.mainImg }</td>
					<td>${festival.useTarget }</td>
					<td>${festival.useFee }</td>
				</tr>
			</c:forEach>

		</table>
	</form>
</body>
</html>