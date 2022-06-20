<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="dh_css/FestivalSlide.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	
<style>

/* 슬라이드 테두리 제거 */
.bx-wrapper {
	border: 0;
	background: #fbfbfb;
	box-shadow: none;
} 

</style>

</head>
<body>
	
<div style="position: relative;" >


	<!-- 슬라이더 영역 -->
	<div class="bxslider" id="slider">
		
		<div>
			<img src="dh_festival_slide_img/강북구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/도봉구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/노원구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/은평구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/서대문구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/종로구.png">
		</div>
		<div>
			<img src="dh_festival_slide_img/성북구.png">
		</div>
		<div>
			<img src="dh_festival_slide_img/동대문구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/중랑구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/마포구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/용산구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/중구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/성동구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/광진구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/강서구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/양천구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/구로구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/영등포구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/금천구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/동작구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/관악구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/서초구2.jpeg">
		</div>
		<div>
			<img src=".dh_festival_slide_img/강남구.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/송파구2.jpeg">
		</div>
		<div>
			<img src="dh_festival_slide_img/강동구.jpeg">
		</div>
</div>



	
<!-- 지도 영역 -->
	<div id="img_content">




<!-- 텍스트 영역  -->
		<div class="plan_tit">
			<p class="tit">서울지도</p>
			<p class="dsc">원하시는 영역을 클릭하시면 해당 지역의 축제정보를 보실 수 있습니다.</p>
		</div> 
		<!-- 텍스트 닫음 -->




		<!-- img 영역   -->
		
		<div class="map-1">
			<img src="dh_area_img/서울지도.png"  alt="자치구별 관련축제정보" usemap="#autonomyMap" id="imgId1" >
		
			<map name="autonomyMap">
			
				<area shape="poly" coords="226,17,217,19,203,44,207,57,215,68,227,75,240,84,251,85,265,75,241,49,233,32" 
				 href="javascript:custom_function(0);" alt="강북구" >
				 
				<area shape="poly" coords="240,29,227,13,246,1,265,10,268,26,272,55,260,64,245,52,237,41"
				 href="javascript:custom_function(1);"  alt="도봉구" >
				 
				<area shape="poly" coords="269,13,284,7,296,4,302,10,311,15,307,20,309,29,306,40,309,52,323,55,324,65,310,76,280,79,260,68,273,58,271,41" 
				href="javascript:custom_function(2);"  alt="노원구" >
				
				<area shape="poly" coords="160,47,172,41,183,47,195,63,177,71,174,85,165,92,153,101,146,109,132,114,117,106,141,55" 
				href="javascript:custom_function(3);"  alt="은평구">
				
				<area shape="poly" coords="132,118,147,125,154,132,163,136,186,133,191,125,178,117,182,99,173,89" 
				href="javascript:custom_function(4);"  alt="서대문구">
				
				<area shape="poly" coords="178,73,195,67,202,75,206,83,206,90,201,97,242,122,212,123,195,124,181,120,185,107,179,87" 
				href="javascript:custom_function(5);"  alt="종로구">
				
				<area shape="poly" coords="205,59,239,87,270,83,286,88,265,96,255,105,242,111,228,106,204,99,213,93,198,66" 
				href="javascript:custom_function(6);"  alt="성북구" >
				
				<area shape="poly" coords="244,115,248,122,261,120,287,131,293,121,286,105,286,89" 
				href="javascript:custom_function(7);"  alt="동대문구">
				
				<area shape="poly" coords="286,81,305,79,332,79,331,92,328,102,320,112,317,119,295,121,288,103" 
				href="javascript:custom_function(8);" alt="중랑구" >
				
				<area shape="poly" coords="94,119,143,148,155,148,164,149,170,156,175,155,187,143,185,135,161,137,147,125,129,119,112,105" 
				href="javascript:custom_function(9);"  alt="마포구" >
				
				<area shape="poly" coords="173,157,179,167,205,173,220,167,229,159,234,153,222,145,205,139,192,139" 
				href="javascript:custom_function(10);"  alt="용산구">
				
				<area shape="poly" coords="188,134,196,125,207,127,220,125,242,125,242,134,229,144" 
				href="javascript:custom_function(11);"  alt="중구" >
				
				<area shape="poly" coords="230,146,236,150,246,148,277,155,288,134,262,123,246,123,243,133" 
				href="javascript:custom_function(12);"  alt="성동구" >
				
				<area shape="poly" coords="277,157,302,163,324,145,327,134,317,131,319,122,294,123" 
				href="javascript:custom_function(13);"  alt="광진구">
				
				<area shape="poly" coords="1,138,23,148,29,156,41,151,54,151,60,145,67,149,73,162,93,161,93,149,94,141,108,143,73,120,40,100,25,119" 
				href="javascript:custom_function(14);"  alt="강서구">
				
				<area shape="poly" coords="61,149,55,156,60,163,58,173,57,180,63,181,67,186,78,181,92,181,97,184,109,175,108,166,117,159,111,146,97,144,94,162,72,164"
				 href="javascript:custom_function(15);"  alt="양천구" >
				
				<area shape="poly" coords="48,190,56,200,53,207,48,214,52,217,62,214,71,213,79,215,81,207,98,197,109,201,121,208,127,208,131,205,126,199,121,186,112,175,102,183,95,186,85,182,68,187,58,182" 
				href="javascript:custom_function(16);"  alt="구로구" >
				
				<area shape="poly" coords="122,181,130,202,140,193,148,188,154,175,167,170,159,162,140,156,109,140,117,157,110,166,114,175" 
				href="javascript:custom_function(17);"  alt="영등포구" >
				
				<area shape="poly" coords="101,202,113,218,115,230,122,234,127,242,127,249,139,248,147,245,155,236,150,229,141,230,141,221,136,216,140,211,134,207,124,210" 
				href="javascript:custom_function(18);"  alt="금천구" >
				
				<area shape="poly" coords="135,203,151,197,156,193,161,197,181,195,186,194,188,201,194,209,203,209,203,199,205,189,198,184,173,174,158,178,150,188" 
				href="javascript:custom_function(19);"  alt="동작구" >
				
				<area shape="poly" coords="136,205,142,211,139,216,143,225,150,227,156,234,158,240,165,248,175,246,188,245,191,239,199,239,203,229,209,229,209,220,201,212,188,206,184,195,162,197,156,195" 
				href="javascript:custom_function(20);"  alt="관악구" >
				
				<area shape="poly" coords="207,190,205,213,210,218,211,227,220,224,224,217,235,231,250,224,253,219,255,227,257,244,267,249,291,248,299,242,309,228,300,213,271,220,261,207,252,202,236,169" 
				href="javascript:custom_function(21);"  alt="서초구" >
				
				<area shape="poly" coords="236,166,254,200,261,202,271,219,288,214,301,210,311,224,323,224,331,227,339,222,320,198,291,189,283,172,272,164,249,158" 
				href="javascript:custom_function(22);"  alt="강남구">
				
				<area shape="poly" coords="286,175,291,188,314,194,321,198,339,220,349,220,344,214,350,214,362,204,372,198,372,190,366,185,360,189,353,183,352,170,333,165,335,156,330,152,318,168,305,173" 
				href="javascript:custom_function(23);"  alt="송파구">
				
				<area shape="poly" coords="331,149,337,153,335,163,351,168,357,172,373,148,386,147,393,146,391,136,385,114,361,126,344,129" 
				href="javascript:custom_function(24);"  alt="강동구" >
			
			</map>
  	</div>

	</div>
	</div>
	
	<!-- bxslider 닫음 -->



	<!-- bxslider설정 -->
	<script>
		let slider = $('.bxslider').bxSlider({
			auto : true,
			autoControls : false,
			stopAutoOnClick : false,
			pager : false,
			controls : false,
		});
	</script>




	

		<script>
			function custom_function(index) {

				if (typeof slider.goToSlide === 'function') {
					slider.goToSlide(index); // 해당 슬라이더로 이동 
				} else { //무엇인가 잘못됬으면
					alert('에러');
				}

				if (index == 0) {
					document.getElementById("imgId1").src = "dh_area_img/강북구.png";
				}
				if (index == 1) {
					document.getElementById("imgId1").src = "dh_area_img/도봉구.png";
				}
				if (index == 2) {
					document.getElementById("imgId1").src = "dh_area_img/노원구.png";
				}
				if (index == 3) {
					document.getElementById("imgId1").src = "dh_area_img/은평구.png";
				}
				if (index == 4) {
					document.getElementById("imgId1").src = "dh_area_img/서대문구.png";
				}
				if (index == 5) {
					document.getElementById("imgId1").src = "dh_area_img/종로구.png";
				}
				if (index == 6) {
					document.getElementById("imgId1").src = "dh_area_img/성북구.png";
				}
				if (index == 7) {
					document.getElementById("imgId1").src = "dh_area_img/동대문구.png";
				}
				if (index == 8) {
					document.getElementById("imgId1").src = "dh_area_img/중랑구.png";
				}
				if (index == 9) {
					document.getElementById("imgId1").src = "dh_area_img/마포구.png";
				}
				if (index == 10) {
					document.getElementById("imgId1").src = "dh_area_img/용산구.png";
				}
				if (index == 11) {
					document.getElementById("imgId1").src = "dh_area_img/중구.png";
				}
				if (index == 12) {
					document.getElementById("imgId1").src = "dh_area_img/성동구.png";
				}
				if (index == 13) {
					document.getElementById("imgId1").src = "dh_area_img/광진구.png";
				}
				if (index == 14) {
					document.getElementById("imgId1").src = "dh_area_img/강서구.png";
				}
				if (index == 15) {
					document.getElementById("imgId1").src = "dh_area_img/양천구.png";
				}
				if (index == 16) {
					document.getElementById("imgId1").src = "dh_area_img/구로구.png";
				}
				if (index == 17) {
					document.getElementById("imgId1").src = "dh_area_img/영등포구.png";
				}
				if (index == 18) {
					document.getElementById("imgId1").src = "dh_area_img/금천구.png";
				}
				if (index == 19) {
					document.getElementById("imgId1").src = "dh_area_img/동작구.png";
				}
				if (index == 20) {
					document.getElementById("imgId1").src = "dh_area_img/관악구.png";
				}
				if (index == 21) {
					document.getElementById("imgId1").src = "dh_area_img/서초구.png";
				}
				if (index == 22) {
					document.getElementById("imgId1").src = "dh_area_img/강남구.png";
				}
				if (index == 23) {
					document.getElementById("imgId1").src = "dh_area_img/송파구.png";
				}
				if (index == 24) {
					document.getElementById("imgId1").src = "dh_area_img/강동구.png";
				}
				
				
				
				
			}
		</script>
	
	<script type="text/javascript" src="dh_css/jquery.js"></script>
	
