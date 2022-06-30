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
		let ok = confirm('本当に削除しますか？');
		console.log(ok);
		if (ok) {
			let password = prompt('ボードを作成する時に設定したパスワードを入力して下さい。')
			if (pw == password) {
				location.href = 'BoardDeleteC_jp?number=' + n + '&&code=' + pw + '&&cate=all';
			} else if (pw != password) {
				alert('パスワードが一致していません。');
			}
		}
	}
	
<!-- 게시글 수정 -->
	function updateBoard(no, pw){
		let ok = confirm('本当に修正しますか？');
		console.log(ok);
		if (ok) {
			let password = prompt('ボードを作成する時に設定したパスワードを入力して下さい。')
			if (pw == password) {
				location.href = 'BoardUpdateC_jp?number=' + no + '&&code=' + pw;
			} else if (pw != password) {
				alert('パスワードが一致していません。');
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
		
		<div id="viewBoardTxt">
		<div id="viewBoardImgDiv">
		<c:if test="${board.fName ne null}">
			<div id="viewBoardImg">
			<img style="max-width: 100%; height: auto;"
				src="fileFolder/${board.fName}">
			</div>
		</c:if>
		</div>
		<div>${board.txt}</div>
		</div>
		
		
		
		<br>
		<div>
			<button onclick="history.back();">目録へ</button>
			<button onclick="updateBoard('${board.no}','${board.password}')">修正する</button>
			<button onclick="deleteBoard('${board.no}','${board.password}')">削除する</button>
		</div>
		<br>
	</div>
</body>
</html>