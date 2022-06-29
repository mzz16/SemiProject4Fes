<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../sw_css/searchMap.css" rel="stylesheet">
</head>
<body>

<!--카카오맵 -->


<!-- <h1>서울장미축제</h1>  <a href="https://map.kakao.com/?sName='현위치값받기'&eName='도착지값받기'"> 거리 검색 </a> -->


<!--구글맵-->
<!-- 일본어버전 홈페이지에는 버튼으로 길 안내해주기 (구글맵은 일본어호환가능) -->

<!-- ソルデスク夏祭り
<a href="https://www.google.com/maps/dir/%E3%82%BD%E3%82%A6%E3%83%AB+%E4%B8%AD%E5%8C%BA+%E3%82%BD%E3%82%B4%E3%83%B3%E3%83%89%E3%83%B3+
Sejong-daero+18-gil,+%EC%84%9C%EC%9A%B8%EC%97%AD/%EC%86%94%EB%8D%B0%EC%8A%A4%ED%81%AC+Seoul,+Jongno-gu,+Gwancheol-dong,+%EF%BC%91%EF%BC%93%E2%88%92%EF%BC%91%EF%BC%93/
data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x357ca266e3947003:0xe7be97c172b7af6a!2m2!1d126.972317!2d37.555946!1m5!1m1!1s0x357ca2e89e08e16b:0xf8955b2100de16c3!2m2!1d126.9860066!2d37.5693255?hl=ja">  -->



<span id="faq-title">서울<span style="color: red">장미</span>축제</span>
<div> <img style="width: 100px " height="100px" src="../SW_image/aa.jpg"></div>
<div class="faq-content">
  <button class="question" id="que-1"><span id="que-1-toggle">+</span><span>지도</span></button>
  <iframe class="answer" id="ans-1" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3160.4457186626046!2d127.07093721608462!3d37.615202129095614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbb1530ae9ab3%3A0x568d8368d25d0f55!2z7ISc7Jq47J6l66-47LaV7KCc!5e0!3m2!1sko!2skr!4v1655309936174!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  
  </div>


<span id="faq-title">ソウル<span style="color: red">バラ</span>フェス</span>
<div> <img style="width: 100px " height="100px" src="../SW_image/aa.jpg"></div>
<div class="faq-content"> 
  <button class="question" id="que-2"><span id="que-2-toggle">+</span><span>地図</span></button>
  <iframe class="answer" id="ans-2" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3160.4457186626046!2d127.07093721608462!3d37.615202129095614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbb1530ae9ab3%3A0x568d8368d25d0f55!2sSeoul%20Rose%20Festival!5e0!3m2!1sja!2skr!4v1655306578927!5m2!1sja!2skr?hl=ja" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>  
  </div>
  https://www.google.com/maps/dir/서울특별시+종로구+대학로8길+7+아르코예술극장/서울숲/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x357ca32c0e552035:0xe416d7efb1403e71!2m2!1d!127.03744242d!37.544387811m5!1m1!1s0x357cbb1530ae9ab3:0x568d8368d25d0f55!2m2!1d127.0374424!2d37.54438781?hl=ja
<span id="faq-title">ソウル<span style="color: red">バラ</span>フェス</span>

<div> <img style="width: 100px " height="100px" src="../SW_image/aa.jpg"></div>
<div class="faq-content"> 
  <button class="question" id="que-3" value="서울역"><span id="que-3-toggle">+</span><span>地図</span></button>
  <iframe class="answer" id="ans-3" src="http://localhost/semiPro_Team4/SW_mapFolder/sw_map.jsp" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>  
  </div>


<script>
  const items = document.querySelectorAll('.question');

  function openCloseAnswer() {
    const answerId = this.id.replace('que', 'ans');

    if(document.getElementById(answerId).style.display === 'block') {
      document.getElementById(answerId).style.display = 'none';
      document.getElementById(this.id + '-toggle').textContent = '+';
    } else {
      document.getElementById(answerId).style.display = 'block';
      document.getElementById(this.id + '-toggle').textContent = '-';
    }
  }

  items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>
</body>
</html>


