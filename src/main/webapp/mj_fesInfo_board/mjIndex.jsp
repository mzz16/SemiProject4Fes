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
<link rel="stylesheet" type="text/css"
	href="mj_fesInfo_board/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="mj_fesInfo_board/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="mj_fesInfo_board/css/component.css" />
<script src="mj_fesInfo_board/js/modernizr.min.js"></script>
<script type="text/javascript" src="mj_fesInfo_board/js/jquery.js"></script>
<script type="text/javascript">
	function setImgFromAddr() {
		var langSelect = document.getElementById("selectbox");

		// select element에서 선택된 option의 value가 저장된다.
		var selectValue = langSelect.options[langSelect.selectedIndex].value;

		// select element에서 선택된 option의 text가 저장된다.
		var selectText = langSelect.options[langSelect.selectedIndex].text;
		selectText = encodeURI(selectText);
		// ajax 통신
		$.ajax({
			type : "GET", // HTTP method type(GET, POST) 형식이다.
			dataType : "text",
			url : "mj_fesInfo_board/imgFromAddr.jsp", // 컨트롤러에서 대기중인 URL 주소이다.
			data : {
				guname : selectText
			},// Json 형식의 데이터이다.
			success : function(data) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
				const obj = JSON.parse(data);
				let stackpk = $(".phtostack-pk");
				let stackimg = $(".photostack-img").children();
				let stacktitle = $(".photostack-title");

				// --------- 더미
				let stackimg2 = $(".coverImg").children();
				let stacktitle2 = $(".coverTitle");
				let objLength = obj.result.length;
				console.log(objLength);
				$("#numberOfFes").text(objLength);

				let pk;
				let stitle;
				let mimg;
				let j = 0;
				//				for (var i = obj.result.length-1; i >= 0; i--) {
				for (var i = 0; i < 16; i++) {

					//console.log(obj.result[i]);

					j = i % objLength;
					ppk = obj.result[j].m_no;
					stitle = obj.result[j].title;
					mimg = obj.result[j].mainImg;

					let pkpk = stackpk[i];
					let m_no = "festivalInfoCon?m_no=" + ppk;

					$(pkpk).attr("href", m_no);
					let simg = stackimg[i];
					$(simg).attr("src", mimg);
					let settitle = stacktitle[i];
					$(settitle).text(stitle);

					/*
					// 더미 성공
					let simg2 = stackimg2[i];
					$(simg2).attr("src", mimg);
					let settitle2 = stacktitle2[i];
					$(settitle).text(stitle);
					 */

				}

			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
				alert("통신 실패.")
				console.log(textStatus);
				console.log(errorThrown);
			}
		});

	}
