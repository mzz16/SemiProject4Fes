<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../dh_css/index.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
    $(document).ready(function(){
      $('.slider').bxSlider();
    });
  </script>
 
  <style>
.bx-wrapper {
border:0;
background:#fbfbfb;
box-shadow:none;
margin-left: auto;
margin-right: auto;
}


</style>
	
</head>
<body>

	<!-- 배경 슬라이더 영역 -->
	<div class="bxslider" >
		<div>
			<img src="../dh_img/info1_img01.png">
		</div>
		<div>
			<img src="../dh_img/info1_img02.png">
		</div>
		<div>
			<img src="../dh_img/info1_img03.png">
		</div>
		<div>
			<img src="../dh_img/info1_img04.png">
		</div>
		<div>
			<img src="../dh_img/info1_img05.png">
		</div>
		<div>
			<img src="../dh_img/info1_img06.png">
		</div>
		<div>
			<img src="../dh_img/info1_img07.png">
		</div>


	</div>  <!-- bxslider 닫음 -->
	
  <!-- bxslider 자동 슬라이드 설정 -->
  <script>
	$('.bxslider').bxSlider({
  auto: true,
  autoControls: false,
  stopAutoOnClick: true,
  pager: false,
  controls: false, 
});
	</script>
	
	
	
	
	<!-- 지도 슬라이더 영역 -->
	<div class="bxslider2">
		<div>
			<img src="../dh_img/info_map1_1.png">
		</div>
		<div>
			<img src="../dh_img/info_map1_2.png">
		</div>
		<div>
			<img src="../dh_img/info_map1_3.png">
		</div>
		<div>
			<img src="../dh_img/info_map1_4.png">
		</div>
		<div>
			<img src="../dh_img/info_map1_5.png">
		</div>
		<div>
			<img src="../dh_img/info_map1_6.png">
		</div>
		<div>
			<img src="../dh_img/info_map1_7.png">
		</div>
		
	</div>  <!-- bxslider 닫음 -->
	
	
	 <!-- bxslider 자동 슬라이드 설정 -->
  <script>
	$('.bxslider2').bxSlider({
  auto: true,
  autoControls: false,
  stopAutoOnClick: true,
  pager: false,
  controls: false, 
  slideWidth: 600
  
  
  
});
	</script>
	
	
	
	
	



</body>
</html>