<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>祭りのソウル</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="yj_css/index.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<link rel="stylesheet" href="yj_css/index.css">
<link rel="stylesheet" href="yj_css/inputBoard.css">
<link rel="stylesheet" href="yj_css/viewBoard.css">
<link rel="stylesheet" href="yj_css/viewBoardDetail.css">
<link rel="stylesheet" href="yj_css/src.css">
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
<style type="text/css">
@media ( min-width : 1111px) {
	#menu>a {
		font-size: 23pt;
	}
}

@media ( max-width : 1110px ) {
	#menu>a {
		font-size: 18pt;
	}
}

@media ( max-width : 900px ) {
	#menu>a {
		font-size: 13pt;
	}
}

@media ( max-width : 800px ) {
	#menu>a {
		font-size: 8pt;
	}
}
</style>



</head>

<body class="color-change-4x">
<div class="header_index" >
<!-- Google 번역 -->
<div id="google_translate_element" class="hd_lang"></div>
<!-- 사이트 언어변경 -->
<div class="button_container">
  <button id="krBtn" onclick="location.href='MainHC'"><span>한국어 사이트로</span></button>
 </div>
</div>
<script>
	function googleTranslateElementInit() {
		new google.translate.TranslateElement({
			pageLanguage: 'ko',
			includedLanguages: 'ko,zh-CN,zh-TW,ja,vi,th,tl,km,my,mn,ru,en,fr,ar',
			layout: google.translate.TranslateElement.InlineLayout.SIMPLE,
			autoDisplay: false
		}, 'google_translate_element');
	}
</script>
	<script
		src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
	<!-- //Google 번역 -->

	<!--  -->
	<div class="homeDivlogo">
		<a href="MainHC_jp"><img id="logoimg" alt=""
			src="yj_img/logo_jp.png"></a>
	</div>
	<!--상단 홈 메뉴 영역 -->
	<div class="homeDiv" id="homeDivID">
		<div id="menu" style="width: 100%;">
			<a href="MainHC_jp">ホーム</a>
		</div>
		<div id="menu" style="width: 100%;">
			<a href="festivalHC_jp">祭り情報一覧</a>
		</div>
		<div id="menu" style="width: 100%;">
			<a href="searchMapHC_jp">マップ</a>
		</div>
		<div id="menu" style="width: 100%;">
			<a href="BoardViewHC_jp?cate=all">掲示板</a>
		</div>
		<div id="menu" style="width: 100%;">
			<a href="indexSrcC_jp">サイト情報</a>
		</div>
	</div>


	<!-- 기타 슬라이드 영역 -->
	<div class="ContentDiv">
		<div id="contentSlide">
			<jsp:include page="${contentPage}" />
		</div>
	</div>

	<!-- 날씨위젯-->
	<div class="weather_wi">
		<div class="tomorrow" data-location-id="065566" data-language="JA"
			data-unit-system="METRIC" data-skin="light"
			data-widget-type="upcoming"
			style="padding-bottom: 22px; position: relative;">
			<a href="https://www.tomorrow.io/weather/"
				rel="nofollow noopener noreferrer" target="_blank"
				style="position: absolute; bottom: 0; transform: translateX(-50%); left: 50%;">
				<img alt="Powered by Tomorrow.io"
				src="https://weather-website-client.tomorrow.io/img/powered-by-tomorrow.svg"
				width="140" height="15" />
			</a>
		</div>
	</div>
	<!-- 푸터 -->
	<div class="footerDiv">

		<div id="footer">
			役に立つサイト<br>
			<br>
			<div id="footerDetail">
				<a href="https://japanese.visitseoul.net/index">VisitSeoulNet</a><br>
				<a href="https://kto.visitkorea.or.kr/jpn.kto">韓国観光公社</a><br> <a
					href="https://www.mcst.go.kr/japanese/index.jsp">文化体育観光部</a><br>
				<a href="https://www.discoverseoulpass.com/app/main">Discover
					Seoul Pass</a><br> <a
					href="https://www.120dasan.or.kr/static/lang/lang3.html">タサンコールセンター１２０</a>
			</div>
		</div>
		<div id="footer">
			製作者<br>
			<br>
			<div id="footerDetail">
				soldesk 802 <br> Semi-Project team4 with MZ.
			</div>
		</div>
	</div>
	<!--  -->

</body>

<!-- 날씨관련 -->
<script>
        (function(d, s, id) {
            if (d.getElementById(id)) {
                if (window.__TOMORROW__) {
                    window.__TOMORROW__.renderWidget();
                }
                return;
            }
            const fjs = d.getElementsByTagName(s)[0];
            const js = d.createElement(s);
            js.id = id;
            js.src = "https://www.tomorrow.io/v1/widget/sdk/sdk.bundle.min.js";

            fjs.parentNode.insertBefore(js, fjs);
        })(document, 'script', 'tomorrow-sdk');
        </script>
<script type="text/javascript" src="jQuery/jQuery.js"></script>
</html>