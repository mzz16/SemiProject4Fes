<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.3">
<link rel="stylesheet" href="dh_css/FestivalSlide.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" href="mj_css/home.css">
<link href='mj_calendar/lib/main.css' rel='stylesheet' />
<script src='mj_calendar/lib/main.js'></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">

<script type="text/javascript">
	// 현재 창 width를 구하기

	// 그게 800 이하가 되면? 버튼 생성

	// 그 버튼 누르면?display 속성 조절
	$(function() {

		var size = document.getElementById("size");

		window.onresize = function(event) {
			var innerWidth = window.innerWidth;
			 console.log(innerWidth); 

			if (innerWidth < 700) {
				$("#addBtn").css("display", "block");
			} else {
				$("#addBtn").css("display", "none");

			}

		}

		$("#plusBtn").click(function() {
			$("#img_content").css("display", "block");
			$("#addBtn").css("display", "none");
		});

		$("#xBtn").click(function() {
			$("#img_content").css("display", "none");
			$("#addBtn").css("display", "block");
		});

	})
</script>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialDate : '2022-06-12',
			editable : true,
			selectable : true,
			businessHours : true,
			dayMaxEvents : true, // allow "more" link when too many events
			events : [{
				title : '[서울문화재단] 6월 봄소풍 프로젝트 \'여름 마중\'',
				start : '2022-06-25',
				url : 'festivalInfoCon?m_no=1',
				color : '#ff99c8'
			}, {
				title : '[방방곡곡 문화공감사업] 은평에 반하다 HELLO! RHYTHM!',
				start : '2022-06-23',
				end : '2022-06-26',
				url : 'festivalInfoCon?m_no=2',
				color : '#ff99c8'

			}, {
				title : '2022 나루 스트릿 댄스 페스티벌 [나루 브레이킹  배틀 2on2]',
				start : '2022-06-18',
				url : 'festivalInfoCon?m_no=3',
				color : '#ff99c8'
			}, {
				title : '아트플리마켓 (06/14 ~ 06/16)',
				start : '2022-06-14',
				end : '2022-06-16',
				url : 'festivalInfoCon?m_no=4',
				color : '#ff99c8'
			}, {
				title : '디저트 콘서트 (06/14 ~ 06/16)',
				start : '2022-06-14',
				end : '2022-06-16',
				url : 'festivalInfoCon?m_no=5',
				color : '#a2d2ff'
			}, {
				title : '소문난 운현궁',
				start : '2022-06-11',
				end : '2022-07-30',
				url : 'festivalInfoCon?m_no=6',
				color : '#fcf6bd'
			}, {
				title : '다알랴줌 [또봉마켓]',
				start : '22022-05-27',
				end : '2022-05-28',
				url : 'festivalInfoCon?m_no=8',
				color : '#ff99c8'
			}, {
				title : '[행사] 2022 돈의문박물관마을의 첫 번째 플리마켓 \'돈의문마켓\'',
				start : '2022-05-05',
				end : '2022-05-08',
				url : 'festivalInfoCon?m_no=9',
				color : '#ff99c8'
			}, {
				title : '2022 둘리뮤지엄 어린이날 행사',
				start : '2022-05-05',
				url : 'festivalInfoCon?m_no=10',
				color : '#ff99c8'
			}, {
				title : '2022 어린이날 박물관 축제 한마당',
				start : '2022-05-05',
				url : 'festivalInfoCon?m_no=11',
				color : '#a2d2ff'
			}, {
				title : '2022 서울장미축제',
				start : '2022-05-02',
				end : '2022-05-15',
				url : 'festivalInfoCon?m_no=12',
				color : '#fcf6bd'
			}, {
				title : '<2022 월간뮤지크>',
				start : '2022-04-30',
				end : '2022-11-30',
				url : 'festivalInfoCon?m_no=13',
				color : 'cbc0d3'
			}, {
				title : '[서울문화재단] 서서울예술교육센터 봄소풍 프로젝트 \'봄.봄.봄\'',
				start : '2022-04-30',
				end : '2022-05-28',
				url : 'festivalInfoCon?m_no=14',
				color : '#ff99c8'
			}, {
				title : '한성백제박물관 개관 10주년 기념 음악회',
				start : '2022-04-30',
				url : 'festivalInfoCon?m_no=15',
				color : '#ff99c8'
			}, {
				title : '문화가 있는 날 <풋풋한 성동 - 눈>',
				start : '2022-04-27',
				url : 'festivalInfoCon?m_no=16',
				color : '#ff99c8'
			}, {
				title : '2022 세빛섬 봄꽃 축제 <세빛 블루밍 가든>',
				start : '2022-04-25',
				end : '2022-05-29',
				url : 'festivalInfoCon?m_no=17',
				color : '#ff99c8'
			}, {
				title : '경춘선숲길 갤러리 음악회',
				start : '2022-04-23',
				url : 'festivalInfoCon?m_no=18',
				color : '#fcf6bd'
			},{
				title : '국가무형문화재 막걸리 challenge ',
				start : '2022-03-19',
				end : '2022-03-26',
				url : 'festivalInfoCon?m_no=20',
				color : '#ff99c8'
			}, {
				title : '생황으로 보는 소리 공간소리',
				start : '2022-03-10',
				url : 'festivalInfoCon?m_no=21',
				color : '#ff99c8'
			}, {
				title : '[MBN Y FORUM] 2030 청년 멘토링 축제 MBN Y 포럼 2022',
				start : '2022-02-16',
				url : 'festivalInfoCon?m_no=22',
				color : '#ff99c8'
			}, {
				title : '빅무브 with Lia KIM',
				start : '2022-01-08',
				end : '2022-02-20',
				url : 'festivalInfoCon?m_no=23',
				color : '#fcf6bd'
			}, {
				title : '강남 콩콩 랜선 축제 : 강남구 생활문화 활성화 사업',
				start : '2022-01-03',
				end : '2022-01-28',
				url : 'festivalInfoCon?m_no=24',
				color : '#ff99c8'
			}, {
				title : ' [서울애니메이션센터] 도심 속 문화체험공간! 만화도서관 & 애니소풍',
				start : '2022-01-01',
				end : '2022-01-30',
				url : 'festivalInfoCon?m_no=25',
				color : '#d0f4de'
			}, {
				title : '[DDP] <집합 이론>展',
				start : '2021-12-23',
				end : '2022-02-27',
				url : 'festivalInfoCon?m_no=26',
				color : '#ff99c8'
			}, {
				title : '2021 서교 생활문화 페스타 : 활활',
				start : '2021-12-17',
				end : '2021-12-19',
				url : 'festivalInfoCon?m_no=27',
				color : '#ff99c8'
			}, {
				title : '2021 서울빛초롱축제',
				start : '2021-11-26',
				end : '2021-12-05',
				url : 'festivalInfoCon?m_no=28',
				color : '#fec89a'
			}, {
				title : '11월 불조심 강조의 달 시민참여 안전문화 행사 \'불조심 게임\'',
				start : '2021-11-16',
				end : '2021-11-19',
				url : 'festivalInfoCon?m_no=29',
				color : '#ff99c8'
			},{
				title : '2021 랜선 정동야행',
				start : '2021-11-02',
				end : '2021-11-07',
				url : 'festivalInfoCon?m_no=31',
				color : '#fcf6bd'
			}, {
				title : '제6회 마포 M 클래식 축제 \'클래식 on Live #5\'',
				start : '2021-10-28',
				url : 'festivalInfoCon?m_no=32',
				color : '#ff99c8'
			}, {
				title : '제6회 마포 M 클래식 축제 \'클래식 on Live #4\'',
				start : '2021-10-27',
				url : 'festivalInfoCon?m_no=33',
				color : '#a2d2ff'
			}, {
				title : '제6회 마포 M 클래식 축제 ',
				start : '2021-10-26',
				url : 'festivalInfoCon?m_no=34',
				color : '#fcf6bd'
			}, {
				title : '제6회 마포 M 클래식 축제스페셜 - with 새우젓축제 폐막',
				start : '2021-10-24',
				url : 'festivalInfoCon?m_no=35',
				color : '#d0f4de'
			}, {
				title : '제6회 마포 M 클래식 축제 스페셜- 마리오네트 앙상블M',
				start : '2021-10-23',
				end : '2021-10-30',
				url : 'festivalInfoCon?m_no=36',
				color : '#fec89a'
			}, {
				title : '제6회 마포 M 클래식 축제 ',
				start : '2021-10-21',
				url : 'festivalInfoCon?m_no=37',
				color : '#c8b6ff'
			}, {
				title : '제6회 마포 M 클래식 축제 ',
				start : '2021-10-19',
				url : 'festivalInfoCon?m_no=38',
				color : '#ff99c8'
			}, {
				title : '제6회 마포 M 클래식 축제 ',
				start : '2021-10-15',
				url : 'festivalInfoCon?m_no=39',
				color : '#fcf6bd'
			}, {
				title : '제6회 마포 M 클래식 축제 ',
				start : '2021-10-12',
				url : 'festivalInfoCon?m_no=40',
				color : '#fec89a'
			}, {
				title : '2021 도봉산페스티벌',
				start : '2021-10-11',
				end : '2021-10-17',
				url : 'festivalInfoCon?m_no=41',
				color : '#ffadad'
			}, {
				title : '제6회 마포 M 클래식 축제 ',
				start : '2021-10-09',
				url : 'festivalInfoCon?m_no=42',
				color : '#d0f4de'
			}, {
				title : '제26회 강동선사문화축제',
				start : '2021-10-08',
				end : '2021-10-10',
				url : 'festivalInfoCon?m_no=43',
				color : '#ff99c8'
			}, {
				title : '제6회 마포 M 클래식 축제클래식 on Live #1',
				start : '2021-10-07',
				url : 'festivalInfoCon?m_no=44',
				color : '#ffadad'
			}, {
				title : '제6회 마포 M 클래식 축제 \'마포사계 \' <겨울>',
				start : '2021-10-05',
				url : 'festivalInfoCon?m_no=45',
				color : '#a2d2ff'
			}, {
				title : '2021 창신마을축제',
				start : '2021-10-01',
				end : '2021-11-07',
				url : 'festivalInfoCon?m_no=46',
				color : '#e4c1f9'
			}, {
				title : '운현궁 \'한가위 민속 한마당\'',
				start : '2021-09-20',
				end : '2021-09-22',
				url : 'festivalInfoCon?m_no=47',
				color : '#ff99c8'
			}, {
				title : '[2021 금천가족예술축제] 빛의 바다 : 빛을 품은 금천',
				start : '2021-09-01',
				end : '2021-09-15',
				url : 'festivalInfoCon?m_no=48',
				color : '#e4c1f9'
			}, {
				title : ' [서울애니메이션센터] 도심 속 문화체험공간! 만화도서관 & 애니소풍',
				start : '2021-08-01',
				end : '2021-08-31',
				url : 'festivalInfoCon?m_no=49',
				color : '#fcf6bd'
			}, {
				title : '제5회 대한민국 애완곤충경진대회',
				start : '2021-07-29',
				end : '2021-08-01',
				url : 'festivalInfoCon?m_no=50',
				color : '#d0f4de'
			}, {
				title : '제3회 서울 탭댄스 페스티벌 <블랙댄스버라이어티 >',
				start : '2021-07-20',
				end : '2021-07-21',
				url : 'festivalInfoCon?m_no=51',
				color : '#ff99c8'
			}, {
				title : '제3회 서울 탭댄스 페스티벌 < 탭댄스클럽 스윙46>',
				start : '2021-07-13',
				end : '2021-07-14',
				url : 'festivalInfoCon?m_no=52',
				color : '#a2d2ff'
			}, {
				title : '서울 밤도깨비 야시장 2021',
				start : '2021-07-09',
				end : '2021-09-25',
				url : 'festivalInfoCon?m_no=54',
				color : '#a0c4ff'
			}, {
				title : '[서울애니메이션센터] 도심 속 문화체험공간! 만화도서관 & 애니소풍',
				start : '2021-07-01',
				end : '2021-07-31',
				url : 'festivalInfoCon?m_no=55',
				color : '#fcf6bd'
			}, {
				title : '[서울애니메이션센터] 토이플래닛 페이퍼토이',
				start : '2021-07-01',
				end : '2021-07-31',
				url : 'festivalInfoCon?m_no=56',
				color : '#d0f4de'
			}, {
				title : '˝2021 제3회 마포국악페스티벌˝꼬레아 리듬터치 #2 <애오개 본산대놀이> ',
				start : '2021-06-30',
				url : 'festivalInfoCon?m_no=57',
				color : '#a2d2ff'
			}, {
				title : '관악문화재단 \'GIG(Groove In Gwanak) FESTA\' 개최',
				start : '2022-07-15',
				end : '2022-07-31',
				url : 'festivalInfoCon?m_no=59',
				color : '#a2d2ff'
			}, {
				title : '관악문화재단 [인문학 청년과 놀다] 토크콘서트',
				start : '2022-06-18',
				url : 'festivalInfoCon?m_no=60',
				color : '#feeafa'
			}, {
				title : '2022 서울드럼페스티벌 (Seoul Drum Festival)',
				start : '2022-06-17',
				end : '2022-06-18',
				url : 'festivalInfoCon?m_no=61',
				color : '#fcf6bd'
			}, {
				title : '[서울생활사박물관] 어린이체험실 연계 교육 \'우리는 동네 탐험대\'',
				start : '2022-06-10',
				end : '2022-09-17',
				url : 'festivalInfoCon?m_no=62',
				color : '#e4c1f9'
			}, {
				title : '[미디어센터 관악] 6월 미디어센터 관악 오리엔테이션',
				start : '2022-06-10',
				end : '2022-06-22',
				url : 'festivalInfoCon?m_no=63',
				color : '#a2d2ff'
			}, {
				title : 'STAF (START TRACK ART FESTIVAL)',
				start : '2022-05-26',
				end : '2022-06-10',
				url : 'festivalInfoCon?m_no=64',
				color : '#c8b6ff'
			}, {
				title : '[2022 세계문화예술교육주간] 꿈의 오케스트라 공연 및 원데이 클래스 참여 신청',
				start : '2022-05-23',
				end : '2022-05-29',
				url : 'festivalInfoCon?m_no=65',
				color : '#ffadad'
			}, {
				title : '2022 세계문화예술교육 주간 국제 심포지엄',
				start : '2022-05-23',
				url : 'festivalInfoCon?m_no=66',
				color : '#a2d2ff'
			}, {
				title : '2022 남산골 콘서트 \'춘월가(春.越.家)\'',
				start : '2022-05-06',
				end : '2022-07-08',
				url : 'festivalInfoCon?m_no=67',
				color : '#fec89a'
			}, {
				title : '관천로 문화플랫폼 S1472 [2022 S1472 어린이 주간] 개최 갤러리 음악회',
				start : '2022-05-05',
				end : '2022-05-08',
				url : 'festivalInfoCon?m_no=68',
				color : '#fcf6bd'
			}, {
				title : '[서울문화재단] 2022 서커스 시즌 프로그램 <서커스 캬라반 \'봄\'>',
				start : '2022-05-05',
				end : '2022-05-08',
				url : 'festivalInfoCon?m_no=69',
				color : '#d0f4de'
			}, {
				title : '2022 남산골 어린이마을 [행복 쥐의 남산 구경]',
				start : '2022-05-05',
				url : 'festivalInfoCon?m_no=70',
				color : '#a2d2ff'
			},{
				title : '[서울문화재단] 2022 거리예술 시즌 프로그램 <거리예술 캬라반 \'봄\'>',
				start : '2022-04-23',
				end : '2022-05-22',
				url : 'festivalInfoCon?m_no=72',
				color : '#e4c1f9'
			}, {
				title : '서울에너지드림센터 2022 가족환경그림대회',
				start : '2022-04-22',
				end : '2022-05-22',
				url : 'festivalInfoCon?m_no=73',
				color : '#ff99c8'
			}, {
				title : '나루랑 버스킹',
				start : '2022-04-07',
				end : '2022-10-28',
				url : 'festivalInfoCon?m_no=74',
				color : '#d0f4de'
			},{
				title : '국제 서울 음악 콩쿠르 시작 벨벳 같은 음악 주인공은?',
				start : '2022-03-06',
				end : '2022-05-14',
				url : 'festivalInfoCon?m_no=76',
				color : '#fcf6bd'
			}, {
				title : '2022 임인년 운현궁 설날 큰잔치',
				start : '2022-01-31',
				end : '2022-02-02',
				url : 'festivalInfoCon?m_no=77',
				color : '#ff99c8'
			}, {
				title : '[서울문화재단 후원] 2022 서울 아시테지 겨울축제',
				start : '2022-01-04',
				end : '2022-01-16',
				url : 'festivalInfoCon?m_no=78',
				color : '#ffadad'
			}, {
				title : '2021 올데이 뮤직 페스티벌',
				start : '2021-12-29',
				url : 'festivalInfoCon?m_no=79',
				color : '#a0c4ff'
			}, {
				title : '2021 경의선 책거리 겨울빛축제',
				start : '2021-12-17',
				end : '2022-02-28',
				url : 'festivalInfoCon?m_no=80',
				color : '#e4c1f9'
			}, {
				title : '2021 서울라이트',
				start : '2021-12-17',
				end : '2022-01-02',
				url : 'festivalInfoCon?m_no=81',
				color : '#ff99c8'
			}, {
				title : '청년제안사업 방방굿굿페스티벌',
				start : '2021-12-17',
				end : '2021-12-22',
				url : 'festivalInfoCon?m_no=82',
				color : '#d0f4de'
			}, {
				title : '12월 문화가 흐르는 청계천의 밤 - 청계천과 문화공간 ',
				start : '2021-12-08',
				url : 'festivalInfoCon?m_no=83',
				color : '#fcf6bd'
			}, {
				title : '관악 별빛축제',
				start : '2021-11-23',
				end : '2021-12-14',
				url : 'festivalInfoCon?m_no=84',
				color : '#fcf6bd'
			}, {
				title : '‘청춘 빛나는 무대 위로’<2021 청춘마이크 페스티벌> 개최',
				start : '2021-11-20',
				end : '2021-11-20',
				url : 'festivalInfoCon?m_no=85',
				color : '#a2d2ff'
			}, {
				title : '2021 금천하모니축제',
				start : '2021-11-10',
				end : '2021-11-14',
				url : 'festivalInfoCon?m_no=86',
				color : '#ff99c8'
			}, {
				title : '[서울애니메이션센터] 도심 속 문화체험공간! 만화도서관 & 애니소풍',
				start : '2021-11-01',
				end : '2021-11-30',
				url : 'festivalInfoCon?m_no=87',
				color : '#fec89a'
			}, {
				title : ' <2021 서울지식이음축제?포럼> 개최',
				start : '2021-10-22',
				end : '2021-10-29',
				url : 'festivalInfoCon?m_no=88',
				color : '#d0f4de'
			}, {
				title : '경의선 책거리 5주년 기념 저자데이 책축제  ',
				start : '2021-10-19',
				end : '2021-10-24',
				url : 'festivalInfoCon?m_no=89',
				color : '#fcf6bd'
			},{
				title : 'SIDance2021 제24회 서울세계무용축제',
				start : '2021-10-16',
				end : '2021-11-14',
				url : 'festivalInfoCon?m_no=91',
				color : '#a2d2ff'
			}, {
				title : '2021 \'서울은 미술관\' 공공미술축제 - \'노들 바람보다\'',
				start : '2021-10-15',
				end : '2021-11-30',
				url : 'festivalInfoCon?m_no=92',
				color : '#e4c1f9'
			}, {
				title : '2021 관악강감찬축제',
				start : '2021-10-14',
				end : '2021-10-17',
				url : 'festivalInfoCon?m_no=93',
				color : '#ff99c8'
			}, {
				title : '2021 서울무형문화축제',
				start : '2021-10-11',
				end : '2021-10-16',
				url : 'festivalInfoCon?m_no=94',
				color : '#c8b6ff'
			}, {
				title : '2021 종로한복축제',
				start : '2021-10-09',
				end : '2021-10-24',
				url : 'festivalInfoCon?m_no=95',
				color : '#fec89a'
			}, {
				title : '2021 제1회 광진 예술제',
				start : '2021-10-08',
				end : '2021-11-03',
				url : 'festivalInfoCon?m_no=96',
				color : '#fcf6bd'
			}, {
				title : '[서울문화재단] 2021 서울국제작가축제',
				start : '2021-10-08',
				end : '2021-10-24',
				url : 'festivalInfoCon?m_no=97',
				color : '#a0c4ff'
			}, {
				title : '제21회 한성백제문화제 대백제전',
				start : '2021-10-08',
				end : '2021-10-10',
				url : 'festivalInfoCon?m_no=98',
				color : '#ff99c8'
			}, {
				title : '아트숨비 2021 미술주간<은평의 얼굴>',
				start : '2021-10-07',
				end : '2021-10-17',
				url : 'festivalInfoCon?m_no=99',
				color : '#d0f4de'
			}, {
				title : '워터 서울 2021 : 기후변화 메가시티 그리고 물',
				start : '2021-10-07',
				end : '2021-10-09',
				url : 'festivalInfoCon?m_no=100',
				color : '#a2d2ff'
			}, {
				title : '2021 서울세계도시문화축제(Seoul Friendship Festival)',
				start : '2022-10-01',
				end : '2021-10-10',
				url : 'festivalInfoCon?m_no=101',
				color : '#c8b6ff'
			}, {
				title : '제25회 서울국제만화애니메이션페스티벌(SICAF2021)',
				start : '2021-10-01',
				end : '2021-10-04',
				url : 'festivalInfoCon?m_no=102',
				color : '#cbc0d3'
			}, {
				title : '제17회 서울와우북페스티벌',
				start : '2021-09-27',
				end : '2021-10-03',
				url : 'festivalInfoCon?m_no=103',
				color : '#fec89a'
			}, {
				title : '돈의문 추석 특별프로그램 운영',
				start : '2021-09-18',
				end : '2021-09-22',
				url : 'festivalInfoCon?m_no=104',
				color : '#c8b6ff'
			}, {
				title : '2021 서울도시건축비엔날레 [크로스로드 어떤 도시에 살 것인가]',
				start : '2021-09-16',
				end : '2021-10-31',
				url : 'festivalInfoCon?m_no=105',
				color : '#a2d2ff'
			}, {
				title : '2021 거리예술 시즌 프로그램(캬라반)',
				start : '2021-09-11',
				end : '2021-10-10',
				url : 'festivalInfoCon?m_no=106',
				color : '#fec89a'
			}, {
				title : '2021 서울 서커스 페스티벌 및 시즌 프로그램',
				start : '2021-09-03',
				end : '2021-09-26',
				url : 'festivalInfoCon?m_no=107',
				color : '#c8b6ff'
			}, {
				title : '서울일러스트레이션페어 V.11',
				start : '2021-08-25',
				end : '2021-08-28',
				url : 'festivalInfoCon?m_no=108',
				color : '#ffadad'
			}, {
				title : '문화가 있는 날 - 님을 기억하는 슬기로운 문화생활',
				start : '2021-07-28',
				end : '2021-09-25',
				url : 'festivalInfoCon?m_no=109',
				color : '#fcf6bd'
			}, {
				title : '2021서울블루스페스티벌 [SOUL CITY LIMITS]',
				start : '2021-07-15',
				end : '2021-07-18',
				url : 'festivalInfoCon?m_no=110',
				color : '#fec89a'
			}, {
				title : '돈의문박물관마을 특별행사 <돈의문구락부 낭만축제>',
				start : '2021-06-26',
				url : 'festivalInfoCon?m_no=111',
				color : '#d0f4de'
			}, {
				title : '서울문화재단 2020 예술창작지원활동 다원예술 선정작 POTENT CITY',
				start : '2021-10-01',
				end : '2021-10-04',
				url : 'festivalInfoCon?m_no=112',
				color : '#a0c4ff'
			}, {
				title : '[관악구민과 생활예술가가 함께하는 \'2021 기분 좋은 기부위크\']',
				start : '2021-12-10',
				end : '2021-12-11',
				url : 'festivalInfoCon?m_no=113',
				color : '#a0c4ff'
			}, {
				title : '방배골 1080 다어울림 축제 \'방배골(Goal)인(In)걷기축제\'',
				start : '2021-10-30',
				url : 'festivalInfoCon?m_no=114',
				color : '#e4c1f9'
			}, {
				title : '[서울문화재단]  열린지역축제 <같이만남 : 함께 예술하기>',
				start : '2021-10-22',
				end : '2021-10-24',
				url : 'festivalInfoCon?m_no=115',
				color : '#a2d2ff'
			}, {
				title : '2021 NEXTAR COMPETITION VOL.3  [케이팝 댄스 경연대회]',
				start : '2021-09-04',
				url : 'festivalInfoCon?m_no=116',
				color : '#ff99c8'
			}, {
				title : '제76주년 광복절 기념행사 [해방의 기쁨]',
				start : '2021-08-14',
				end : '2021-08-16',
				url : 'festivalInfoCon?m_no=117',
				color : '#ffadad'
			}, {
				title : '< 단풍 밟고 소풍 가자!> 홍릉단풍길 스탬프투어 ',
				start : '2021-11-06',
				end : '2021-11-14',
				url : 'festivalInfoCon?m_no=118',
				color : '#d0f4de'
			}, {
				title : '근현대사 추리여행 사라진 열쇠를 찾아라',
				start : '2021-09-01',
				end : '2021-12-31',
				url : 'festivalInfoCon?m_no=119',
				color : '#fec89a'
			}, {
				title : 'TikTok:나래한바퀴-교과서 속 세계민요 여행',
				start : '2022-05-27',
				url : 'festivalInfoCon?m_no=120',
				color : '#fec89a'
			}, {
				title : '2022 선농대제 개최',
				start : '2022-04-23',
				url : 'festivalInfoCon?m_no=121',
				color : '#fcf6bd'
			},{
				title : '남산골 전통체험',
				start : '2022-04-05',
				end : '2022-11-13',
				url : 'festivalInfoCon?m_no=123',
				color : '#e4c1f9'
			}, {
				title : '2022 남산골 온라인 설축제 \'호기로운 설\'',
				start : '2022-01-31',
				end : '2022-02-13',
				url : 'festivalInfoCon?m_no=124',
				color : '#d0f4de'
			}, {
				title : '2021 \'동지_虎婚\'',
				start : '2021-12-22',
				url : 'festivalInfoCon?m_no=125',
				color : '#c8b6ff'
			}, {
				title : '[2021관악강감찬축제] 이익주 교수와 함께하는 마스터클래스 고려',
				start : '2021-10-15',
				url : 'festivalInfoCon?m_no=126',
				color : '#fec89a'
			}, {
				title : '2021 훈련도감 무예 재현행사 <한양도성 전통무예와 만나다>',
				start : '2021-10-02',
				end : '2021-10-03',
				url : 'festivalInfoCon?m_no=127',
				color : '#ff99c8'
			}, {
				title : '제9회 한양도성문화제',
				start : '2021-10-01',
				end : '2021-10-10',
				url : 'festivalInfoCon?m_no=128',
				color : '#a2d2ff'
			}, {
				title : '시대별전통복식한복패션쇼',
				start : '2021-09-27',
				end : '2021-11-13',
				url : 'festivalInfoCon?m_no=129',
				color : '#fcf6bd'
			}, {
				title : '남산골 한옥마을 전통체험(78월)프로그램 OPEN!',
				start : '2021-07-01',
				end : '2021-08-29',
				url : 'festivalInfoCon?m_no=130',
				color : '#d0f4de'
			} ]
		});

		calendar.render();
	});
