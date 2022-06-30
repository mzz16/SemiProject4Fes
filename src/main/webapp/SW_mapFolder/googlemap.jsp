<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">


    <meta name="author" content='Suns'>
    <meta name="description" content="..">
    <meta name="viewport" content="width=100%, initial-scale=2.0, user-scalable=no, maximum-scale=1, nimimum-scale=1">
    <!-- CSS -->
    <style type="text/css">
    #map {
    
    width:100%;
    height: 99vh;
  
}
    </style>
</head>
<body>

<div id="map"></div>
<input id="refreshMap" type="button" value="Refresh" style="display:none" /><br>


<!--js파일 호출 index.js -->

<script defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCmV-XrdagKPY9a4DCGWgoFd28dH7su2Lg&language=ja&callback=initMap"></script>
<script src="https://unpkg.com/@google/markerclustererplus@4.0.1/dist/markerclustererplus.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.js"></script>
<script type="text/javascript" src="jQuery.js"></script>
<script type="text/javascript">


let map;
let markers = [];
let markerCluster;
let markersAmount;


                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(function(position){
                        let lat = position.coords.latitude, // 위도
                            lon = position.coords.longitude; // 경도
                            
                    
							let myPosition =lat+","+lon;
                            alert(myPosition);
                    });
                }  
       		


 let latlng_list =  [
	['「街芸術キャラバン「春」', 37.54438781, 127.0374424,'서울숲',72],
    ['「街芸術キャラバン「春」', 37.6240625, 127.0918192, '노원불빛정원',72],
    ['「街芸術キャラバン「春」', 37.5665256, 127.0092236, 'DDP', 72],
    ['「街芸術キャラバン「春」', 37.6910681, 127.0491028, '평화문화진지', 72],
    ['「街芸術キャラバン「春」', 37.5431196, 126.9001167, '선유도공원', 72],
    ['ナルとバスキング', 37.5337907, 127.0729889, '나루아트센터', 74],
    ['6月春散歩プロジェクト「夏迎え」', 37.5278242, 126.8310531,'서서울예술교육센터', 1]
    ['ウンピョンにほれるHELLO! RHYTHM!', 37.6036744, 126.927865, '은평문화예술회관', 2],
    ['2022家族環境描き大会', 37.5626053, 126.8910515,'서울에너지드림센터', 73],
    ['寅年雲峴宮旧正月大宴会', 37.576034, 126.987052,'운현궁',77],
    ['2022ソウルアシテジ冬祭り', 37.5823257, 127.0029158, '아르코예술극장',78],
    ['京義線本街冬光祭り', 37.5562364, 126.9292978, '경의선책거리',80],
    ['オールデーミュージックフェスティバル', 37.5136096, 127.1039833,'롯데콘서트홀' ,79],
    ['チョンゲチョンと文化空間', 37.5712267, 127.0350281,'청계천박물관', 83],
    ['青春マイクフェスティバル', 37.5116807, 126.9947194,'세빛섬', 85],
    ['クムチョンハモニフェスティバル', 37.4518527, 126.9020358,'금천구청',86],
    ['漫画図書館＆アニメ散歩', 37.5811635, 127.0029588, '서울애니메이션센터',87],
    ['ソウル知識つなぎフェスティバル', 37.5662538, 126.9779023,'서울도서관' ,88],
    ['ナルストリートダンスフェスティバル', 37.5374525, 127.0701298, '나루아트센터',3],
    ['アート手作りマーケット', 37.4822205, 127.0347029,'서초문화예술회관', 4],
    ['デザートコンサート', 37.4818266, 127.0360021,'서초문화원' ,5],
    ['名物の雲峴宮', 37.5763581, 126.9880684,'운현궁' ,6],
    ['教えちゃる！[トボンマーケット]', 37.6907662, 127.0471938,'평화문화진지' ,8],
    ['2022 敦義門マーケット', 37.5687865, 126.9685111,'돈의문박물관마을' ,9],
    ['ドゥーリーミュージアム こどもの日 行事', 37.6522772, 127.0275989, '둘리뮤지엄',10],
    ['2022 こどもの日 博物館 祭り', 37.5155254, 127.1206771, '한성백제박물관',11],
    ['2022 ソウルバラ祭り', 37.6151979, 127.0731259, '중화체육공원',12],
    ['2022 月刊ミュージック', 37.5166773, 126.8633031,'양천문화회관' ,13],
    ['春散歩プロジェクト「春・春・春」', 37.5282993, 126.8321736,'서서울예술교육센터' ,14],
    ['ハンソン百済博物館開館10周年記念音楽会', 37.5154331, 127.1343724, '한성백제박물관',15],
    ['セビッ ブルーミング ガーデン', 37.5103503, 126.9960378, '반포한강공원',17],
    ['キョンチュン線の森路ギャラリー音楽会', 37.6245739, 127.0830557,'경춘선숲길' ,18],
    ['マッコリchallenge', 37.5688385, 126.9688987,'돈의문박물관마을' ,20],
    ['笙でみる音ー空間音', 37.5772238, 126.9905745, '서울돈화문국악당',21],
    ['ビックムーブ with Lia KIM', 37.566752, 127.0101046,'DDP어울림광장' ,23],
    ['ソウル光灯籠祭り', 37.5691015, 126.9786692,'청계천' ,28],
    ['トボン山フェスティバル', 37.6918821, 127.0469367,'다락원체육공원' ,41],
    ['第26回カンドン先史文化祭り', 37.5604839, 127.132118,'암사역사공원' ,43],
    ['光の海 : 光を抱きしめたクムチョン', 37.4564983, 126.8957909,'금나래아트홀' ,48],
    ['GIG(Groove In Gwanak) FESTA', 37.4754255, 126.9366438, '별빛내린천벽천분수',59],
    ['[人文学青年と遊ぶ]トークコンサート', 37.4776508, 126.9580543,'멜로우스트리트' ,60],
    ['2022 Seoul Drum Festival', 37.5177627, 126.9596671,'노들섬' ,61],
    ['私たちは町冒険隊', 37.619671, 127.0767099,'서울생활사박물관' ,62],
    [' 6月メディアセンタークァナクオリエンテーション', 37.4823248, 126.9163876, '미디어센터관악',63],
    ['STAF (START TRACK ART FESTIVAL)', 37.4931723, 127.0356306,'서울시 강남구 역삼로 14길 20' ,64],
    ['ナンサンコルハンオクコンサート「春.越.家」', 37.5591972, 126.9947548,'남산골한옥마을' ,67],
    ['文化プラットホーム S1472 [2022 S1472 子供週間]', 37.4840467, 126.9257009,'관천로 문화플랫폼 S1472' ,68],
    ['サーカスキャラバン「春」', 37.5625072, 126.8928088,'문화비축기지' ,69],
    ['美術週間「ウンピョンの顔」', 37.5993563, 126.9207066,'아트숨비' ,99],
    ['ソウルワウ本フェスティバル', 37.5524522, 126.9209199,'서교예술실험센터' ,103],
    ['ソウルイラストレーションフェア- V.11', 37.5116828, 127.059151,'코엑스 D홀' ,108],
	['K-POP ダンスコンテスト', 37.6541966, 127.048771,'플랫폼창동61' ,116],
    ['近現代史推理旅行', 37.6529618, 127.0122387, '솔밭근린공원',119],
    ['第9回漢陽都城文化祭', 37.5539036, 126.9822055, '한양도성유적전시관',128]
            ];
 
