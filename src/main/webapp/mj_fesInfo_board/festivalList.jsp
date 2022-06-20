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


${fes.guName } 축제


		<c:forEach items="${fes }" var="fes">
			<div>
			${fes.title }
			</div>
		</c:forEach>
			<table>
				<tr>
					<td>축제명</td>
					<td>${fes.title }</td>
					<td><button onclick="location.href='festivalListCon'">자세히보기</button></td>
				</tr>
			</table>
</body>
</html>