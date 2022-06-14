<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="dh_css/index.css">
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
 <div class="bxslider">
  <div><img src="dh_img/info1_img01.png"></div>
  <div><img src="dh_img/info1_img02.png"></div>
  <div><img src="dh_img/info1_img03.png"></div>
  <div><img src="dh_img/info1_img04.png"></div>
  <div><img src="dh_img/info1_img05.png"></div>
  <div><img src="dh_img/info1_img06.png"></div>
  <div><img src="dh_img/info1_img07.png"></div>
</div>

<!-- bxslider설정 -->
        <script>
        $('.bxslider').bxSlider({
        	  auto: true,
        	  autoControls: false,
        	  stopAutoOnClick: false,
        	  pager: false,
        	  controls: false,  
        	  slideWidth: 600
        	
        	});
          /*  slider.goToSlider(1); */
            
            </script>
   <style>
                  .bx-wrapper{
                      margin-left: auto;
                      margin-right: auto;
                  }
                  
                    .bxslider {height : 1000px;
            
             }
                  
              </style>
            <!--   <style>
                  .bx-wrapper{
                      margin-left: auto;
                      margin-right: auto;
                  }
              </style>
               -->
           <!--     <style>
               
            .bxslider {height : 1000px;
            
            
             }
             
              </style>
               -->
              
              <!-- 위로 올리는 거 absolute  -->
              
         
         <!-- 지도 영역 -->     
    <div id="img_content" style="position: absolute;">
    <input type="radio" name="img_select" id="select_box1" checked value="1">
    <label for="select_box1" class="label_click"></label>
    
    <input type="radio" name="img_select" id="select_box2" value="2">
    <label for="select_box2" class="label_click"></label>
    
    <input type="radio" name="img_select" id="select_box3" value="3">
    <label for="select_box3" class="label_click"></label>
    
    <input type="radio" name="img_select" id="select_box4" value="4">
    <label for="select_box4" class="label_click"></label> 
    
    <input type="radio" name="img_select" id="select_box5" value="5">
    <label for="select_box5" class="label_click"></label> 
    
    <input type="radio" name="img_select" id="select_box6" value="6">
    <label for="select_box4" class="label_click"></label> 
    
    <input type="radio" name="img_select" id="select_box7" value="7">
    <label for="select_box7" class="label_click"></label> 



 <!-- img 영역 -->
  <div id="imgbox" >
  
    <div class="select_img select1">
      <img src="dh_img/info_map1_1.png" alt="">
    </div>
    
    <div class="select_img select2">
      <img src="dh_img/info_map1_2.png" alt="">
    </div>
    
    <div class="select_img select3">
      <img src="dh_img/info_map1_3.png" alt="">
    </div>
    
    <div class="select_img select4">
      <img src="dh_img/info_map1_4.png" alt="">
    </div>
    
    <div class="select_img select5">
      <img src="dh_img/info_map1_5.png" alt="">
    </div>
    
    <div class="select_img select6">
      <img src="dh_img/info_map1_6.png" alt="">
    </div>
    
    <div class="select_img select7">
      <img src="dh_img/info_map1_7.png" alt="">
    </div>
    
   
    
   
    
   
  
  
  </div>
  
</div>


</body>
</html>