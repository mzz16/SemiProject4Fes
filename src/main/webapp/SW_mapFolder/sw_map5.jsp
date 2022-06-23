<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<div id="map" style="width:100%;height:500px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e8937aa77ae89b7653202e90fcc96c05"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new kakao.maps.LatLng(37.615197, 127.073125), // 지도의 중심좌표
    level: 8 // 지도의 확대 레벨
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var positions = [
    {
        title: '<div>서울장미축제</div>', 
        latlng: new kakao.maps.LatLng(37.615197, 127.073125)
    },
    {
        title: '<div>솔데스크</div>', 
        latlng: new kakao.maps.LatLng(37.569325, 126.986006)
    },
    {
        title: '<div>남산타워</div>', 
        latlng: new kakao.maps.LatLng(37.553757, 126.980970)
    },
    {
        title: '<div>경복궁</div>',
        latlng: new kakao.maps.LatLng(37.579617, 126.977041)
    }
];

for(let i=0; i < positions.length; i++){
    var data = positions[i];
    displayMarker(data);
}

// 지도에 마커를 표시하는 함수입니다    
function displayMarker(data) { 
    var marker = new kakao.maps.Marker({
        map: map,
        position: data.latlng
    });
    var overlay = new kakao.maps.CustomOverlay({
        yAnchor: 1.5,
        position: marker.getPosition()
    });
    
    var content = document.createElement('div');
    content.innerHTML =  data.title + "<div><a>축제정보</a> <a>길찾기</a></div>";
    content.style.cssText = 'background: white; border: 1px solid black';
    
    var closeBtn = document.createElement('button');
    closeBtn.innerHTML = '닫기';
    closeBtn.onclick = function () {
        overlay.setMap(null);
    };
    content.appendChild(closeBtn);
    overlay.setContent(content);

    kakao.maps.event.addListener(marker, 'click', function() {
        overlay.setMap(map);
 // global variable
    var clickedOverlay = null;

    geocoder.addressSearch(addr, function(result, status) {
     
    	
      var CustomOverlay = new kakao.maps.CustomOverlay({
        //content: content,
        map: map,
        position: marker.getPosition()
      });
     
      
      kakao.maps.event.addListener(marker, 'click', function() {
        if (clickedOverlay) {
            clickedOverlay.setMap(null);
        }
        CustomOverlay.setMap(map);
        clickedOverlay = CustomOverlay;
      });
   
    });
    });
}
</script>
</body>
</html>