<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="yj_css/index.css">
<link rel="stylesheet" href="yj_css/inputBoard.css">
<link rel="stylesheet" href="yj_css/viewBoard.css">
<link rel="stylesheet" href="yj_css/viewBoardDetail.css">
<link rel="stylesheet" href="mj_fesInfo_board/css/fesInfoDeco.css">

<!-- 폰트영역 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

</head>
<body>

	<!--상단 홈 메뉴 영 -->
	<div class="homeDiv">
		<div id="home"><a href="MainHC"><img id="logoimg" src="yj_img/logo_kari.png"></a></div>
		<div id="menu"><a href="festivalHC">축제정보</a></div>
		<div id="menu"><a href="searchMapHC">지도보기</a></div>
		<div id="menu"><a href="BoardViewHC?cate=all">게시판</a></div>
		<div id="menu"><a href="">출처정보</a></div>
	</div>
	
	
	<!-- 기타 슬라이드 영역 -->
	<div class="ContentDiv">
		<div id="content01">위젯에가려지는영역</div>
		<div id="contentSlide"><jsp:include page="${contentPage}"/></div>
		<div id="content02">위젯에가려지는영역</div>
	</div>
	
	
	<!-- 푸터 -->
	<div class="footerDiv">
		<div id="footer">그 외 정보
			<div id="footerDetail">
			
			
			</div>
		</div>
		<div id="footer">유용한 연락처
			<div id="footerDetail">
				그 외 정보 작성란.
			</div>
		</div>
		<div id="footer">제작자정보
			<div id="footerDetail">
				soldesk 802 <br>
				Semi-Project team4<br>
				with MZ.
			</div>
		</div>
	</div>


</body>
</html>