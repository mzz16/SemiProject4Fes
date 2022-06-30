<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardInput</title>
<link href="https://fonts.googleapis.com/css?family=Song+Myung:400" rel="stylesheet">
<link rel="stylesheet" href="../yj_css/inputBoard.css">

</head>
<body>	

	<!-- 게시판 영역(글쓰기용)-->
		<form action="BoardUpdateC_jp?cate=all" name="makeBoard" method="post" enctype="multipart/form-data">

		<div class="mainBoard">
		
		<div><h3>글 수정하기</h3></div>
		
		<!--제목(게시판)-->
		<div id="BoardtitleDiv">
			<div>タイトル<input class="boardInput" name="title" value="${board.title }"></div>
		</div>
		
		<!--카테고리(게시판) -->
		<div id="BoardCateDiv">カテゴリー 
		<div>
			<select name="boardType">
				<option value="자유게시판">フリーボード</option>
				<option value="후기게시판">レビューボード</option>
			</select>
		</div>
		</div>
		
		<!-- 닉네임(게시판) -->
		<div id="BoardNameDiv">
			<div>お名前 <input class="boardInput" name="name" value="${board.name}"></div>
		</div>
		
		<!-- 내용(게시판) -->
		<div id="BoardTxtDiv" >
			<div><textarea id="BoardTxtArea" name="txt">${board.txt}</textarea></div>
		</div>
		
		<!-- 사진첨부(게시판) -->
		<div id="BoardImageDiv">
			<div>イメージ添付 <input name="fName" type="file"></div>
			<div> 更新がない場合、既存の画像が適用されます。</div>
		</div>	
		
		<!-- 비밀번호 입력 -->
		<div id="BoardPWDiv">
			<div>パスワード設定<input name="password" required="required"></div>
		</div>
		
		
		<div id="BoardInputBtnDiv">
			<div><button name="number" value="${board.no}">修正完了する</button></div>
		<br>
		</div>
	</div>
</form>

</body>
</html>