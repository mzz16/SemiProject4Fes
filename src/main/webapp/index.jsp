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
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap"
	rel="stylesheet">
<!-- 날씨관련 -->
<script>
	//30초 마다 새로고침
	$(document).ready(function() {
		setTimeout(function() {
			window.location.reload(1);
		}, 30000);
	});
</script>
<script src="//code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>

	<!--상단 홈 메뉴 영 -->
	<div class="homeDiv">
		<div id="home">
			<a href="MainHC"><img id="logoimg" src="yj_img/logo_kari.png"></a>
		</div>
		<div id="menu">
			<a href="festivalHC">축제정보</a>
		</div>
		<div id="menu">
			<a href="searchMapHC">지도보기</a>
		</div>
		<div id="menu">
			<a href="BoardViewHC?cate=all">게시판</a>
		</div>
		<div id="menu">
			<a href="">출처정보</a>
		</div>
	</div>


	<!-- 기타 슬라이드 영역 -->
	<div class="ContentDiv">
		<div id="content01">
			<a href="https://korean.visitseoul.net/index"><img id="bannerImg"
				src="yj_img/visitSeoulNet.jpg"></a>
		</div>
		<div id="contentSlide"><jsp:include page="${contentPage}" /></div>
		<div id="content02">
			서울의 날씨<br>
			<iframe width="100%" height="245"
			src="https://forecast.io/embed/#lat=37.5049&lon=126.9804&name=서울&color=#F6A8A6&font=arial&units=si"
			frameborder="0"></iframe>
		</div>
	</div>


	<!-- 푸터 -->
	<div class="footerDiv">
		<div id="footer">
			그 외 정보
			<div id="footerDetail">
				<a href="https://kto.visitkorea.or.kr/kor.kto">한국관광공사</a><br> <a
					href="https://www.mcst.go.kr/kor/main.jsp">문화체육관광부</a> <a
					href="https://www.discoverseoulpass.com/app/main">Discover
					Seoul Pass</a>

			</div>
		</div>
		<div id="footer">
			유용한 연락처
			<div id="footerDetail">
				<br> 그 외 정보 작성란.
			</div>
		</div>
		<div id="footer">
			제작자정보
			<div id="footerDetail">
				<br> soldesk 802 <br> Semi-Project team4<br> with MZ.
			</div>
		</div>
	</div>


</body>
</html>