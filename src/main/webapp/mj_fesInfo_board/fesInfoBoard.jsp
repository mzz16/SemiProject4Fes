<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/fesInfoDeco.css">
</head>
<body>

	<div id="fesInfo">
		<div class="fesInfoTitle">
			축제타이틀 ${festival.title }
			<ul>
				<li>장소 ${festival.place }</li>
				<li>일시 ${festival.fdate }</li>
				<li>프로그램 소개 ${festival.program }</li>
			</ul>
			<ul class="programLink">프로그램 링크 ${festival.orglink }</ul>

			<button onclick="history.back(-1)"
				class="button button--winona button--border-thick button--round-l button--text-upper button--size-s button--text-thick"
				data-text="이전으로">
				<span>이전으로</span>
			</button>
		</div>

	</div>
	<div class="fesInfoImg">메인 이미지</div>

</body>
</html>