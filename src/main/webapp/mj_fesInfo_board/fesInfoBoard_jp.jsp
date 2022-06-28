<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="mj_fesInfo_board/css/fesInfoDeco.css">
</head>
<body>

	<div id="fesInfo">
		<div class="fesInfoTitle">
			${fes.title }
			<ul>
				<li>場所 : ${fes.place }</li>
				<li>期間 : ${fes.fdate }</li>
				<li>利用対象 : ${fes.useTarget }</li>
				<li>利用料金 : ${fes.useFee }</li>
				<li>${fes.program }</li>
			</ul>
			<button onclick="history.back(-1)"
				class="button button--winona button--border-thick button--round-l button--text-upper button--size-s button--text-thick"
				data-text="以前に" style="float: right;">
				<span>이전으로</span>
			</button>

		</div>

	</div>
	<div>
		<img class="fesInfoImg" src="${fes.mainImg }">
	</div>
	<div>
		<ul class="programLink">${fes.orgLink }</ul>
	</div>


	<!-- 날씨 위젯이랑 딱 달라붙는 이슈 해결을 위해 만든 빈 테이블 -->
	<table style="width: 100%; height: 20px;">
		<tr>
			<td></td>
		</tr>
	</table>
</body>
</html>