</script>
<script type="text/javascript">
	/* function setSelectedFestival() {
		const div = document.getElementById('my_div');

		if (div.style.display == 'none') {
			div.style.display = 'block';
		} else {
			div.style.display = 'hidden';
		}
	} */

	/* $(document).ready(function(){
		$("select_btn").con('click', function(){
			setSelectedFestival();
		});	
	});
	
	
	function setSelectedFestival() {
		var langSelect = document.getElementById("selectbox");
		
		
		
		

		//		div.innerHTML = document.getElementById('my_div').innerHTML;
		//		document.getElementById('my_div').appendChild(div);

		// select element에서 선택된 option의 value가 저장된다.
		var selectValue = langSelect.options[langSelect.selectedIndex].value;

		// select element에서 선택된 option의 text가 저장된다.
		var selectText = langSelect.options[langSelect.selectedIndex].text;
		selectText = encodeURI(selectText);
		// ajax 통신
		$.ajax({
			type : "GET", // HTTP method type(GET, POST) 형식이다.
			dataType : "text",
			url : "mj_fesInfo_board/selectedFestival.jsp", // 컨트롤러에서 대기중인 URL 주소이다.
			data : {
				guname : selectText
			},// Json 형식의 데이터이다.
			success : function(data) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
				
				if($("#selectbox").value == "selecttt"){
					alert("값을 선택해주세요.");
					return;
				}
			
				const obj = JSON.parse(data);
				let stackpk = $(".phtostack-pk");
				let stackimg = $(".photostack-img").children();
				let stacktitle = $(".photostack-title");
				
				
				let pk;
				let stitle;
				let mimg;
				let j = 0;

				//for (var i = 0; i < obj.result.length; i++) {
					//var newDiv = document.createElement('div');
					
					//newDiv = obj.result.length[i];
					
					
					for (var i = 0; i < obj.result.length; i++) {
						//console.log(obj.result[i]);

						j = i % obj.result.length;
						ppk = obj.result[j].m_no;
						
						
						stitle = obj.result[j].title;
						mimg = obj.result[j].mainImg;

						let pkpk = stackpk[i];
						let m_no = "festivalInfoCon?m_no=" + ppk;
						
						var tag = "<div>"
									"<div>" + stitle + "<div>" +
								  	"<div>" + mimg + "<div>" +
								  "<div>"

						$(pkpk).attr("href", m_no);
						let simg = stackimg[i];
						$(simg).attr("src", mimg);
						let settitle = stacktitle[i];
						$(settitle).text(stitle);
						$('#my_div_festival').append(tag);
						/*
						// 더미 성공
						let simg2 = stackimg2[i];
						$(simg2).attr("src", mimg);
						let settitle2 = stacktitle2[i];
						$(settitle).text(stitle);
	 */

	/*	}

	//}

	},
	error : function(XMLHttpRequest, textStatus, errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
	alert("통신 실패.")
	console.log(textStatus);
	console.log(errorThrown);
	}
	});

	}
	 */

	$(document).ready(function() {
		$("#fesList").on("click", function() {
			//select라는 태그 이름을 이용해서 select 박스를 선택한 후
			// .val()함수로 값을 가져오면 option의 value 값을 가져온다. 
			//따라서 val1, val2, val3...의 값을 가져온다.
			var kkk = $("select option:selected").val();
			alert(kkk);
			location.href = "festivalListCon?Seoul=" + kkk;
		});

		/*	$("#fesList").on("click", function(){
				//select라는 태그 이름을 이용해서 select 박스를 선택한 후
				// .text()함수로 값을 가져오면 option의 text 값을 가져온다. 
				//따라서 txtVal1, txtVal2, txtVal3...의 값을 가져온다.
				var kkk = $("select option:selected").text();
				alert(kkk);
			});*/
	})
</script>
</head>

