<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../yj_css/viewBoardDetail.css">

<script type="text/javascript">
<!-- 게시글 삭제 -->
	function deleteBoard(n, pw) {
		let ok = confirm('정말로 게시물을 삭제할까요?');
		console.log(ok);
		if (ok) {
			let password = prompt('게시글 작성 시 입력한 비밀번호를 입력해주세요.')
			if (pw == password) {
				location.href = 'BoardDeleteC?number=' + n + '&&code=' + pw;
			} else if (pw != password) {
				alert('비밀번호가 일치하지 않습니다.');
			}
		}
	}
	
<!-- 게시글 수정 -->
	function updateBoard(no, pw){
		let ok = confirm('정말로 게시물을 수정할까요?');
		console.log(ok);
		if (ok) {
			let password = prompt('게시글 작성 시 입력한 비밀번호를 입력해주세요.')
			if (pw == password) {
				location.href = 'BoardUpdateC?number=' + no + '&&code=' + pw;
			} else if (pw != password) {
				alert('비밀번호가 일치하지 않습니다.');
			}
		}
	}
</script>



</head>
<body>

	<div class="viewBoardMain">
		<div id="viewBoardTitle">${board.title}</div>
		<div class="viewBoardDN">
			<div id="viewBoardDate">${board.date}</div>
			<div id="viewBoardName">작성자: ${board.name}</div>
		</div>
		
		
		<c:if test="${board.fName ne null }">
			<div id="viewBoardImg">
			<img style="max-width: 100%; height: auto;"
				src="fileFolder/${board.fName}">
			</div>
		</c:if>
		
		
		<div id="viewBoardTxt">${board.txt}</div>

		<div>
			<button onclick="location.href='BoardViewHC'">뒤로가기</button>
			<button onclick="updateBoard('${board.no}','${board.password}')">수정하기</button>
			<button onclick="deleteBoard('${board.no}','${board.password}')">삭제하기</button>
		</div>
	</div>
</body>
</html>