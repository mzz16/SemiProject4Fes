<%@page import="com.mj.festival.festival"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Scattered Polaroids Gallery</title>
<meta name="description"
	content="Scattered Polaroids Gallery: A flat-style take on a Polaroid gallery" />
<meta name="keywords"
	content="scattered polaroids, image gallery, javascript, random rotation, 3d, backface, flat design" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="mj_fesInfo_board/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="mj_fesInfo_board/css/demo.css" />
<link rel="stylesheet" type="text/css" href="mj_fesInfo_board/css/component.css" />
<script src="mj_fesInfo_board/js/modernizr.min.js"></script>

</head>
<body>

	<table border="1">
		<tr>
			<td>주소</td>
			<td><select name="festival">
			
			
			<!-- 배열로 잡으면 작동이 안됨. -->
				
				
				<option value="kangnam">강남구</option>
					<!-- <option value="kangdong">강동구</option>
					<option value="kangbook">강북구</option>
					<option value="kwanak">관악구</option>
					<option value="kwangjin">광진구</option>
					<option value="kumcheon">금천구</option>
					<option value="nowon">노원구</option>
					<option value="dobong">도봉구</option>
					<option value="dongdaemoon">동대문구</option>
					<option value="mapo">마포구</option>
					<option value="seocho">서초구</option>
					<option value="seongdong">성동구</option>
					<option value="seongbook">성북구</option>
					<option value="songpa">송파구</option>
					<option value="yangcheon">양천구</option>
					<option value="yongsan">용산구</option>
					<option value="eunpyong">은평구</option>
					<option value="jongro">종로구</option>
					<option value="joonggu">중구</option>
					<option value="joonranggu">중랑구</option> -->
			</select></td>
		</tr>
	</table>

	<div class="container">
		<!-- Top Navigation -->
		<section id="photostack-1" class="photostack photostack-start">
			<div>
			<c:if test="${guName == 'kangnam' }">
			<c:forEach var="fe" items="fes">
				<figure>
					<a href="festivalInfoCon" class="photostack-img"><img
						src="${fe.mainImg}" alt="img01" /></a>
					<figcaption>
						<h2 class="photostack-title">${fe.title } </h2>
					</figcaption>
				</figure>
			</c:forEach>
			</c:if>
			
			
				<figure data-dummy>
					<a href="#" class="photostack-img"><img src="img/7.jpg"
						alt="img07" /></a>
					<figcaption>
						<h2 class="photostack-title">Lovely Green</h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img"><img src="img/8.jpg"
						alt="img08" /></a>
					<figcaption>
						<h2 class="photostack-title">Wonderful</h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img"><img src="img/9.jpg"
						alt="img09" /></a>
					<figcaption>
						<h2 class="photostack-title">Love Addict</h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img"><img src="img/10.jpg"
						alt="img10" /></a>
					<figcaption>
						<h2 class="photostack-title">Friendship</h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img"><img src="img/11.jpg"
						alt="img11" /></a>
					<figcaption>
						<h2 class="photostack-title">White Nights</h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img"><img src="img/12.jpg"
						alt="img12" /></a>
					<figcaption>
						<h2 class="photostack-title">Serendipity</h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img"><img src="img/13.jpg"
						alt="img13" /></a>
					<figcaption>
						<h2 class="photostack-title">Pure Soul</h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img"><img src="img/14.jpg"
						alt="img14" /></a>
					<figcaption>
						<h2 class="photostack-title">Winds of Peace</h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img"><img src="img/15.jpg"
						alt="img15" /></a>
					<figcaption>
						<h2 class="photostack-title">Shades of blue</h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img"><img src="img/16.jpg"
						alt="img16" /></a>
					<figcaption>
						<h2 class="photostack-title">Lightness</h2>
					</figcaption>
				</figure>
				
			</div>
		</section>




	</div>
	<!-- /container -->
	<script src="mj_fesInfo_board/js/classie.js"></script>
	<script src="mj_fesInfo_board/js/photostack.js"></script>
	<script>
		// [].slice.call( document.querySelectorAll( '.photostack' ) ).forEach( function( el ) { new Photostack( el ); } );

		new Photostack(document.getElementById('photostack-1'), {
			callback : function(item) {
				//console.log(item)
			}
		});
		new Photostack(document.getElementById('photostack-2'), {
			callback : function(item) {
				//console.log(item)
			}
		});
		new Photostack(document.getElementById('photostack-3'), {
			callback : function(item) {
				//console.log(item)
			}
		});
	</script>
</body>
</html>