<body>
	<!-- <form action="festivalListCon"> -->
	<table border="1" width="500px";>
		<tr>
			<td>주소</td>
			<!-- <td><input type="hidden" name="kangnam" value="강남구"></td> -->
			<td><select name="festival" id="selectbox"
				onchange="setImgFromAddr();">


					<!-- 배열로 잡으면 작동이 안됨. -->


					<option value="">---선택---</option>
					<option value="강남구">강남구</option>
					<option value="강동구">강동구</option>
					<option value="강북구">강북구</option>
					<option value="관악구">관악구</option>
					<option value="광진구">광진구</option>
					<option value="금천구">금천구</option>
					<option value="노원구">노원구</option>
					<option value="도봉구">도봉구</option>
					<option value="동대문구">동대문구</option>
					<option value="마포구">마포구</option>
					<option value="서초구">서초구</option>
					<option value="성동구">성동구</option>
					<option value="성북구">성북구</option>
					<option value="송파구">송파구</option>
					<option value="양천구">양천구</option>
					<option value="용산구">용산구</option>
					<option value="은평구">은평구</option>
					<option value="종로구">종로구</option>
					<option value="중구">중구</option>
					<option value="중랑구">중랑구</option>
			</select></td>


			<td><span style="color: red;">발견된 축제 &nbsp;&nbsp;&nbsp; <span
					id="numberOfFes"></span> 개
			</span>
				<button id="fesList">더보기</button> <!-- <input type='button' id='select_btn' value='더보기'
				onclick='setSelectedFestival()' onclick="festivalListCon"> --></td>
		</tr>
	</table>
	<!-- </form> -->
	<!-- <div id='my_div'>
		<table border="1">
			<tr>
				<th>이미지</th>
				<th>축제 명</th>
			</tr>
		</table>
		<div id='my_div_festival'>
			<a href="festivalInfoCon" class="phtostack-pk photostack-img"><img
				src="" /></a>
		</div>
		<div>
			<h2 class="photostack-title"></h2>
		</div>

	</div> -->

	<div class="container">
		<!-- Top Navigation -->



		<section id="photostack-1" class="photostack photostack-start">
			<div>
				<figure>
					<a href="festivalInfoCon" class="phtostack-pk photostack-img"><img
						src="" /></a>
					<figcaption>
						<h2 class="photostack-title"></h2>
					</figcaption>
				</figure>




				<figure>
					<a href="festivalInfoCon" class="phtostack-pk photostack-img"><img
						src="" /></a>
					<figcaption>
						<h2 class="photostack-title"></h2>
					</figcaption>
				</figure>
				<figure>
					<a href="festivalInfoCon" class="phtostack-pk photostack-img"><img
						src="" /></a>
					<figcaption>
						<h2 class="photostack-title"></h2>
					</figcaption>
				</figure>


				<figure>
					<a href="festivalInfoCon" class="phtostack-pk photostack-img"><img
						src="" /></a>
					<figcaption>
						<h2 class="photostack-title"></h2>
					</figcaption>
				</figure>
				<figure>
					<a href="festivalInfoCon" class="phtostack-pk photostack-img"><img
						src="" /></a>
					<figcaption>
						<h2 class="photostack-title"></h2>
					</figcaption>
				</figure>
				<figure>
					<a href="festivalInfoCon" class="phtostack-pk photostack-img"><img
						src="" /></a>
					<figcaption>
						<h2 class="photostack-title"></h2>
					</figcaption>
				</figure>

				<figure data-dummy>
					<a href="#" class="photostack-img"><img
						src="mj_fesInfo_board/img/7.jpg" alt="img07" /></a>
					<figcaption>
						<h2 class="photostack-title"></h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img"><img
						src="mj_fesInfo_board/img/8.jpg" alt="img08" /></a>
					<figcaption>
						<h2 class="photostack-title"></h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img"><img
						src="mj_fesInfo_board/img/9.jpg" alt="img09" /></a>
					<figcaption>
						<h2 class="photostack-title"></h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img"><img
						src="mj_fesInfo_board/img/10.jpg" alt="img10" /></a>
					<figcaption>
						<h2 class="photostack-title"></h2>
					</figcaption>
				</figure>







				<figure data-dummy>
					<a href="#" class="photostack-img coverImg"><img
						src="mj_fesInfo_board/img/11.jpg" alt="img11" /></a>
					<figcaption>
						<h2 class="photostack-title coverTitle"></h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img coverImg"><img
						src="mj_fesInfo_board/img/12.jpg" alt="img12" /></a>
					<figcaption>
						<h2 class="photostack-title coverTitle"></h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img coverImg"><img
						src="mj_fesInfo_board/img/13.jpg" alt="img13" /></a>
					<figcaption>
						<h2 class="photostack-title coverTitle"></h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img coverImg"><img
						src="mj_fesInfo_board/img/14.jpg" alt="img14" /></a>
					<figcaption>
						<h2 class="photostack-title coverTitle"></h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img coverImg"><img
						src="mj_fesInfo_board/img/15.jpg" alt="img15" /></a>
					<figcaption>
						<h2 class="photostack-title coverTitle"></h2>
					</figcaption>
				</figure>
				<figure data-dummy>
					<a href="#" class="photostack-img coverImg"><img
						src="mj_fesInfo_board/img/16.jpg" alt="img16" /></a>
					<figcaption>
						<h2 class="photostack-title coverTitle"></h2>
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