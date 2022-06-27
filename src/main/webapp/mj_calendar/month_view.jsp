<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='mj_calendar/lib/main.css' rel='stylesheet' />
<script src='mj_calendar/lib/main.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialDate: '2022-06-12',
      editable: true,
      selectable: true,
      businessHours: true, 
      dayMaxEvents: true, // allow "more" link when too many events
      events: [
    	  {
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
			}
      ]
    });

    calendar.render();
  });

</script>
<style>



  body {
  
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 1100px;
    margin: 0 auto;
  }

</style>
</head>
<body>
	<h1>캘린더</h1>
  <div id='calendar'></div>

</body>
</html>