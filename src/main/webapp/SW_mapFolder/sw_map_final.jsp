<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    
    <style type="text/css">
    a {text-decoration:none;}
    a:visited {text-decoration: none;}
    .wrap {text-decoration:none; position: absolute;left: 0;bottom: 60px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 13px;font-family: 'Do Hyeon', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #fff;border-right: 1px solid #fff;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #fff;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #fff;font-size: 18px;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden; }
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #fff;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
    .span1{font-size:13pt;margin-left: 20px; text-decoration: none; color: #5085BB;font-family: 'Do Hyeon', sans-serif;}
    .span2{font-size:13pt; margin-left: 25px; text-decoration: none;color: #5085BB;font-family: 'Do Hyeon', sans-serif;}
    .span3{font-size:9pt; margin-left: 10px; text-decoration: none; color: gray;font-family: 'Do Hyeon', sans-serif;}
    .infocontent{padding: 10px 0 0 10px;height: 20px;font-size: 11px; text-align: center;}
   
   
   
   
   
   
   
    </style>
</head>
<script type="text/javascript" src="jQuery.js"></script>
<body>

<div id="map" style="width:100%;height:95vh;"></div>
<script type="text/javascript" src="jQuery.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e8937aa77ae89b7653202e90fcc96c05&libraries=services,clusterer,drawing"></script>
<script src="kakaoMapsJavaScriptAPIwrapper.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script>
    var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
        center : new kakao.maps.LatLng(37.542223,126.9803401), // 지도의 중심좌표
        level : 9 // 지도의 확대 레벨
    });

    // 마커 클러스터러를 생성
    // 마커 클러스터러를 생성할 때 disableClickZoom 값을 true로 지정하지 않은 경우
    // 클러스터 마커를 클릭했을 때 클러스터 객체가 포함하는 마커들이 모두 잘 보이도록 지도의 레벨과 영역을 변경
    // 이 예제에서는 disableClickZoom 값을 true로 설정하여 기본 클릭 동작을 막고
    // 클러스터 마커를 클릭했을 때 클릭된 클러스터 마커의 위치를 기준으로 지도를 1레벨씩 확대
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
        minLevel: 5, // 클러스터 할 최소 지도 레벨
        disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정
    });
  
    // 데이터를 가져오기 위해 jQuery를 사용
    // 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줌
    
    var imageSrc = 'SW_image/address-location-map-marker-red-icon-26350.png', // 마커이미지의 주소    
    imageSize = new kakao.maps.Size(44, 49), // 마커이미지의 크기입니다
    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정

	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
    	markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치
    
    $.get("SW_mapFolder/mapdata.json", function(data) {
        // 데이터에서 좌표 값을 가지고 마커를 표시
        // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않음
        
        var markers = $(data.positions).map(function(i, position) {
            var marker = new kakao.maps.Marker({
                position : new kakao.maps.LatLng(position.lat, position.lng),
                image: markerImage
             
                
            });
            
        function removeMarker() {
           for ( var i = 0; i < markers.length; i++ ) {
               markers[i].setMap(null);
                }   
                markers = [];
            } //마커를 표시하지 않는 함수
       	var infowindow = new kakao.maps.InfoWindow({
           content: "<div class='infocontent'>" + position.title + "</div>" // 인포윈도우에 표시할 내용
            });
            kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
            kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
       	function makeOverListener(map, marker, infowindow) {
                return function() {
                    infowindow.open(map, marker);
                };
            }
		var addr = position.place;
            // 인포윈도우를 닫는 클로저를 만드는 함수
        function makeOutListener(infowindow) {
                return function() {
                    infowindow.close();
                };
            }
        function closeOverlay() {
                overlay.close(null);     
            };
            

       
                var detailAddr; // 위치 검색 후 받을 변수 설정
                // HTML5의 geolocaiton으로 사용할 수 있는지 확인
                if (navigator.geolocation) {
                    // GeoLocation을 이용해서 접속 위치를 얻어온다.
                    navigator.geolocation.getCurrentPosition(function(position){
                        var lat = position.coords.latitude, // 위도
                            lon = position.coords.longitude; // 경도
                            
                        var locPostion = new kakao.maps.LatLng(lat, lon), //마커가 표시될 위치를 geolocation 좌표로 생성
                            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용
                        
                            // 주소-좌표 변환 객체를 생성합니다
                        searchDetailAddrFromCoords(locPostion, function(result, status) {
                            if (status === kakao.maps.services.Status.OK) {
                                detailAddr = !!result[0].road_address ? result[0].road_address.address_name : result[0].address.address_name;
                            	 //location.href = "https://map.kakao.com/?sName="+detailAddr+"&eName="+"???" //???값은 position.place     */                                      
                            }   
                        });                                        
                    });
                }      
                
			overlay=null; 
			clickedOverlay=null; 
		
            // 마커에 클릭이벤트를 등록
            kakao.maps.event.addListener(marker, 'click', function () {
            	
            detailAddr = detailAddr.replace(/ /g,""); //replace로 공백 제거
            var content = "<div class='wrap'>"+"<div class='info'>"+"<div class='title'>"+ position.title + "<div onclick='closeOverlay()' title='닫기'>"+"</div>"+"</div>"
            +"<div class='body'>"+"<div class='img'>"+"<img src="+position.img+" width='73' height='70'>"+"</div>"
            +"<div class='desc'>"+"<div class='ellipsis'>"+position.place+"<span class='span3'>"+"<a href="+position.hp +" target ='_blank'>"+"홈페이지"+"</a>"+"</span>"+"</div>"
            +"<div class='jibun ellipsis'>"+position.addr+"</div>"
            +"<div>"+"<span class='span1'>"+"<a href="+'http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no='+position.m_no+">"
            +"상세정보"+"</a>"+"</span>"
            +"<span class='span2'>"+"<a href=https://map.kakao.com/?sName="+detailAddr+"&eName="+position.place+">"+"길찾기"+"</a>"+"</span>"
            +"</div>"+"</div>"+"</div>"+"</div>"+"</div>";
           
	
          //  alert(detailAddr); 		//공백 포함 해서 나오므로 검색시 오류 (ex 부산 남구 80-1 oo아파트) //공백제거 해야함
          //  alert(position.place);	
                         

		// 마커 위에 커스텀오버레이를 표시
		// 다른 오버레이창 클릭시 기존에 열려있는 오버레이 닫아주는 기능구현 

			var overlay = new kakao.maps.CustomOverlay({
    			content: content,
    			map: map,
    			title: position.place,
    			position: marker.getPosition() ,
    			disableClickZoom: true,
			});

             if (clickedOverlay) {
   				 clickedOverlay.setMap(null);
   		    }
             
   		 	overlay.setMap(map);
   	    	clickedOverlay = overlay;
            // 전역 변수를 하나 두고 클릭할 때마다 이 변수에 할당되어 있는 CustomOverlay를 setMap(null) 하고 
            // 현재 클릭된 CustomOverlay를 해당 변수에 재할당하여 계속하여 이 전 CustomOverlay를 지우는 방식
   	    	
			//location.href = "https://map.kakao.com/?sName="+detailAddr+"&eName="+position.place    
			
            });
            return marker;
            
        	});
    
       	// 클러스터러에 마커들을 추가
       		clusterer.addMarkers(markers);
        	marker.setMap(map);
       
    		});
    
	
   	 	// 마커 클러스터러에 클릭이벤트를 등록
    	// 마커 클러스터러를 생성할 때 disableClickZoom을 true로 설정하지 않은 경우
    	// 이벤트 헨들러로 cluster 객체가 넘어오지 않을 수도 있음
    	kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {

        // 현재 지도 레벨에서 1레벨 확대한 레벨
        var level = map.getLevel()-1;

        // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대
        map.setLevel(level, {anchor: cluster.getCenter()});
   		 });
    
		//위치정보 파악 기능
    	var geocoder = new kakao.maps.services.Geocoder();
    	function searchDetailAddrFromCoords(coords, callback) {              
        // 좌표로 법정동 상세 주소 정보를 요청
        geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
   		 }  

    	// 지도 타입 변경 컨트롤을 생성
  	  var mapTypeControl = new kakao.maps.MapTypeControl();
  	   
  	  // 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가
  	  map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);    
  	   
  	  // 지도에 확대 축소 컨트롤을 생성
  	  var zoomControl = new kakao.maps.ZoomControl();
  	   
  	  // 지도의 우측에 확대 축소 컨트롤을 추가
  	  map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
   

</script>
  
</body>
</html>