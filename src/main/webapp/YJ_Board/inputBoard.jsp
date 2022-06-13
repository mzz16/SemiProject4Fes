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
<form action="BoardHC" name="makeBoard" method="post" enctype="multipart/form-data">

	<div class="mainBoard">
		
		<div><h3>글쓰기</h3></div>
		
		<!--제목(게시판)-->
		<div id="BoardtitleDiv">
			<div>제목<input class="boardInput" name="title"></div>
		</div>
		
		<!--카테고리(게시판) -->
		<div id="BoardCateDiv">
			<select id="BoardCateDiv" name="boardType">
				<option value="allB">전체보기</option>
				<option value="freeB">자유게시판</option>
				<option value="reviewB">후기게시판</option>
			</select>
		</div>
		
		<!-- 닉네임(게시판) -->
		<div id="BoardNameDiv">
			<div>닉네임<input class="boardInput" name="name"></div>
		</div>
		
		<!-- 내용(게시판) -->
		<div id="BoardTxtDiv">
			<div><textarea id="BoardTxtArea" name="txt">내용입력</textarea></div>
		</div>
		
		<!-- 사진첨부(게시판) -->
		<div id="BoardImageDiv">
			<div>사진첨부<input name="fName" type="file"></div>
		</div>	
		<div id="BoardInputBtnDiv">
			<div><button>작성완료</button></div>
		</div>
	</div>
</form>











</body>
</html>