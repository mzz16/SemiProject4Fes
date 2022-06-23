<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="con" id="map" style="width:100%; height:100vh;"></div>

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e8937aa77ae89b7653202e90fcc96c05&libraries=clusterer"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(36.49334, 127.27856), // 지도의 중심좌표
        level: 10, // 지도의 확대 레벨
        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
    }; 
    
	// 지도를 생성한다 
	var map = new kakao.maps.Map(mapContainer, mapOption); 

	// 마커 클러스터러를 생성합니다 
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
        minLevel: 6 // 클러스터 할 최소 지도 레벨 
    });
    
	// 지도 타입 변경 컨트롤을 생성한다
	var mapTypeControl = new kakao.maps.MapTypeControl();

	// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);	

	// 지도에 확대 축소 컨트롤을 생성한다
	var zoomControl = new kakao.maps.ZoomControl();

	// 지도의 우측에 확대 축소 컨트롤을 추가한다
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

	// 다중 마커 생성
	var mapData = [
		[36.511513, 127.258927, '<div style="padding:5px;">a</div>'],
		[36.514043, 127.263682, '<div style="padding:5px;">b</div>'],
		[36.514494, 127.254835, '<div style="padding:5px;">c</div>'],
		[36.521590, 127.262530, '<div style="padding:5px;">d</div>'],
		[36.531690, 127.262530, '<div style="padding:5px;">ㅁㅁㅁㅁ</div>'],
		[36.541790, 127.286532, '<div style="padding:5px;">ㅅㅅㅅ</div>'],
		[36.551890, 127.272535, '<div style="padding:5px;">ㅇㅇㅇ</div>'],
		[36.561990, 127.227530, '<div style="padding:5px;">ㄱㄱㄱ</div>'],
	];

	// 마커들을 저장할 변수 생성
	var markers = [];
	for (var i = 0; i < mapData.length; i++ ) {
		// 지도에 마커를 생성하고 표시한다.
		var marker = new kakao.maps.Marker({
			position: new kakao.maps.LatLng(mapData[i][0], mapData[i][1]), // 마커의 좌표
			map: map // 마커를 표시할 지도 객체
		});

		iwPosition = new kakao.maps.LatLng(mapData[i][0], mapData[i][1]),
	    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

		// 인포윈도우를 생성하고 지도에 표시합니다
		var infowindow = new kakao.maps.InfoWindow({
		    map: map, // 인포윈도우가 표시될 지도
		    position : iwPosition, 
		    content : mapData[i][2],
		    removable : iwRemoveable
		});

		// 마커 위에 인포윈도우를 표시
		//infowindow.open(map, marker);
		// 생성된 마커를 마커 저장하는 변수에 넣음
		markers.push(marker);
	}	

	// 클러스터러에 마커들을 추가합니다
    clusterer.addMarkers(markers);
</script>
</body>
</html>