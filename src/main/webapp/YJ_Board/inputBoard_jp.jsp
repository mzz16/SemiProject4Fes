<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardInput</title>
<link href="https://fonts.googleapis.com/css?family=Song+Myung:400"	rel="stylesheet">
<link rel="stylesheet" href="../yj_css/inputBoard.css">

</head>
<body>
	<!-- 게시판 영역(글쓰기용)-->
	<form action="BoardInputHC?cate=all" name="makeBoard" method="post" enctype="multipart/form-data">

		<div class="mainBoard">
			
			<div>
				<h3>ボードを作成する</h3>
			</div>

			<!--제목(게시판)-->
			<div id="BoardtitleDiv">
				<div>
					タイトル <input class="boardInput" name="title">
				</div>
			</div>

			<!--카테고리(게시판) -->
			<div id="BoardCateDiv">
				カテゴリー
				<div>
					<select name="boardType"  >
						<option value="자유게시판">フリーボード</option>
						<option value="후기게시판">レビューボード</option>
					</select>
				</div>
			</div>

			<!-- 닉네임(게시판) -->
			<div id="BoardNameDiv">
				<div>
					お名前 <input class="boardInput" name="name">
				</div>
			</div>

			<!-- 내용(게시판) -->
			<div id="BoardTxtDiv">
				<div>
					<textarea id="BoardTxtArea" name="txt">1000字内入力</textarea>
				</div>
			</div>

			<!-- 사진첨부(게시판) -->
			<div id="BoardImageDiv">
				<div>
					イメージ添付 <input name="fName" type="file">
				</div>
			</div>

			<!-- 비밀번호 입력 -->
			<div id="BoardPWDiv">
				<div>パスワード設定</div>
				<input name="password">
			</div>


		<div id="BoardInputBtnDiv">
			<div><button>作成完了する</button></div>
		</div>
		<br>
	
	</div>
	</form>
</body>
</html>