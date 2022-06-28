<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='mj_calendar/lib/main.css' rel='stylesheet' />
<!-- 폰트영역 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet"> 
<script src='mj_calendar/lib/main.js'></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			height : '100%',
			expandRows : true,
			slotMinTime : '08:00',
			slotMaxTime : '20:00',
			headerToolbar : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,listWeek'
			},
			initialView : 'dayGridMonth',
			initialDate : '2022-06-12',
			navLinks : true, // can click day/week names to navigate views
			editable : true,
			selectable : true,
			nowIndicator : true,
			dayMaxEvents : true, // allow "more" link when too many events
			events : [{
				title : '[ソウル文化財団］6月春散歩プロジェクト「夏迎え」',
				start : '2022-06-25',
				url : 'festivalInfoCon_jp?m_no=1',
				color : '#ff99c8'
			}, {
				title : '[所々方々 文化共感事業] ウンピョンにほれるHELLO! RHYTHM!',
				start : '2022-06-23',
				end : '2022-06-26',
				url : 'festivalInfoCon_jp?m_no=2',
				color : '#ff99c8'

			}, {
				title : '2022 ナルストリートダンスフェスティバル[ナルブレーキングバトル2on2]',
				start : '2022-06-18',
				url : 'festivalInfoCon_jp?m_no=3',
				color : '#ff99c8'
			}, {
				title : 'アート手作りマーケット (06/14 ~ 06/16)',
				start : '2022-06-14',
				end : '2022-06-16',
				url : 'festivalInfoCon_jp?m_no=4',
				color : '#ff99c8'
			}, {
				title : 'デザートコンサート (06/14 ~ 06/16)',
				start : '2022-06-14',
				end : '2022-06-16',
				url : 'festivalInfoCon_jp?m_no=5',
				color : '#a2d2ff'
			}, {
				title : '名物の雲峴宮',
				start : '2022-06-11',
				end : '2022-07-30',
				url : 'festivalInfoCon_jp?m_no=6',
				color : '#fcf6bd'
			}, {
				title : '教えちゃる！[トボンマーケット]',
				start : '22022-05-27',
				end : '2022-05-28',
				url : 'festivalInfoCon_jp?m_no=8',
				color : '#ff99c8'
			}, {
				title : '2022 敦義門マーケット',
				start : '2022-05-05',
				end : '2022-05-08',
				url : 'festivalInfoCon_jp?m_no=9',
				color : '#ff99c8'
			}, {
				title : '2022 ドゥーリーミュージアム こどもの日 行事',
				start : '2022-05-05',
				url : 'festivalInfoCon_jp?m_no=10',
				color : '#ff99c8'
			}, {
				title : '2022 こどもの日 博物館 祭り',
				start : '2022-05-05',
				url : 'festivalInfoCon_jp?m_no=11',
				color : '#a2d2ff'
			}, {
				title : '2022 ソウルバラ祭り',
				start : '2022-05-02',
				end : '2022-05-15',
				url : 'festivalInfoCon_jp?m_no=12',
				color : '#fcf6bd'
			}, {
				title : '<2022 月刊ミュージック>',
				start : '2022-04-30',
				end : '2022-11-30',
				url : 'festivalInfoCon_jp?m_no=13',
				color : 'cbc0d3'
			}, {
				title : '[ソウル文化財団] 西ソウル芸術教育センター春散歩プロジェクト「春・春・春」',
				start : '2022-04-30',
				end : '2022-05-28',
				url : 'festivalInfoCon_jp?m_no=14',
				color : '#ff99c8'
			}, {
				title : 'ハンソン百済博物館開館10周年記念音楽会',
				start : '2022-04-30',
				url : 'festivalInfoCon_jp?m_no=15',
				color : '#ff99c8'
			}, {
				title : '文化がある日「みずみずしいソンドンー目」',
				start : '2022-04-27',
				url : 'festivalInfoCon_jp?m_no=16',
				color : '#ff99c8'
			}, {
				title : '2022 セビッ島 春花祭り <セビッ ブルーミング ガーデン>',
				start : '2022-04-25',
				end : '2022-05-29',
				url : 'festivalInfoCon_jp?m_no=17',
				color : '#ff99c8'
			}, {
				title : 'キョンチュン線の森路ギャラリー音楽会',
				start : '2022-04-23',
				url : 'festivalInfoCon_jp?m_no=18',
				color : '#fcf6bd'
			},{
				title : '国家指定無形文化財マッコリchallenge',
				start : '2022-03-19',
				end : '2022-03-26',
				url : 'festivalInfoCon_jp?m_no=20',
				color : '#ff99c8'
			}, {
				title : '笙でみる音ー空間音',
				start : '2022-03-10',
				url : 'festivalInfoCon_jp?m_no=21',
				color : '#ff99c8'
			}, {
				title : '[MBN Y FORUM] 2030 青年メンタリングフェスティバルMBN Y フォーラム 2022',
				start : '2022-02-16',
				url : 'festivalInfoCon_jp?m_no=22',
				color : '#ff99c8'
			}, {
				title : 'ビックムーブ with Lia KIM',
				start : '2022-01-08',
				end : '2022-02-20',
				url : 'festivalInfoCon_jp?m_no=23',
				color : '#fcf6bd'
			}, {
				title : 'カンナムネットフェスティバル : カンナム区生活文化活性化事業',
				start : '2022-01-03',
				end : '2022-01-28',
				url : 'festivalInfoCon_jp?m_no=24',
				color : '#ff99c8'
			}, {
				title : ' [ソウルアニメーションセンター] 都会の文化体験空間！漫画図書館＆アニメ散歩',
				start : '2022-01-01',
				end : '2022-01-30',
				url : 'festivalInfoCon_jp?m_no=25',
				color : '#d0f4de'
			}, {
				title : '[DDP] <集合理論>展',
				start : '2021-12-23',
				end : '2022-02-27',
				url : 'festivalInfoCon_jp?m_no=26',
				color : '#ff99c8'
			}, {
				title : '2021 ソギョ生活文化フェスタ：活活',
				start : '2021-12-17',
				end : '2021-12-19',
				url : 'festivalInfoCon_jp?m_no=27',
				color : '#ff99c8'
			}, {
				title : '2021 ソウル光灯籠祭り',
				start : '2021-11-26',
				end : '2021-12-05',
				url : 'festivalInfoCon_jp?m_no=28',
				color : '#fec89a'
			}, {
				title : '11月火の用心強調の月市民参与安全文化行事「火の用心ゲーム」',
				start : '2021-11-16',
				end : '2021-11-19',
				url : 'festivalInfoCon_jp?m_no=29',
				color : '#ff99c8'
			},{
				title : '2021ネットでチョンドン夜行',
				start : '2021-11-02',
				end : '2021-11-07',
				url : 'festivalInfoCon_jp?m_no=31',
				color : '#fcf6bd'
			}, {
				title : '第6回マポ M クラシックフェスティバル「クラシックon Live #5」',
				start : '2021-10-28',
				url : 'festivalInfoCon_jp?m_no=32',
				color : '#ff99c8'
			}, {
				title : '第6回マポ M クラシックフェスティバル「クラシックon Live #4」',
				start : '2021-10-27',
				url : 'festivalInfoCon_jp?m_no=33',
				color : '#a2d2ff'
			}, {
				title : '第6回マポ M クラシックフェスティバル「クラシック',
				start : '2021-10-26',
				url : 'festivalInfoCon_jp?m_no=34',
				color : '#fcf6bd'
			}, {
				title : '第6回マポ M クラシックフェスティバルスペシャル- with アミの塩辛閉幕',
				start : '2021-10-24',
				url : 'festivalInfoCon_jp?m_no=35',
				color : '#d0f4de'
			}, {
				title : '第6回マポ M クラシックフェスティバルスペシャル-マリオネット アンサンブルM',
				start : '2021-10-23',
				end : '2021-10-30',
				url : 'festivalInfoCon_jp?m_no=36',
				color : '#fec89a'
			}, {
				title : '第6回マポ M クラシックフェスティバル',
				start : '2021-10-21',
				url : 'festivalInfoCon_jp?m_no=37',
				color : '#c8b6ff'
			}, {
				title : '第6回マポ M クラシックフェスティバル',
				start : '2021-10-19',
				url : 'festivalInfoCon_jp?m_no=38',
				color : '#ff99c8'
			}, {
				title : '第6回マポ M クラシックフェスティバル',
				start : '2021-10-15',
				url : 'festivalInfoCon_jp?m_no=39',
				color : '#fcf6bd'
			}, {
				title : '第6回マポ M クラシックフェスティバル',
				start : '2021-10-12',
				url : 'festivalInfoCon_jp?m_no=40',
				color : '#fec89a'
			}, {
				title : '2021 トボン山フェスティバル',
				start : '2021-10-11',
				end : '2021-10-17',
				url : 'festivalInfoCon_jp?m_no=41',
				color : '#ffadad'
			}, {
				title : '第6回マポ M クラシックフェスティバル',
				start : '2021-10-09',
				url : 'festivalInfoCon_jp?m_no=42',
				color : '#d0f4de'
			}, {
				title : '第26回カンドン先史文化祭り',
				start : '2021-10-08',
				end : '2021-10-10',
				url : 'festivalInfoCon_jp?m_no=43',
				color : '#ff99c8'
			}, {
				title : '第6回マポ M クラシックフェスティバルクラシック on Live #1',
				start : '2021-10-07',
				url : 'festivalInfoCon_jp?m_no=44',
				color : '#ffadad'
			}, {
				title : '第6回マポ M クラシックフェスティバル\'マポ四季 \' <冬>',
				start : '2021-10-05',
				url : 'festivalInfoCon_jp?m_no=45',
				color : '#a2d2ff'
			}, {
				title : '2021 チャンシン町祭り',
				start : '2021-10-01',
				end : '2021-11-07',
				url : 'festivalInfoCon_jp?m_no=46',
				color : '#e4c1f9'
			}, {
				title : '雲峴宮「チュソク民族ハンマダン」',
				start : '2021-09-20',
				end : '2021-09-22',
				url : 'festivalInfoCon_jp?m_no=47',
				color : '#ff99c8'
			}, {
				title : '[2021クムチョン家族芸術フェスティバル]光の海 : 光を抱きしめたクムチョン',
				start : '2021-09-01',
				end : '2021-09-15',
				url : 'festivalInfoCon_jp?m_no=48',
				color : '#e4c1f9'
			}, {
				title : ' [ソウルアニメーションセンター] 都会の文化体験空間！漫画図書館＆アニメ散歩',
				start : '2021-08-01',
				end : '2021-08-31',
				url : 'festivalInfoCon_jp?m_no=49',
				color : '#fcf6bd'
			}, {
				title : '第5回韓国昆虫コンテスト',
				start : '2021-07-29',
				end : '2021-08-01',
				url : 'festivalInfoCon_jp?m_no=50',
				color : '#d0f4de'
			}, {
				title : '第3回ソウルタップダンスフェスティバル「ブラックダンスバラエティー」',
				start : '2021-07-20',
				end : '2021-07-21',
				url : 'festivalInfoCon_jp?m_no=51',
				color : '#ff99c8'
			}, {
				title : '第3回ソウルタップダンスフェスティバル< タップダンススウィング46>',
				start : '2021-07-13',
				end : '2021-07-14',
				url : 'festivalInfoCon_jp?m_no=52',
				color : '#a2d2ff'
			}, {
				title : 'ソウル夜お化け夜市場2021',
				start : '2021-07-09',
				end : '2021-09-25',
				url : 'festivalInfoCon_jp?m_no=54',
				color : '#a0c4ff'
			}, {
				title : ' [ソウルアニメーションセンター] 都会の文化体験空間！漫画図書館＆アニメ散歩',
				start : '2021-07-01',
				end : '2021-07-31',
				url : 'festivalInfoCon_jp?m_no=55',
				color : '#fcf6bd'
			}, {
				title : '[ソウルアニメーションセンター] トイプラネットペーパトイ',
				start : '2021-07-01',
				end : '2021-07-31',
				url : 'festivalInfoCon_jp?m_no=56',
				color : '#d0f4de'
			}, {
				title : '2021 第3回 マポ国楽フェスティバル　韓国リズムタッチ#2 <エオゲボンサン大遊び> ',
				start : '2021-06-30',
				url : 'festivalInfoCon_jp?m_no=57',
				color : '#a2d2ff'
			}, {
				title : 'クァナク文化財団「GIG(Groove In Gwanak) FESTA」開催',
				start : '2022-07-15',
				end : '2022-07-31',
				url : 'festivalInfoCon_jp?m_no=59',
				color : '#a2d2ff'
			}, {
				title : 'クァナク文化財団[人文学青年と遊ぶ]トークコンサート',
				start : '2022-06-18',
				url : 'festivalInfoCon_jp?m_no=60',
				color : '#feeafa'
			}, {
				title : '2022 Seoul Drum Festival',
				start : '2022-06-17',
				end : '2022-06-18',
				url : 'festivalInfoCon_jp?m_no=61',
				color : '#fcf6bd'
			}, {
				title : '[ソウル生活歴史博物館]子供体験室連携教育「私たちは町冒険隊」',
				start : '2022-06-10',
				end : '2022-09-17',
				url : 'festivalInfoCon_jp?m_no=62',
				color : '#e4c1f9'
			}, {
				title : '[メディアセンタークァナク] 6月メディアセンタークァナクオリエンテーション',
				start : '2022-06-10',
				end : '2022-06-22',
				url : 'festivalInfoCon_jp?m_no=63',
				color : '#a2d2ff'
			}, {
				title : 'STAF (START TRACK ART FESTIVAL)',
				start : '2022-05-26',
				end : '2022-06-10',
				url : 'festivalInfoCon_jp?m_no=64',
				color : '#c8b6ff'
			}, {
				title : '[2022 世界文化芸術教育週間] 夢のオケストラ公演およびワンデークラス参与申し込み',
				start : '2022-05-23',
				end : '2022-05-29',
				url : 'festivalInfoCon_jp?m_no=65',
				color : '#ffadad'
			}, {
				title : '2022世界文化芸術教育週間国際シンポジウム',
				start : '2022-05-23',
				url : 'festivalInfoCon_jp?m_no=66',
				color : '#a2d2ff'
			}, {
				title : '2022 ナンサンコルハンオクコンサート「春.越.家」',
				start : '2022-05-06',
				end : '2022-07-08',
				url : 'festivalInfoCon_jp?m_no=67',
				color : '#fec89a'
			}, {
				title : 'カンセン路文化プラットホーム S1472 [2022 S1472 子供週間]開催',
				start : '2022-05-05',
				end : '2022-05-08',
				url : 'festivalInfoCon_jp?m_no=68',
				color : '#fcf6bd'
			}, {
				title : '[ソウル文化財団] 2022 サーカスシーズンプログラム サーカスキャラバン「春」',
				start : '2022-05-05',
				end : '2022-05-08',
				url : 'festivalInfoCon_jp?m_no=69',
				color : '#d0f4de'
			}, {
				title : '2022 南山コル子供の町「幸せなネズミの南山見回り」',
				start : '2022-05-05',
				url : 'festivalInfoCon_jp?m_no=70',
				color : '#a2d2ff'
			},{
				title : '[ソウル文化財団] 2022 街芸術シーズンプログラム「街芸術キャラバン「春」',
				start : '2022-04-23',
				end : '2022-05-22',
				url : 'festivalInfoCon_jp?m_no=72',
				color : '#e4c1f9'
			}, {
				title : 'ソウルエネルギー夢センター 2022家族環境描き大会',
				start : '2022-04-22',
				end : '2022-05-22',
				url : 'festivalInfoCon_jp?m_no=73',
				color : '#ff99c8'
			}, {
				title : 'ナルとバスキング',
				start : '2022-04-07',
				end : '2022-10-28',
				url : 'festivalInfoCon_jp?m_no=74',
				color : '#d0f4de'
			},{
				title : '国際ソウル音楽コンクール',
				start : '2022-03-06',
				end : '2022-05-14',
				url : 'festivalInfoCon_jp?m_no=76',
				color : '#fcf6bd'
			}, {
				title : '2022 寅年雲峴宮旧正月大宴会',
				start : '2022-01-31',
				end : '2022-02-02',
				url : 'festivalInfoCon_jp?m_no=77',
				color : '#ff99c8'
			}, {
				title : '[ソウル文化財団後援] 2022ソウルアシテジ冬祭り',
				start : '2022-01-04',
				end : '2022-01-16',
				url : 'festivalInfoCon_jp?m_no=78',
				color : '#ffadad'
			}, {
				title : '2021 オールデーミュージックフェスティバル',
				start : '2021-12-29',
				url : 'festivalInfoCon_jp?m_no=79',
				color : '#a0c4ff'
			}, {
				title : '2021 京義線本街冬光祭り',
				start : '2021-12-17',
				end : '2022-02-28',
				url : 'festivalInfoCon_jp?m_no=80',
				color : '#e4c1f9'
			}, {
				title : '2021 ソウルライト',
				start : '2021-12-17',
				end : '2022-01-02',
				url : 'festivalInfoCon_jp?m_no=81',
				color : '#ff99c8'
			}, {
				title : '青年提案事業 バンバングッグッフェスティバル',
				start : '2021-12-17',
				end : '2021-12-22',
				url : 'festivalInfoCon_jp?m_no=82',
				color : '#d0f4de'
			}, {
				title : '12月文化が流れるチョンゲチョンの夜ーチョンゲチョンと文化空間',
				start : '2021-12-08',
				url : 'festivalInfoCon_jp?m_no=83',
				color : '#fcf6bd'
			}, {
				title : 'クァナク星の光祭り',
				start : '2021-11-23',
				end : '2021-12-14',
				url : 'festivalInfoCon_jp?m_no=84',
				color : '#fcf6bd'
			}, {
				title : '「青春光る舞台上へ」<2021 青春マイクフェスティバル>開催',
				start : '2021-11-20',
				end : '2021-11-20',
				url : 'festivalInfoCon_jp?m_no=85',
				color : '#a2d2ff'
			}, {
				title : '2021 クムチョンハモニフェスティバル',
				start : '2021-11-10',
				end : '2021-11-14',
				url : 'festivalInfoCon_jp?m_no=86',
				color : '#ff99c8'
			}, {
				title : ' [ソウルアニメーションセンター] 都会の文化体験空間！漫画図書館＆アニメ散歩',
				start : '2021-11-01',
				end : '2021-11-30',
				url : 'festivalInfoCon_jp?m_no=87',
				color : '#fec89a'
			}, {
				title : ' <2021 ソウル知識つなぎフェスティバルフォーラム>開催',
				start : '2021-10-22',
				end : '2021-10-29',
				url : 'festivalInfoCon_jp?m_no=88',
				color : '#d0f4de'
			}, {
				title : '京義線本街5周年記念著者デー本フェスティバル',
				start : '2021-10-19',
				end : '2021-10-24',
				url : 'festivalInfoCon_jp?m_no=89',
				color : '#fcf6bd'
			},{
				title : 'SIDance2021第24回ソウル世界舞踊祭り',
				start : '2021-10-16',
				end : '2021-11-14',
				url : 'festivalInfoCon_jp?m_no=91',
				color : '#a2d2ff'
			}, {
				title : '2021「ソウルは美術館」公共美術フェスティバルー 「ノドゥル風が吹く」',
				start : '2021-10-15',
				end : '2021-11-30',
				url : 'festivalInfoCon_jp?m_no=92',
				color : '#e4c1f9'
			}, {
				title : '2021 クァナクカン・ガムチャン祭り',
				start : '2021-10-14',
				end : '2021-10-17',
				url : 'festivalInfoCon_jp?m_no=93',
				color : '#ff99c8'
			}, {
				title : '2021 ソウル無形文化祭り',
				start : '2021-10-11',
				end : '2021-10-16',
				url : 'festivalInfoCon_jp?m_no=94',
				color : '#c8b6ff'
			}, {
				title : '2021 チョンノハンボク祭り',
				start : '2021-10-09',
				end : '2021-10-24',
				url : 'festivalInfoCon_jp?m_no=95',
				color : '#fec89a'
			}, {
				title : '2021 第1回クァンジン芸術祭',
				start : '2021-10-08',
				end : '2021-11-03',
				url : 'festivalInfoCon_jp?m_no=96',
				color : '#fcf6bd'
			}, {
				title : '[ソウル文化財団] 2021 ソウル国際作家フェスティバル',
				start : '2021-10-08',
				end : '2021-10-24',
				url : 'festivalInfoCon_jp?m_no=97',
				color : '#a0c4ff'
			}, {
				title : '第21回ハンソン百済文化祭「大百済展」',
				start : '2021-10-08',
				end : '2021-10-10',
				url : 'festivalInfoCon_jp?m_no=98',
				color : '#ff99c8'
			}, {
				title : 'アートスンビ 2021 美術週間「ウンピョンの顔」',
				start : '2021-10-07',
				end : '2021-10-17',
				url : 'festivalInfoCon_jp?m_no=99',
				color : '#d0f4de'
			}, {
				title : 'Water Seoul 2021 : 気候変動メガシティ、そして水',
				start : '2021-10-07',
				end : '2021-10-09',
				url : 'festivalInfoCon_jp?m_no=100',
				color : '#a2d2ff'
			}, {
				title : '2021 ソウル世界都市文化フェスティバル(Seoul Friendship Festival)',
				start : '2022-10-01',
				end : '2021-10-10',
				url : 'festivalInfoCon_jp?m_no=101',
				color : '#c8b6ff'
			}, {
				title : '第25回ソウル国際漫画アニメーションフェスティバル(SICAF2021)',
				start : '2021-10-01',
				end : '2021-10-04',
				url : 'festivalInfoCon_jp?m_no=102',
				color : '#cbc0d3'
			}, {
				title : '第17回ソウルワウ本フェスティバル',
				start : '2021-09-27',
				end : '2021-10-03',
				url : 'festivalInfoCon_jp?m_no=103',
				color : '#fec89a'
			}, {
				title : '敦義門チュソク特別プログラム運営',
				start : '2021-09-18',
				end : '2021-09-22',
				url : 'festivalInfoCon_jp?m_no=104',
				color : '#c8b6ff'
			}, {
				title : '2021 ソウル都市建築ビエンナーレ「クロスロード、どんな都市に住むべきか」',
				start : '2021-09-16',
				end : '2021-10-31',
				url : 'festivalInfoCon_jp?m_no=105',
				color : '#a2d2ff'
			}, {
				title : '2021 距離芸術シーズンプログラム（キャラバン）',
				start : '2021-09-11',
				end : '2021-10-10',
				url : 'festivalInfoCon_jp?m_no=106',
				color : '#fec89a'
			}, {
				title : '2021 ソウルサーカスフェスティバルおよびシーズンプログラム',
				start : '2021-09-03',
				end : '2021-09-26',
				url : 'festivalInfoCon_jp?m_no=107',
				color : '#c8b6ff'
			}, {
				title : 'ソウルイラストレーションフェア- V.11',
				start : '2021-08-25',
				end : '2021-08-28',
				url : 'festivalInfoCon_jp?m_no=108',
				color : '#ffadad'
			}, {
				title : '文化がある日 - あなたを覚える賢い文化生活',
				start : '2021-07-28',
				end : '2021-09-25',
				url : 'festivalInfoCon_jp?m_no=109',
				color : '#fcf6bd'
			}, {
				title : '202ソウルブールフェスティバル[SOUL CITY LIMITS]',
				start : '2021-07-15',
				end : '2021-07-18',
				url : 'festivalInfoCon_jp?m_no=110',
				color : '#fec89a'
			}, {
				title : '敦義門博物館村特別行事「敦義門倶楽部浪漫祭」',
				start : '2021-06-26',
				url : 'festivalInfoCon_jp?m_no=111',
				color : '#d0f4de'
			}, {
				title : 'ソウル文化財団2020芸術創作支援活動多元芸術選定作 POTENT CITY',
				start : '2021-10-01',
				end : '2021-10-04',
				url : 'festivalInfoCon_jp?m_no=112',
				color : '#a0c4ff'
			}, {
				title : '[クァナク区民と生活芸術家が一緒にする「2021気分良い寄付ウィーク」',
				start : '2021-12-10',
				end : '2021-12-11',
				url : 'festivalInfoCon_jp?m_no=113',
				color : '#a0c4ff'
			}, {
				title : 'バンベゴル1080ダアウリム祭り「バンベゴル(Goal)イン(In)歩き祭り」',
				start : '2021-10-30',
				url : 'festivalInfoCon_jp?m_no=114',
				color : '#e4c1f9'
			}, {
				title : '[ソウル文化財団]地域祭り<一緒に出会い:一緒に芸術する>',
				start : '2021-10-22',
				end : '2021-10-24',
				url : 'festivalInfoCon_jp?m_no=115',
				color : '#a2d2ff'
			}, {
				title : '2021 NEXTAR COMPETITION VOL.3  [K-POP ダンスコンテスト]',
				start : '2021-09-04',
				url : 'festivalInfoCon_jp?m_no=116',
				color : '#ff99c8'
			}, {
				title : '第76周年光復節記念行事「解放の喜び」',
				start : '2021-08-14',
				end : '2021-08-16',
				url : 'festivalInfoCon_jp?m_no=117',
				color : '#ffadad'
			}, {
				title : '< 紅葉踏みに散歩行こう！>ホンノン紅葉道スタンプツーア',
				start : '2021-11-06',
				end : '2021-11-14',
				url : 'festivalInfoCon_jp?m_no=118',
				color : '#d0f4de'
			}, {
				title : '近現代史推理旅行消えた鍵を探せ',
				start : '2021-09-01',
				end : '2021-12-31',
				url : 'festivalInfoCon_jp?m_no=119',
				color : '#fec89a'
			}, {
				title : 'TikTok:ナレ一周-教科書の中の世界民謡旅行',
				start : '2022-05-27',
				url : 'festivalInfoCon_jp?m_no=120',
				color : '#fec89a'
			}, {
				title : '2022 センノンダン祭開催',
				start : '2022-04-23',
				url : 'festivalInfoCon_jp?m_no=121',
				color : '#fcf6bd'
			},{
				title : 'ナンサンコル伝統体験',
				start : '2022-04-05',
				end : '2022-11-13',
				url : 'festivalInfoCon_jp?m_no=123',
				color : '#e4c1f9'
			}, {
				title : '2022 ナンサンコルオンライン旧正月祭り「豪気の旧正月」',
				start : '2022-01-31',
				end : '2022-02-13',
				url : 'festivalInfoCon_jp?m_no=124',
				color : '#d0f4de'
			}, {
				title : '2021 「冬至_虎婚」',
				start : '2021-12-22',
				url : 'festivalInfoCon_jp?m_no=125',
				color : '#c8b6ff'
			}, {
				title : '[2021クァナクカン・カムチャン祭り] イ・イクジュ教授とともにするマスタークラス高麗',
				start : '2021-10-15',
				url : 'festivalInfoCon_jp?m_no=126',
				color : '#fec89a'
			}, {
				title : '2021 訓練図鑑武芸再現イベント<漢陽都城伝統武芸と出会う>',
				start : '2021-10-02',
				end : '2021-10-03',
				url : 'festivalInfoCon_jp?m_no=127',
				color : '#ff99c8'
			}, {
				title : '第9回漢陽都城文化祭',
				start : '2021-10-01',
				end : '2021-10-10',
				url : 'festivalInfoCon_jp?m_no=128',
				color : '#a2d2ff'
			}, {
				title : '時代別伝統複式ハンボクファッションショー',
				start : '2021-09-27',
				end : '2021-11-13',
				url : 'festivalInfoCon_jp?m_no=129',
				color : '#fcf6bd'
			}, {
				title : 'ナンサンコル韓屋村の伝統体験(7~8月)プログラムOPEN!',
				start : '2021-07-01',
				end : '2021-08-29',
				url : 'festivalInfoCon_jp?m_no=130',
				color : '#d0f4de'
			} ]
		});

		calendar.render();
	});
</script>
<style>
html, body {
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
}

#calendar-container {
	height: 800px;
    padding: 0;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
}

.fc-header-toolbar {
	
    /*the calendar will be butting up against the edges,
    but let's scoot in the header's buttons
    */
	padding-top: 1em;
	padding-left: 1em;
	padding-right: 1em;
}



  #calendar {
    max-width: 800px;
    margin: 0 auto;
  }

</style>
</head>
<body>

	<div id='calendar-container'>
		<div id='calendar'></div>
	</div>

</body>
</html>