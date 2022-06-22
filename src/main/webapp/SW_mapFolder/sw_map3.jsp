<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    
</head>
<script type="text/javascript" src="jQuery.js"></script>
<style>
#map{
width: 100%;
height: 100%;
/* position: absolute; left: 0px; top: 0px;  */
}
</style>
<body>
<div id="map"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e8937aa77ae89b7653202e90fcc96c05"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
mapOption = { 
    center: new kakao.maps.LatLng(37.615197, 127.073125), // 지도의 중심좌표
    level: 8 // 지도의 확대 레벨sdad
};


var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
var positions = [
{
    content: '<div>서울장미축제</div>', 
    latlng: new kakao.maps.LatLng(37.615197, 127.073125)
},
{
    content: '<div>솔데스크</div> <img style="width: 100px " height="100px" src="../SW_image/aa.jpg">', 
    latlng: new kakao.maps.LatLng(37.569325, 126.986006)
},
{
    content: '<div>남산타워</div>', 
    latlng: new kakao.maps.LatLng(37.553757, 126.980970)
},
{
    content: '<div>경복궁</div>',
    latlng: new kakao.maps.LatLng(37.579617, 126.977041)
}
];
// 마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
  for (var i = 0; i < positions.length; i ++) {
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng ,// 마커의 위치
     	image : markerImage // 마커 이미지 
    });

    // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content // 인포윈도우에 표시할 내용
    });

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	}
	
	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
    	return function() {
        	infowindow.open(map, marker);
    	};
	}


	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
    	return function() {
        	infowindow.close();	
     
    	};
	}
	
}
</script>
</body>
</html>