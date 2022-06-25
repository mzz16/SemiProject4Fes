<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">


    <style>
    .content1 {
    height: 140px;
    }

/*      .wrap {position: absolute;left: 0px;bottom: -0px;width: 288px;height: 132px;margin-left: -70px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
  */
 
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
arr[0] = ["나루아트센터",37.5373529, 127.0705248, "서울 광진구 능동로 76","17064649"];
arr[1] = ["서서울예술교육센터",37.5282993, 126.8321736, "서울 양천구 남부순환로64길 2","1989671781"];
arr[2] = ["은평문화예술회관",37.6036744, 126.927865, "서울 은평구 녹번로 16","10669473"];
arr[3] = ["서울에너지드림센터",37.5626053, 126.8910515, "서울 마포구 증산로 14","19190782"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[5] = ["아르코예술극장",37.5811635, 127.0029588, "서울 종로구 대학로8길 7","10593353"];
arr[6] = ["경의선책거리",37.5562364,126.9292978, "서울 마포구 와우산로35길 50-4","104964874"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];
arr[4] = ["운현궁",37.576034, 126.987052, "서울 종로구 삼일대로 464 ","8465462"];

 
 
var marker;      // 마커
var customOverlay;  // 오버레이
var contentStr;
 
for (var i=0;i<arr.length;i++) {
    marker = new kakao.maps.Marker({
        position: new kakao.maps.LatLng(arr[i][1],arr[i][2]),
        title: arr[i][0],
        image: markerImage,
        map:map
    });
 
   // contentStr = "<div class='customoverlay'><a href='https://map.kakao.com/link/map/"+ arr[i][4] +"' target='_blank'><span class='title'>"+ arr[i][0] +"</span></a></div>";
 

// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
var iwContent = arr[i][0], // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	  iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

 // 인포윈도우를 생성합니다
 var infowindow = new kakao.maps.InfoWindow({
    content : "<div class='content1'>" + "<div>" + "<div>" 
    + arr[i][0] + "</div>" +"주소 : "+ arr[i][3] + "</div>" + "<a href='sw_map.jsp'>" +"정보보기"+ "</a>" +"<a href='sw_map.jsp'>" +"정보보기2"+ "</a>" + "</div>" ,
    
    removable : iwRemoveable
});  

// 마커에 클릭이벤트를 등록합니다
// kakao.maps.event.addListener(markerTmp, 'click', function() {
 //     // 마커 위에 인포윈도우를 표시합니다
  //     infowindow.setContent(content);
  //    infowindow.open(map, marker);  
      
//});
    
/마커 클릭하면 인포윈도우/
 kakao.maps.event.addListener(marker, 'click', makeClickListener(map, marker, infowindow));

//marker click event/
function makeClickListener(map, marker, infowindow) {
return function() {
infowindow.open(map, marker);
//infowindow.setContent(content);
};
}   
     
    
    
    
    
/*     customOverlay = new kakao.maps.CustomOverlay({
        map: map,
        position: new daum.maps.LatLng(arr[i][1],arr[i][2]),
        content: contentStr,
        yAnchor: 1 
    });
     */
    
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