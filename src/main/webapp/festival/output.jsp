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
		<button>DB에 저장</button>
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
					<td><input type="hidden" name="CODENAME" value="${festival.codeName }">${festival.codeName }</td>
					<td><input type="hidden" name="GUNAME" value="${festival.guName }">${festival.guName} </td>
					<td><input type="hidden" name="TITLE" value="${festival.title }">${festival.title }</td>
					<td><input type="hidden" name="DATE" value="${festival.date }">${festival.date }</td>
					<td><input type="hidden" name="PLACE" value="${festival.place }">${festival.place }</td>
					<td><input type="hidden" name="ORG_LINK" value="${festival.orgLink }">${festival.orgLink }</td>
					<td><input type="hidden" name="MAIN_IMG" value="${festival.mainImg }">${festival.mainImg }</td>
					<td><input type="hidden" name="USE_TRGT" value="${festival.useTarget }">${festival.useTarget}</td>
					<td><input type="hidden" name="USE_FEE" value="${festival.useFee }">${festival.useFee }</td>
				</tr>
			</c:forEach>

		</table>
	</form>
</body>
</html>