// 구글맵초기화 
function initMap() {
    const myLatLng = {
        lat: 37.542223,
        lng: 126.9803401
    }

    map = new google.maps.Map(
        document.getElementById("map"), {
            center: myLatLng,
            scrollwhell: false,
            zoom: 10,
           
        }
    );
    refreshMap();
}

// 마커 생성함수
function createMarkers() {
    // console.log('latlng_list')
    // console.log(latlng_list)
    var infowindow = new google.maps.InfoWindow();

    var marker, i;
    

 
    for (let i = 0; i < latlng_list.length; i++) {
  
        let marker = new google.maps.Marker({
            position: new google.maps.LatLng(latlng_list[i][1],latlng_list[i][2]),
            map,
            animation: google.maps.Animation.DROP,
            maxzoom:13,
            averageCenter: true,
            
            
        })
	
        markers.push(marker);
    
	
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
            	
              infowindow.setContent('<div>'+latlng_list[i][0]+'</div>'+'<div>'+"<a href="+'http://localhost:8080/semiPro_Team4/festivalInfoCon_jp?m_no='+latlng_list[i][4]+">"+"상세정보"+"</a>"+'</div>');
              infowindow.open(map, marker);
          
          
        	}

           
          })(marker, i));
        
   
                 
    }
  
    // 클러스터링
    markerCluster = new MarkerClusterer(map, markers,{
        imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m',
        gridSize: 50,
        averageCenter: true,
        maxZoom: 13,
        
        
        
    });

    
}

function refreshMap() {
    if (markerCluster instanceof MarkerClusterer) {
        // Clear all clusters and markers
        markerCluster.clearMarkers()
        
    }
    markers = [];
    createMarkers();
}
	

</script>
</body>
</html>