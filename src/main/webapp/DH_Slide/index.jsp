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
</head>
 
              
<body>
 
 
 

<!-- 슬라이더 영역 -->
 <div class="bxslider" id="slider">
  <div><img src="../dh_img/info1_img01.png"></div>
  <div><img src="../dh_img/info1_img02.png"></div>
  <div><img src="../dh_img/info1_img03.png"></div>
  <div><img src="../dh_img/info1_img04.png"></div>
  <div><img src="../dh_img/info1_img05.png"></div>
  <div><img src="../dh_img/info1_img06.png"></div>
  <div><img src="../dh_img/info1_img07.png"></div>


</div>  <!-- bxslider 닫음 -->

  

<!-- bxslider설정 -->
        <script>
        $('.bxslider').bxSlider({
        	  auto: true,
        	  autoControls: false,
        	  stopAutoOnClick: false,
        	  pager: false,
        	  controls: false,  
        	});
          /*  slider.goToSlider(1); */
            </script>
       
            
   <style>
                  .bx-wrapper{
                  position: relative;
                       border:0; 
                      background:#fbfbfb; 
                      box-shadow:none;  
                      border-top-right-radius : 500px;
                      margin-left: auto;
                      margin-right: auto;
                      width: 70%
                  }
                  .bxslider {height : 1000; }
          
                  
              </style>
      
              
         
         <!-- 지도 영역 -->     
    <div id="img_content" >
    
     <input type="radio" name="img_select" id="select_box1" checked>
    <label for="select_box1" class="label_click"></label>
    
    <input type="radio" name="img_select" id="select_box2" >
    <label for="select_box2" class="label_click"></label>
    
    <input type="radio" name="img_select" id="select_box3" >
    <label for="select_box3" class="label_click"></label>
    
    <input type="radio" name="img_select" id="select_box4" >
    <label for="select_box4" class="label_click"></label> 
    
    <input type="radio" name="img_select" id="select_box5" >
    <label for="select_box5" class="label_click"></label> 
    
    <input type="radio" name="img_select" id="select_box6" >
    <label for="select_box4" class="label_click"></label> 
    
    <input type="radio" name="img_select" id="select_box7" >
    <label for="select_box7" class="label_click"></label>  

    <div class="plan_tit">
    <p class="tit">서울 합정점 평면도</p>
    <p class="dsc">원하시는 영역을 클릭하시면 해당 사진을 보실 수 있습니다.</p>
    </div>


 <!-- img 영역 -->
  <div id="imgbox" >
  
    <div class="select_img select1">
      <img src="../dh_img/info_map1_1.png" alt="">
    </div>
    
    <div class="select_img select2">
      <img src="../dh_img/info_map1_2.png" alt="">
    </div>
    
    <div class="select_img select3">
      <img src="../dh_img/info_map1_3.png" alt="">
    </div>
    
    <div class="select_img select4">
      <img src="../dh_img/info_map1_4.png" alt="">
    </div>
    
    <div class="select_img select5">
      <img src="../dh_img/info_map1_5.png" alt="">
    </div>
    
    <div class="select_img select6">
      <img src="../dh_img/info_map1_6.png" alt="">
    </div>
    
    <div class="select_img select7">
      <img src="../dh_img/info_map1_7.png" alt="">
    </div>
  
  </div>  <!-- imgbox닫음  -->
  
  
  
</div> <!-- img_content닫음 -->




</body>
</html>