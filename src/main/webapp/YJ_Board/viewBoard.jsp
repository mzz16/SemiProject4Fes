<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>viewBoard</title>
<link rel="stylesheet" href="../yj_css/viewBoard.css">
</head>
<body>

	<div class="BoardInputDiv">
		<button onclick="location.href='BoardInputHC'">글쓰기</button>
	</div>

	<div class="ViewBoardMain">
	<div class="BoardCateDiv">
		<div id="boardCate1">전체 보기</div>
		<div id="boardCate2">자유게시판</div>
		<div id="boardCate3">후기게시판</div>
	</div>
	
	<div class="BoardSeeNoteDiv">
		<div id="boardSeeNote">
			<!-- 글 목록 출력 -->
			<table id="seeNoteTable" border="1">
				<tr>
					<td>카테고리</td>
					<td>글 제목</td>
					<td>작성일시</td>
				</tr>
			
				<!--배열에 넣은 것을 출력-->
				<c:forEach var="b" items="${boards}">
				<tr>
					<td>${b.cate }</td>
					<td onclick="location.href=">${b.title}</td>
					<td><fmt:formatDate value="${b.date}"/></td>
				</tr>
			</c:forEach>
			
			</table>
			
		</div>
	</div>
	
	</div>
	
</body>
</html>