</script>

</head>
<body id="size">


	<div style="position: relative; height: 100%;" id="contain">
		<!-- 슬라이더 영역 -->
		<div class="bxslider" id="slider">
			<div>
			<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=117"><img src="dh_festival_slide_img/강북구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=8"><img src="dh_festival_slide_img/도봉구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=18"><img src="dh_festival_slide_img/노원구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=2"><img src="dh_festival_slide_img/은평구.png"></a>
			</div>
			<div>
				<img src="dh_festival_slide_img/slideBlanc.jpg">
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=77"><img src="dh_festival_slide_img/종로구.png"></a>
			</div>
			<div>
				<img src="dh_festival_slide_img/slideBlanc.jpg">
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=72"><img src="dh_festival_slide_img/동대문구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=12"><img src="dh_festival_slide_img/중랑구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=73"><img src="dh_festival_slide_img/마포구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=61"><img src="dh_festival_slide_img/용산구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=22"><img src="dh_festival_slide_img/중구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=75"><img src="dh_festival_slide_img/성동구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=74"><img src="dh_festival_slide_img/광진구.png"></a>
			</div>
			<div>
				<img src="dh_festival_slide_img/slideBlanc.jpg">
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=1"><img src="dh_festival_slide_img/양천구.png"></a>
			</div>
			<div>
				<img src="dh_festival_slide_img/slideBlanc.jpg">
			</div>
			<div>
				<img src="dh_festival_slide_img/slideBlanc.jpg">
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=120"><img src="dh_festival_slide_img/금천구.png"></a>
			</div>
			<div>
				<img src="dh_festival_slide_img/slideBlanc.jpg">
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=59"><img src="dh_festival_slide_img/관악구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=4"><img src="dh_festival_slide_img/서초구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=76"><img src="dh_festival_slide_img/강남구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=11"><img src="dh_festival_slide_img/송파구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=43"><img src="dh_festival_slide_img/강동구.png"></a>
			</div>
		</div>
		<!-- bxslider 닫음 -->
		
		<!-- 지도 영역 -->
		<div id="img_content">
			<!-- 텍스트 영역  -->
			<div class="plan_tit" style="position: relative;">
				<p class="tit">서울지도</p>
				<p class="dsc">
					원하시는 영역을 클릭하시면 해당 지역의 축제정보를 보실 수 있습니다. <span id="xBtn"
						style="position: absolute; right: 20px; bottom: 5px; cursor:pointer;"> <img
						src="dh_map_img/btn_close.png">
					</span>
				</p>
			</div>
			<!-- 텍스트 닫음 -->




			<!-- img 영역   -->

			<div class="map-1">
				<img src="dh_area_img/서울지도.png" alt="자치구별 관련축제정보"
					usemap="#autonomyMap" id="imgId1">

				<map name="autonomyMap">

					<area shape="poly"
						coords="226,17,217,19,203,44,207,57,215,68,227,75,240,84,251,85,265,75,241,49,233,32"
						href="javascript:custom_function(0);" alt="강북구">

					<area shape="poly"
						coords="240,29,227,13,246,1,265,10,268,26,272,55,260,64,245,52,237,41"
						href="javascript:custom_function(1);" alt="도봉구">

					<area shape="poly"
						coords="269,13,284,7,296,4,302,10,311,15,307,20,309,29,306,40,309,52,323,55,324,65,310,76,280,79,260,68,273,58,271,41"
						href="javascript:custom_function(2);" alt="노원구">

					<area shape="poly"
						coords="160,47,172,41,183,47,195,63,177,71,174,85,165,92,153,101,146,109,132,114,117,106,141,55"
						href="javascript:custom_function(3);" alt="은평구">

					<area shape="poly"
						coords="132,118,147,125,154,132,163,136,186,133,191,125,178,117,182,99,173,89"
						href="javascript:custom_function(4);" alt="서대문구">

					<area shape="poly"
						coords="178,73,195,67,202,75,206,83,206,90,201,97,242,122,212,123,195,124,181,120,185,107,179,87"
						href="javascript:custom_function(5);" alt="종로구">

					<area shape="poly"
						coords="205,59,239,87,270,83,286,88,265,96,255,105,242,111,228,106,204,99,213,93,198,66"
						href="javascript:custom_function(6);" alt="성북구">

					<area shape="poly"
						coords="244,115,248,122,261,120,287,131,293,121,286,105,286,89"
						href="javascript:custom_function(7);" alt="동대문구">

					<area shape="poly"
						coords="286,81,305,79,332,79,331,92,328,102,320,112,317,119,295,121,288,103"
						href="javascript:custom_function(8);" alt="중랑구">

					<area shape="poly"
						coords="94,119,143,148,155,148,164,149,170,156,175,155,187,143,185,135,161,137,147,125,129,119,112,105"
						href="javascript:custom_function(9);" alt="마포구">

					<area shape="poly"
						coords="173,157,179,167,205,173,220,167,229,159,234,153,222,145,205,139,192,139"
						href="javascript:custom_function(10);" alt="용산구">

					<area shape="poly"
						coords="188,134,196,125,207,127,220,125,242,125,242,134,229,144"
						href="javascript:custom_function(11);" alt="중구">

					<area shape="poly"
						coords="230,146,236,150,246,148,277,155,288,134,262,123,246,123,243,133"
						href="javascript:custom_function(12);" alt="성동구">

					<area shape="poly"
						coords="277,157,302,163,324,145,327,134,317,131,319,122,294,123"
						href="javascript:custom_function(13);" alt="광진구">

					<area shape="poly"
						coords="1,138,23,148,29,156,41,151,54,151,60,145,67,149,73,162,93,161,93,149,94,141,108,143,73,120,40,100,25,119"
						href="javascript:custom_function(14);" alt="강서구">

					<area shape="poly"
						coords="61,149,55,156,60,163,58,173,57,180,63,181,67,186,78,181,92,181,97,184,109,175,108,166,117,159,111,146,97,144,94,162,72,164"
						href="javascript:custom_function(15);" alt="양천구">

					<area shape="poly"
						coords="48,190,56,200,53,207,48,214,52,217,62,214,71,213,79,215,81,207,98,197,109,201,121,208,127,208,131,205,126,199,121,186,112,175,102,183,95,186,85,182,68,187,58,182"
						href="javascript:custom_function(16);" alt="구로구">

					<area shape="poly"
						coords="122,181,130,202,140,193,148,188,154,175,167,170,159,162,140,156,109,140,117,157,110,166,114,175"
						href="javascript:custom_function(17);" alt="영등포구">

					<area shape="poly"
						coords="101,202,113,218,115,230,122,234,127,242,127,249,139,248,147,245,155,236,150,229,141,230,141,221,136,216,140,211,134,207,124,210"
						href="javascript:custom_function(18);" alt="금천구">

					<area shape="poly"
						coords="135,203,151,197,156,193,161,197,181,195,186,194,188,201,194,209,203,209,203,199,205,189,198,184,173,174,158,178,150,188"
						href="javascript:custom_function(19);" alt="동작구">

					<area shape="poly"
						coords="136,205,142,211,139,216,143,225,150,227,156,234,158,240,165,248,175,246,188,245,191,239,199,239,203,229,209,229,209,220,201,212,188,206,184,195,162,197,156,195"
						href="javascript:custom_function(20);" alt="관악구">

					<area shape="poly"
						coords="207,190,205,213,210,218,211,227,220,224,224,217,235,231,250,224,253,219,255,227,257,244,267,249,291,248,299,242,309,228,300,213,271,220,261,207,252,202,236,169"
						href="javascript:custom_function(21);" alt="서초구">

					<area shape="poly"
						coords="236,166,254,200,261,202,271,219,288,214,301,210,311,224,323,224,331,227,339,222,320,198,291,189,283,172,272,164,249,158"
						href="javascript:custom_function(22);" alt="강남구">

					<area shape="poly"
						coords="286,175,291,188,314,194,321,198,339,220,349,220,344,214,350,214,362,204,372,198,372,190,366,185,360,189,353,183,352,170,333,165,335,156,330,152,318,168,305,173"
						href="javascript:custom_function(23);" alt="송파구">

					<area shape="poly"
						coords="331,149,337,153,335,163,351,168,357,172,373,148,386,147,393,146,391,136,385,114,361,126,344,129"
						href="javascript:custom_function(24);" alt="강동구">

				</map>
			</div>

		</div>
	</div>

	<!-- bxslider 닫음 -->



	<!-- bxslider설정 -->
	<script>
		let slider = $('.bxslider').bxSlider({
			auto : true,
			autoControls : false,
			stopAutoOnClick : false,
			pager : false,
			controls : false,
			adaptiveHeight : true,
		    touchEnabled :false 
		});
	</script>






	<script>
		function custom_function(index) {

			if (typeof slider.goToSlide === 'function') {
				slider.goToSlide(index); // 해당 슬라이더로 이동 
			} else { //무엇인가 잘못됬으면
				alert('에러');
			}

			if (index == 0) {
				document.getElementById("imgId1").src = "dh_area_img/강북구.png";
			}
			if (index == 1) {
				document.getElementById("imgId1").src = "dh_area_img/도봉구.png";
			}
			if (index == 2) {
				document.getElementById("imgId1").src = "dh_area_img/노원구.png";
			}
			if (index == 3) {
				document.getElementById("imgId1").src = "dh_area_img/은평구.png";
			}
			if (index == 4) {
				document.getElementById("imgId1").src = "dh_area_img/서대문구.png";
			}
			if (index == 5) {
				document.getElementById("imgId1").src = "dh_area_img/종로구.png";
			}
			if (index == 6) {
				document.getElementById("imgId1").src = "dh_area_img/성북구.png";
			}
			if (index == 7) {
				document.getElementById("imgId1").src = "dh_area_img/동대문구.png";
			}
			if (index == 8) {
				document.getElementById("imgId1").src = "dh_area_img/중랑구.png";
			}
			if (index == 9) {
				document.getElementById("imgId1").src = "dh_area_img/마포구.png";
			}
			if (index == 10) {
				document.getElementById("imgId1").src = "dh_area_img/용산구.png";
			}
			if (index == 11) {
				document.getElementById("imgId1").src = "dh_area_img/중구.png";
			}
			if (index == 12) {
				document.getElementById("imgId1").src = "dh_area_img/성동구.png";
			}
			if (index == 13) {
				document.getElementById("imgId1").src = "dh_area_img/광진구.png";
			}
			if (index == 14) {
				document.getElementById("imgId1").src = "dh_area_img/강서구.png";
			}
			if (index == 15) {
				document.getElementById("imgId1").src = "dh_area_img/양천구.png";
			}
			if (index == 16) {
				document.getElementById("imgId1").src = "dh_area_img/구로구.png";
			}
			if (index == 17) {
				document.getElementById("imgId1").src = "dh_area_img/영등포구.png";
			}
			if (index == 18) {
				document.getElementById("imgId1").src = "dh_area_img/금천구.png";
			}
			if (index == 19) {
				document.getElementById("imgId1").src = "dh_area_img/동작구.png";
			}
			if (index == 20) {
				document.getElementById("imgId1").src = "dh_area_img/관악구.png";
			}
			if (index == 21) {
				document.getElementById("imgId1").src = "dh_area_img/서초구.png";
			}
			if (index == 22) {
				document.getElementById("imgId1").src = "dh_area_img/강남구.png";
			}
			if (index == 23) {
				document.getElementById("imgId1").src = "dh_area_img/송파구.png";
			}
			if (index == 24) {
				document.getElementById("imgId1").src = "dh_area_img/강동구.png";
			}

		}
	</script>

	<script type="text/javascript" src="dh_css/jquery.js"></script>

	<script type="text/javascript">
		$(function() {
			var observer = new MutationObserver(
					function(mutations) {
						target = document.getElementById('slider');
						let child = $(target).find("div");
						for (var i = 0; i < 26; i++) {
							let includeFalse = $(child[i]).attr("aria-hidden");
							if (includeFalse == 'false') {
								/* alert(i);  */

								if (i == 1) {
									document.getElementById("imgId1").src = "dh_area_img/강북구.png";
								}
								if (i == 2) {
									document.getElementById("imgId1").src = "dh_area_img/도봉구.png";
								}
								if (i == 3) {
									document.getElementById("imgId1").src = "dh_area_img/노원구.png";
								}
								if (i == 4) {
									document.getElementById("imgId1").src = "dh_area_img/은평구.png";
								}
								if (i == 5) {
									document.getElementById("imgId1").src = "dh_area_img/서대문구.png";
								}
								if (i == 6) {
									document.getElementById("imgId1").src = "dh_area_img/종로구.png";
								}
								if (i == 7) {
									document.getElementById("imgId1").src = "dh_area_img/성북구.png";
								}
								if (i == 8) {
									document.getElementById("imgId1").src = "dh_area_img/동대문구.png";
								}
								if (i == 9) {
									document.getElementById("imgId1").src = "dh_area_img/중랑구.png";
								}
								if (i == 10) {
									document.getElementById("imgId1").src = "dh_area_img/마포구.png";
								}
								if (i == 11) {
									document.getElementById("imgId1").src = "dh_area_img/용산구.png";
								}
								if (i == 12) {
									document.getElementById("imgId1").src = "dh_area_img/중구.png";
								}
								if (i == 13) {
									document.getElementById("imgId1").src = "dh_area_img/성동구.png";
								}
								if (i == 14) {
									document.getElementById("imgId1").src = "dh_area_img/광진구.png";
								}
								if (i == 15) {
									document.getElementById("imgId1").src = "dh_area_img/강서구.png";
								}
								if (i == 16) {
									document.getElementById("imgId1").src = "dh_area_img/양천구.png";
								}
								if (i == 17) {
									document.getElementById("imgId1").src = "dh_area_img/구로구.png";
								}
								if (i == 18) {
									document.getElementById("imgId1").src = "dh_area_img/영등포구.png";
								}
								if (i == 19) {
									document.getElementById("imgId1").src = "dh_area_img/금천구.png";
								}
								if (i == 20) {
									document.getElementById("imgId1").src = "dh_area_img/동작구.png";
								}
								if (i == 21) {
									document.getElementById("imgId1").src = "dh_area_img/관악구.png";
								}
								if (i == 22) {
									document.getElementById("imgId1").src = "dh_area_img/서초구.png";
								}
								if (i == 23) {
									document.getElementById("imgId1").src = "dh_area_img/강남구.png";
								}
								if (i == 24) {
									document.getElementById("imgId1").src = "dh_area_img/송파구.png";
								}
								if (i == 25) {
									document.getElementById("imgId1").src = "dh_area_img/강동구.png";
								}

							} // if문 닫음							

						} // for문 닫음

					}); // function mutations 닫음

			let target = document.getElementById('slider');
			observer.observe(target, {
				attributes : true,
				attributeFilter : [ 'style' ]
			});

		}); // function 닫음

		/* let ss = $("#slider");
		$(ss).csschange(function() {
		let child = $(ss).children();
		$(child).each(function () {
			console.log($(child).attr("aria-hidden"));
		});
			
		
		
		}); */
	</script>
	<!--  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  
  <script src="./jquery.rwdImageMaps.min.js"></script> -->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-rwdImageMaps/1.6/jquery.rwdImageMaps.js"></script>

	<script type="text/javascript">
		$(function() {
			$('img[usemap]').rwdImageMaps();

		});
	</script>
	<script type="text/javascript">
		$(function() {

			// Menu Tabular
			var $menu_tabs = $('.menu__tabs li a');
			$menu_tabs.on('click', function(e) {
				e.preventDefault();
				$menu_tabs.removeClass('active');
				$(this).addClass('active');

				$('.menu__item').fadeOut(300);
				$(this.hash).delay(300).fadeIn();
			});

		});
	</script>

	<div id="addBtn"
		style="position: fixed; right: 20px; bottom: 20px; z-index: 3; cursor:pointer;">
		<span id="plusBtn"> <img src="dh_map_img/info_map_btn.png">
		</span>
	</div>

