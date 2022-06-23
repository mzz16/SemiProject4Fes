<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">


    <style>
 .customoverlay {position:relative;bottom:50px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;}
.customoverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.customoverlay a {display:block;text-decoration:none;color:#111;text-align:center;border-radius:6px;font-size:14px;font-weight:500;overflow:hidden;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.customoverlay .title {display:block;text-align:center;background:#fff;margin-right:35px;padding:10px 15px;font-size:10px;font-weight:600;}
.customoverlay:after {content:'';position:absolute;margin-left:-12px;left:50%;bottom:-12px;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
 
 
 
 
</style>
</head>
<body>
<div id="map" style="width:100%;height:100vh;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e8937aa77ae89b7653202e90fcc96c05"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
    center: new kakao.maps.LatLng(37.615197, 127.073125), // 지도의 중심좌표
    level: 8 // 지도의 확대 레벨
    };
 
var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.615197, 127.073125); 
 
// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});
 
// 마커가 지도 위에 표시되도록 설정합니다ww
//marker.setMap(map);
 
// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
});
  
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
//infowindow.open(map, marker); 
 
var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png';                              // 마커이미지 주소
    imageSize = new kakao.maps.Size(24, 36);                // 마커이미지의 크기
    imageOption = {offset: new kakao.maps.Point(17, 36)};   // 마커의 좌표와 일치시킬 이미지 안에서의 좌표설정
      
// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
 
 
var arr = new Array();
arr[0] = ["서울장미축제",37.615197, 127.073125, "서울 중랑구 중화동 345-2","26801317"];
arr[1] = ["솔데스크",37.569325, 126.986006, "서울 종로구 종로12길 15 종로코아빌딩","17812094"];
arr[2] = ["남산타워",37.553757, 126.980970, "서울 용산구 용산동2가 산 1-3","1913983226"];
arr[3] = ["경복궁",37.579617, 126.977041, "서울 종로구 사직로 161 ","18619553"];
arr[4] = ["평화의공원",37.562311, 126.895104, "서울 종로구 사직로 161 ","8130030"];

 
 
var markerTmp;      // 마커
var customOverlay;  // 오버레이
var contentStr;
 
for (var i=0;i<arr.length;i++) {
    markerTmp = new daum.maps.Marker({
        position: new daum.maps.LatLng(arr[i][1],arr[i][2]),
        title: arr[i][0],
        image: markerImage,
        map:map
    });
 
    contentStr = "<div class='customoverlay'><a href='https://map.kakao.com/link/map/"+ arr[i][4] +"' target='_blank'><span class='title'>"+ arr[i][0] +"</span></a></div>";
 
    
    
    
   
    
    
    
    
    
    
    customOverlay = new kakao.maps.CustomOverlay({
        map: map,
        position: new daum.maps.LatLng(arr[i][1],arr[i][2]),
        content: contentStr,
        yAnchor: 1 
    });
    
    
}
 
 
 
 
 
// 지도 타입 변경 컨트롤을 생성한다
var mapTypeControl = new kakao.maps.MapTypeControl();
 
// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);    
 
// 지도에 확대 축소 컨트롤을 생성한다
var zoomControl = new kakao.maps.ZoomControl();
 
// 지도의 우측에 확대 축소 컨트롤을 추가한다
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
 
// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>


</body>
</html>