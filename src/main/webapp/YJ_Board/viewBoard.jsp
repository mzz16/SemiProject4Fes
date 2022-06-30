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

	<div class="allBoardView">
	
	
	<div class="ViewBoardMain">
	
		<div class="BoardCateDiv">
			<div id="boardCate1"
				onclick="location.href='BoardCateViewC?cate=all'">▶ 전체 보기</div>
			<div id="boardCate2"
				onclick="location.href='BoardCateViewC?cate=free'">▶ 자유게시판</div>
			<div id="boardCate3"
				onclick="location.href='BoardCateViewC?cate=review'">▶ 후기게시판</div>
		</div>


		<div class="BoardSeeNoteDiv">
		
			<!-- 글쓰기버튼! -->
			<div class="BoardInputDiv">
				<button id="btn_write" onclick="location.href='BoardInputHC'">글쓰기</button>
			</div>
		
			<div id="boardSeeNote">
				<!-- 글 목록 출력 -->
				<table id="seeNoteTable" border="1">
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
			</div>   <!-- boardSeeNote닫음 -->

			<!-- 페이징 관련 -->
			<div	class="pagingDivMain">		
				<div id="pagingTriDiv" onclick="location.href='BoardViewHC?vPage=1&&lastPage${lastpage}&&cate=${param.cate}'"><a>◀ 처음으로</a></div>
				<br> 
				<c:forEach var="i" begin="1" end="${lastpage}">
					<div id="pagingNumDiv"  onclick="location.href='BoardViewHC?vPage=${i}&&lastPage${lastpage}&&cate=${param.cate}'">
						<a><c:out value="${i}" /></a>
					</div>
				</c:forEach>
				<div id="pagingTriDiv" onclick="location.href='BoardViewHC?vPage=${lastpage}&&lastPage${lastpage}&&cate=${param.cate}'"><a>마지막으로 ▶</a></div>
			</div>   <!-- pagingDivMain닫음 -->
		
		
	</div>   <!-- BoardSeeNoteDiv닫음 -->

</div>
</div>
</body>
</html>