<div style="display: flex; position: relative; width: 100%; height: 100%; border: 5px solid blue;" id="MainContainer">


	<div id="leftInformation" style="border : 5px solid red;">

		<!-- 축제정보 보러가기 영역 -->
		<div class="photo" style="border: 1px solid blue;">
			<span id="FestivalTxt">축제정보<br> 보러가기</span> 
			<a href='festivalHC'><img alt="축제정보" src="mj_img/sakura.jpg"
				style="width: 100%;" id="gotoFesInfoImg">
				<div class="glow-wrap">
					<i class="glow"></i>
				</div></a>
			<p id="click">→ Click me!</p>
		</div>

		<!-- 게시판 노출 영역 -->
		<%-- <div id=showBoard style="width: 100%;">
			<table class="showTable" >
				<tr>
					<td class=showBoardTitle colspan="2">게시판</td>
					<td class="gotoBoard" colspan="1"><a
						onclick="location.href='BoardViewHC?cate=all'">+ MORE</a></td>
				</tr>
				</table>
				<table style="border: 1px solid gray; width: 100%;">
					<tr class="showTbTitle">
						<td class="showListNo">글 번호</td>
						<td class="showListCate">카테고리</td>
						<td class="showListTitle">제목</td>
					</tr>
					<c:forEach items="${boards }" var="b">
						<tr class="showList"
							onclick="location.href='BoardViewHC?number=${b.no}'">
							<td class="showListNo">${b.no }</td>
							<td class="showListCate">${b.cate }</td>
							<td class="showListTitle">${b.title }</td>
						</tr>
					</c:forEach>
			</table>
		</div> --%>



		<!-- 게시판 노출 영역 -->
		<div class="menu" style="border: 5px solid yellow; width: 100%; height: 100%;">
		
			<ul class="menu__tabs" >
			    <li><a class="active item1" href="#item-1"><i class="fa fa-star"></i>전체보기</a></li>
				<li><a class="item2" href="#item-2"><i class="fa fa-link"></i>자유게시판</a></li>
				<li><a class="item3" href="#item-3"><i class="fa fa-photo"></i>후기게시판</a></li>
			</ul>
			
			<section class="menu__wrapper" style="border: 3px solid black;">

				<table id="item-1" class="menu__item item-active"
					style="border: 1px solid gray; width: 100%;">
					<tr class="showTbTitle">
						<td class="showListNo">글번호</td>
						<td class="showListCate">카테고리</td>
						<td class="showListTitle">제목</td>
					</tr>
					<c:forEach items="${boards}" var="b">
						<tr class="showList"
							onclick="location.href='BoardViewHC?number=${b.no}'">
							<td class="showListNo">${b.no}</td>
							<td class="showListCate">${b.cate}</td>
							<td class="showListTitle">${b.title}</td>
						</tr>
					</c:forEach>
				</table>

				<table id="item-2" class="menu__item"
					style="border: 1px solid gray; width: 100%;">
					<tr class="showTbTitle">
						<td class="showListNo">글번호</td>
						<td class="showListCate">카테고리</td>
						<td class="showListTitle">제목</td>
					</tr>
					<c:forEach items="${freeBoards }" var="b">
						<tr class="showList"
							onclick="location.href='BoardViewHC?number=${b.no}'">
							<td class="showListNo">${b.no }</td>
							<td class="showListCate">${b.cate }</td>
							<td class="showListTitle">${b.title }</td>
						</tr>
					</c:forEach>
				</table>

				<table id="item-3" class="menu__item"
					style="border: 1px solid gray; width: 100%;">
					<tr class="showTbTitle">
						<td class="showListNo">글번호</td>
						<td class="showListCate">카테고리</td>
						<td class="showListTitle">제목</td>
					</tr>

					<c:forEach items="${reviewBoards }" var="b">
						<tr class="showList"
							onclick="location.href='BoardViewHC?number=${b.no}'">
							<td class="showListNo">${b.no }</td>
							<td class="showListCate">${b.cate }</td>
							<td class="showListTitle">${b.title }</td>
						</tr>
					</c:forEach>
				</table>
				<a class="btnClickBoard"
					onclick="location.href='BoardViewHC?cate=all'">▶ +MORE</a>
			</section>

			<div class="menu--shadow"></div>
			
		</div>



	</div>
	
	
	
	<!-- 캘린더 영역 -->
	<div id='calendar' style="border: 3px solid #cd0028;">
		<a href='fesCalendarCon'> 더보기 </a>
	</div>
</div>
	<!-- 날씨 위젯이랑 딱 달라붙는 이슈 해결을 위해 만든 빈 테이블 -->
 	<table style="width: 100%; height: 30px;">
		<tr>
			<td></td>
		</tr>
	</table> 

</body>
</html>