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
			<div id="boardCate1"
				onclick="location.href='BoardCateViewC?cate=all'">전체 보기</div>
			<div id="boardCate2"
				onclick="location.href='BoardCateViewC?cate=free'">자유게시판</div>
			<div id="boardCate3"
				onclick="location.href='BoardCateViewC?cate=review'">후기게시판</div>
		</div>

		<div class="BoardSeeNoteDiv">
			<div id="boardSeeNote">
				<!-- 글 목록 출력 -->
				<table id="seeNoteTable">
					<tr id="seeNoteTopTr">
						<td>게시판 분류</td>
						<td>글 제목</td>
						<td>작성자</td>
						<td>작성일자</td>
					</tr>

					<!--배열에 넣은 것을 출력-->
					<c:forEach var="b" items="${boards}">
						<tr id="seeNoteTable_detail"
							onclick="location.href='BoardViewHC?number=${b.no}'">
							<td>${b.cate }</td>
							<td>${b.title}</td>
							<td>${b.name}</td>
							<td><fmt:formatDate value="${b.date}" /></td>
						</tr>
					</c:forEach>

				</table>

			</div>
		</div>

	</div>
	<!-- 페이징 관련 -->
	<div>
		<div>◀</div>
		<c:forEach var="i" begin="1" end="${lastpage}">
			<div
				onclick="location.href='BoardViewHC?vPage=${i}&&lastPage${lastpage}&&cate=${param.cate}'">
				<c:out value="${i}"/>
			</div>
		</c:forEach>
		<div>▶</div>
	</div>

</body>
</html>