<script type="text/javascript">
			$(function() {
				var observer = new MutationObserver(function(mutations) {
					target = document.getElementById('slider');
				    	let child = $(target).find("div");
						for (var i = 0; i < 26; i++) {
							let includeFalse = $(child[i]).attr("aria-hidden");
							  if(includeFalse == 'false'){  
								/* alert(i);  */
								 
								 
								 if (i == 1) {
										document.getElementById("imgId1").src = "dh_area_img/강북구.png";
									}
								 if (i == 2) {
										document.getElementById("imgId1").src = "dh_area_img/도봉구.png";
									}
								 if (i == 3) {
										document.getElementById("imgId1").src = "dh_area_img/노원구.png";
									}
								 if (i == 4) {
										document.getElementById("imgId1").src = "dh_area_img/은평구.png";
									}
								 if (i == 5) {
										document.getElementById("imgId1").src = "dh_area_img/서대문구.png";
									}
								 if (i == 6) {
										document.getElementById("imgId1").src = "dh_area_img/종로구.png";
									}
								 if (i == 7) {
										document.getElementById("imgId1").src = "dh_area_img/성북구.png";
									}
								 if (i == 8) {
										document.getElementById("imgId1").src = "dh_area_img/동대문구.png";
									}
								 if (i == 9) {
										document.getElementById("imgId1").src = "dh_area_img/중랑구.png";
									}
								 if (i == 10) {
										document.getElementById("imgId1").src = "dh_area_img/마포구.png";
									}
								 if (i == 11) {
										document.getElementById("imgId1").src = "dh_area_img/용산구.png";
									}
								 if (i == 12) {
										document.getElementById("imgId1").src = "dh_area_img/중구.png";
									}
								 if (i == 13) {
										document.getElementById("imgId1").src = "dh_area_img/성동구.png";
									}
								 if (i == 14) {
										document.getElementById("imgId1").src = "dh_area_img/광진구.png";
									}
								 if (i == 15) {
										document.getElementById("imgId1").src = "dh_area_img/강서구.png";
									}
								 if (i == 16) {
										document.getElementById("imgId1").src = "dh_area_img/양천구.png";
									}
								 if (i == 17) {
										document.getElementById("imgId1").src = "dh_area_img/구로구.png";
									}
								 if (i == 18) {
										document.getElementById("imgId1").src = "dh_area_img/영등포구.png";
									}
								 if (i == 19) {
										document.getElementById("imgId1").src = "dh_area_img/금천구.png";
									}
								 if (i == 20) {
										document.getElementById("imgId1").src = "dh_area_img/동작구.png";
									}
								 if (i == 21) {
										document.getElementById("imgId1").src = "dh_area_img/관악구.png";
									}
								 if (i == 22) {
										document.getElementById("imgId1").src = "dh_area_img/서초구.png";
									}
								 if (i == 23) {
										document.getElementById("imgId1").src = "dh_area_img/강남구.png";
									}
								 if (i == 24) {
										document.getElementById("imgId1").src = "dh_area_img/송파구.png";
									}
								 if (i == 25) {
										document.getElementById("imgId1").src = "dh_area_img/강동구.png";
									}
							
						
							 }  // if문 닫음							
							
						}  // for문 닫음
						
						
						
						
						
						
						
						
				    
				});   // function mutations 닫음

				
				let target = document.getElementById('slider');
				observer.observe(target, { attributes : true, attributeFilter : ['style'] });
			
			});  // function 닫음
				
				/* let ss = $("#slider");
				$(ss).csschange(function() {
				let child = $(ss).children();
				$(child).each(function () {
					console.log($(child).attr("aria-hidden"));
				});
					
				
				
				}); */
</script>
	
	
</body>
</html>