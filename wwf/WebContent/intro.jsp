<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>WWF</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script>
		function accordion(id) {
    		var x = document.getElementById(id);
    		if (x.className.indexOf("w3-show") == -1) {
        		x.className += " w3-show";
    		} else { 
        		x.className = x.className.replace(" w3-show", "");
    		}
		}
	</script>
</head>
<body>
<!-- top start -->
	<center>
		<div class="w3-top" >
			<div class="w3-dark-grey w3-xlarge w3-padding-xlarge" style="width:100%;hegiht:auto;max-width:1200px;margin:auto">
				<div class="w3-opennav w3-left" onclick="w3_open()">
					<a href="./menu.html"><i class="fa fa-bars"></i></a>
				</div>
				<div class="w3-right w3-hover-text-grey">
					<a href="./index.jsp"><i class="fa fa-home" ></i></a>
				</div>
				<div class="w3-center">INTRO</div>
			</div>
		</div>
<!-- top end -->
<!-- main start -->
		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px;margin-top:60px">
        <div class="w3-accordion">
				<button onclick='accordion("Intro1");' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					I. 글래스턴베리 (영국, 브릿팝)</button>
				<div id="Intro1" class="w3-accordion-content w3-container">
					<p><img border="0" width="624" height="416" src="img/Intro/1-1.jpg" alt="WW17_페스티벌사진(글라스토).jpg" style="width:100%" /> <br />
					  *공식 홈페이지: <a href="http://www.glastonburyfestivals.co.uk/">http://www.glastonburyfestivals.co.uk/</a></p>
					<p>1.    개요 <br />
					  명실상부 세계 최고의 페스티벌 중 하나이다. 수십 개의 스테이지에서  음악 연주, 서커스, 연극,  희극, 영화, 차력쇼 등이 벌어진다. 국내 락페스티벌에서는 한꺼번에 보기 힘든 세계 정상급 아티스트가 다수 초청되어 한 해 무대에 잇따라 선다. 만일 메인스테이지에서 유명 아티스트들만 감상할 목적이라면 가지 않는 것이 좋을 수도 있다. 체력 소모가 심하고 공연시간이 겹치는 경우가 많아 다 보기도 힘들 뿐 아니라,  스테이지 간 이동이 극악이다. 하지만 &lsquo;페스티벌&rsquo;이라는 이름에 가장 걸맞은 분위기를 제공한다. <br />
					  전반적으로 히피 분위기를 연출하며, 위생과 치안이 좋지 않다. 볼거리가 워낙 많아 5박 6일  동안 페스티벌 사이트의 모든 스테이지를 한 번씩 돌기도 쉽지 않다. 대대로 Oasis,  Blur, Coldplay, Muse 등  자국 밴드를 많이 밀어주는 양상을 보여왔다. <br />
					  분위기는 대체로 마리화나 및 주류와 함께 삼삼오오 모여서 수다 떨면서 보는 편. 땅이 진흙이기 때문에 장화가 필수이며, 슬램 등 격한 움직임을 하기  매우 어렵다. 필자가 생전 가장 좋은 사운드를 들은 곳이다. <br />
					  <br />
					  2.    지역 <br />
					  영국 남서부 서미싯 주에 위치한 작은 마을. 브리스톨 남부 40km. <br />
					  <br />
					  3.    개최일시 <br />
					  2017년 6월 21 ~ 25일 <br />
					  *메인 스테이지 공연은 23일 점심 ~ 25일 저녁 <br />
					  *26일 아침까지  페스티벌 진행 <br />
					  <br />
					  4.    라인업 <br />
					  2016년 Muse, Coldplay, Adele, ELO, ZZTOP 등. 스테이지가  워낙 많기도 하지만 독특한 것은 스테이지별로 아이덴티티가 분명한 점을 높이 사고 싶다. 특히 월드뮤직이나  스카, 레게 등 여타 페스티벌의 대형 스테이지에서 보기 힘든 다양한 공연을 볼 수 있다. 또한 페스티벌의 의의와 걸맞게 시리아 오케스트라의 메인스테이지 공연이나 데이빗보위 / 프린스의 추모 플래시몹 등 다양한 행사가 벌어졌다. </p>
					<p>2017년은 현재  라디오헤드가 공개되어있다. <br />
					  <br />
					  5.    교통편 및 숙박 <br />
					  교통편 <br />
					  A.    티켓을 구매할 때 코치(고속버스)가 포함된 티켓을 구매. <br />
					  B. 내셔널 익스프레스(코치 패키지와  동일한 운송사) 등에서 고속버스를 예매하면 페스티벌 사이트까지 데려다준다. <br />
					  C.    페스티벌 사이트  ~ 읍내 셔틀버스를 이용한다. </p>
					<p>숙박 <br />
					  대부분 캠핑으로 이루어진다. 20여 개의 캠핑존 중 텐트를 대여해주는 Worthy View가 있다. 일부 사설 캠핑존이 있기도 하다. 캠핑 이외의 다른 숙박을 이용하기는 쉽지 않다. <br />
					  <img src="img/Intro/1-2.jpg" alt="" style="width:100%"border="0" /></p>
					<p>6.    티켓팅 및 일정 <br />
					  A.     레지스터 등록 <br />
					  B.     10월 3일 코치 패키지 예매 (243+ 파운드)
					  C.     10월 9일 일반 티켓 예매 (243 파운드) <br />
					  D.    10월 20일 첫번째 헤드라이너 Radiohead 공개 <br />
					  E.   10월 27일  Worthy View 예매 <br />
					  F.     (전년도 기준) 주요 라인업 5~6팀  정도가 1팀씩 나오다가, 3월 29일 메인 라인업 포스터 공개 <br />
					  G.     (전년도 기준) 4월 1일  잔금 입금<br />
					  H.     (전년도 기준) 며칠 간격으로 작은 스테이지와 영화 등의 라인업이  나옴. <br />
					  I.       (전년도 기준) 5월 24일  티켓 도착 (코치패키지 PDF, 일반티켓 우편) <br />
					  J.      (전년도 기준) 5월 31일  최종 라인업 및 타임테이블 공개 <br />
					  K.     (전년도 기준) 6월 1일  워시뷰 메일 도착<br />
					  L.     (전년도 기준) 6월 5일  공식 어플리케이션 공개 <br />
					  M.     (전년도 기준) 6월 22일  워시뷰 위치 메일 </p>
				</div>
			</div>
		</div>
		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px">
			<!-- 열려라 참깨! -->
			<div class="w3-accordion">
				<button onclick='accordion("Intro2");' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					II. 투모로우랜드 (벨기에, EDM)
				</button>
				<div id="Intro2" class="w3-accordion-content w3-container">
					<p><img width="624" height="416" src="img/Intro/2-1.jpg" alt="WW17_페스티벌사진(투모로우).jpg" style="width:100%" /> <br />
					  *공식 홈페이지: <a href="https://www.tomorrowland.com/en/festival/welcome">https://www.tomorrowland.com/en/festival/welcome</a></p>
					<p>1.    개요 <br />
					  AD&amp;T사가 운영하는  투모로우랜드는 동화나라를 콘셉트로 한 일렉트로닉 뮤직 페스티벌이다. 매해 다른 스토리를 구성하고 이를  애니메이션, 연기 등으로 테마를 표현해낸다. <br />
					  <br />
					  2.    지역 <br />
					  벨기에 Boom 지역. 브뤼셀  북부 35km. <br />
					  <br />
					  3.    개최일시 <br />
					  2017년 7월 21 ~ 30일 <br />
					  공연은 2주에 걸쳐서 진행된다는 점이 특징이다. <br />
					  <br />
					  4.    라인업 <br />
					  David Guetta, The chainsmokers, Martin  garrix, Galantis 등 세계 최정상급 DJ <br />
					  <br />
					  5.    교통편 및 숙박 <br />
					  &lsquo;글로벌저니&rsquo;라는  호텔, 기차, 비행기 패키지를 제공한다. </p>
					<p>교통편 <br />
					  1.    브뤼셀공항-페스티벌  사이트 셔틀버스(24유로)<br />
					  2.    기차편 </p>
					<p>숙박<br />
					  1.    드림 빌 파크: 기본  캠핑존. 본인 소유 텐트 <br />
					  1인, 레귤러 290유로 컴포트 490유로) <br />
					  2.    이지 텐트:  2,4인 텐트 대여 <br />
					  2인, 레귤러 750유로 컴포트 1150유로 <br />
					  4인, 레귤러 1480유로 컴포트  2280유로 <br />
					  3.    릴랙스 룸: 침대  구비, 열쇠식 <br />
					  2인, 레귤러 1425유로 컴포트 1825유로 <br />
					  4.    드림 랏지: 글램핑, 침대 구비, 락커 <br />
					  2인, 레귤러 1525유로 컴포트  1925유로 <br />
					  4인, 레귤러 1925유로 컴포트  3650유로 <br />
					  5.   프랜드쉽 캠핑: 대규모  인원을 위한 캠핑. 본인 소유 텐트를 가져와야 함. <br />
					  10인, 3250유로 <br />
					  6.    맨션: VIP 숙소. 정원 테라스 화장실 냉장고 구비 <br />
					  12인, 별도 문의 <br />
					  <img src="img/Intro/2-2.jpg" alt="" style="width:100%" border="0" /> <br />
					  <img src="img/Intro/2-3.jpg" alt="" style="width:100%" border="0" /> <br />
					  <br />
					  6.    티켓팅 및 일정 <br />
					  A.     레지스터 등록<br />
					  B.     (전년도  기준) 2월 초 즈음 예매 </a> (237.5 유로 가량) </p>
				</div>
			</div>
		</div>
		
		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px">
			<!-- 열려라 참깨! -->
			<div class="w3-accordion">
				<button onclick='accordion("Intro3");' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					III. 프리마베라 사운드 바르셀로나 (스페인, 사이키델릭)
					<!-- 솰라솰라 -->
				</button>
				<div id="Intro3" class="w3-accordion-content w3-container">
					<p><img border="0" width="600" height="390" src="img/Intro/3-1.jpg" alt="WW17_축제사진(프리마베라).jpg" style="width:100%" /> <br />
					  *공식 홈페이지:  <a href="http://www.primaverasound.es/?_ga=1.126805003.760423365.1476098633&amp;lang=en">http://www.primaverasound.es/</a></p>
					<p>1.    개요 <br />
					  2016년에  다녀온 이는 시규어로스가 제일 무난한 수준의 사이키델릭 편향적인 페스티벌이라고 하는데, 몇 년 전에  다녀온 이는 그렇게까지 심하진 않다고 한다. 아래 기술된 라인업을 보면 올해 다녀온 이의 말이 이해가  된다. (…) 사방팔방 대마연기가 가득하며 무대에서 연주를 하든 말든 같이 온 친구들끼리 열심히 노는  분위기이다. 도심형 페스티벌이다 보니 쾌적하지만 사운드도 그다지 좋은 편이 아니다. 라인업은 나와봐야 아는 것이니 본인의 판단에 맡긴다. <br />
					  <br />
					  2.    지역 <br />
					  스페인 바르셀로나 도심인근 디아고날 근처 해변 파크  델 포룸. 공항에서 20km. 도시의 중심부인 까딸루냐 광장  인근의 CCCB에서도 무료공연 및 전시, 강연 등의 프로그램들이  이어짐. (파크 델 포룸 ~ 까딸루냐 광장 지하철 20분+도보 30분 거리) </p>
					<p> <br />
					  3.    개최시기 <br />
					  2017년 5월   31일 ~ 6월 4일 <br />
					  A.  5월 29, 30일부터 인근 라이브 클럽들에서 전야제 성격의 공연들이 시작되며, 6월 4일에는 뒷풀이 느낌의 공연이 간헐적으로 이루어질 예정이다. 메인  공연은 6월 1~3일 3일간이다. <br />
					  B.  첫날 전야제(5월 31일)은 일반인들에게도 개발됨. 통상  중간 규모의 스테이지에서 이루어지며, 중견급 한 팀 정도가 포함된다.  2016년의 경우 SUEDE. <br />
					  C.   매일 17~18시경  공연이 시작된다. <br />
					  D.  헤드라이너 공연은 새벽 2시경에 시작되어 4시경에 끝난다.  새벽 6시까지도 Jamie XX 정도의 공연이  이어지니 첫차시각까지 즐기는 것도 무리가 없다. <br />
					  <br />
					  4.    라인업 <br />
					  <img src="img/Intro/3-2.jpg" alt="" style="width:100%" border="0" /> <br />
					  2016년: 라디오헤드, LCD사운드시스템, 시규어로스, PJ하비, 테임임팔라, 라스트섀도우퍼펫츠, 익스플로전인더스카이, 리처드하울리,  도터, 에어, 루즈벨트, 브라이언 윌슨(비치 보이스), 스웨이드, 베이루트, 애니멀 컬렉티브, 네온  인디언  등 <br />
					  2015년: 블랙키, 알트제이, 패티스미스, 스트록스, 언더월드 등 <br />
					  2014년: 아케이드파이어, 퀸, 디스클로저, NIN, 켄드릭라마 등 <br />
					  <br />
					  5.    교통편 및 숙박 <br />
					  보통 시내의 숙소들을 이용한다. </p>
					<p>A.     셔틀버스는 1유로이며  마지막 날에는 없다고 한다. 사람이 워낙 많아서 조금 힘들다. <br />
					  B.     보통 여러 명 모여서 시내까지 택시를 탄다. <br />
					  C.     호텔, 호스텔  패키지가 있다. <br />
					  D.   심야버스를 탄다. 2시 정도까지는 메트로(지하철)도 운행한다. 시간표  확인을 해야한다. 왜냐하면 대중교통이 5시 정도까지 연장운행하는  경우도 있기 때문이다. 첫차는 6시경이다. <br />
					  <img src="img/Intro/3-3.jpg" alt="" style="width:100%" border="0" /></p>
					<p>6.    티켓팅 및 일정 <br />
					  티켓팅은 치열하지 않고, 대행이 가능하다. </p>
					<p>A.     6월 22일 이전 티켓팅 (145유로)<br />
					  B.     6월 22일 ~ 1월 7일 (175유로) <br />
					  C.     1월 8일 ~ 라인업 공개 (195유로) <br />
					  D.    라인업 공개 후  (215 유로) </p>
				</div>
			</div>
		</div>
		
		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px">
			<!-- 열려라 참깨! -->
			<div class="w3-accordion">
				<button onclick='accordion("Intro4");' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					IV. 록 베르히터 (벨기에, 락)
				</button>
				<div id="Intro4" class="w3-accordion-content w3-container">
					<img border="0" width="624" height="416" src="img/Intro/4-1.jpg" alt="WW17_축제사진(록베르히터).jpg" style="width:100%" /> <br />
					  *공식  홈페이지: <a href="http://www.rockwerchter.be/en">http://www.rockwerchter.be/en</a></p>
					<p>1.    개요 <br />
					  락페스티벌의 마지막 보루라고 불리는 페스티벌. 글래스턴베리 등 여타  경쟁 페스티벌들이 힙합, EDM 등을 많이 수용한 것에 비하여 록 페스티벌과 잘 어울리는 라인업을 운영한다. 영문식 발음으로는 록 워히터이며 운영이 극도로 깔끔하여 글래스턴베리와 대비된다. 프리마베라 등 도심형 페스티벌과도 종종 비교되지만, 굳이 비교하자면  글래스턴베리는 안산밸리, 베르히터는 지산밸리, 프리마베라는 ETP 느낌이다. <br />
					  메인스테이지 1개와 실내 스테이지  2개(수용인원 1.5만 명 가량)을 운영하는데, 가끔은 실내 스테이지보다 밖에서 스크린으로 보는 사람이  더 많을 때도 있다. 의자 및 휠체어 석도 꽤 많이 구비되어있다. <br />
					  벨기에인 특성(?)인 노상방뇨를 사방팔방에서 볼 수 있기 때문에  마음 놓고 앉을 수 있는 땅이 없다. 필자는 낚시의자 몇천 원짜리 하나 준비해 갔었다. 심심하고 재미없는 관객들로 유명하지만, 그래도 펜스 안은 나름 치열하고  슬램이나 서핑 등도 원활하게 이루어진다. 좋아하는 팀 공연이라면 무조건 앞쪽에서 보길 바란다. <br />
					  <br />
					  2.    지역 <br />
					  벨기에 뤼벤 북쪽 10km 베르히터 마을. 브뤼셀 동북쪽 40km. <br />
					  <br />
					  3.    개최시기 <br />
					  6월 29일 ~ 7월 2일<br />
					  정오~새벽2시가량까지 3개의 스테이지에서 공연이 이루어짐. <br />
					  <br />
					  4.    라인업 <br />
					  폴매카트니, 에디터즈, 디스클로저, 람슈타인, 레드핫칠리페퍼스, 플로렌스앤더머신  등. 대체로 록페스티벌 느낌이며 메탈 팀도 하루에 한두팀 정도 있다. </p>
					<p>2017년 라인업 <br />
					  목: 아케이드 파이어, 킹스오브레온 <br />
					  금: 라디오헤드 <br />
					  토: 시스템오브어다운, 린킨파크, 블링크182 <br />
					  일: 푸파이터즈, Alt-J <br />
					  <br />
					  5.    교통편 및 숙박 <br />
					  페스티벌 티켓을 예매하면 벨기에 전역에서 뤼벤역까지 가는 기차표를 지급한다.  뤼벤역에서는 아침 9시부터 셔틀버스가 수십 대 대기하며 쾌적하게 인원을 실어 나른다. 하이브(글래스턴베리의 워시뷰와 유사) 캠핑존 및 일반캠핑존으로 향한다. <br />
					  셔틀버스 첫차를 타면 가장 가까운 A 캠핑존에서 무난히 자리잡을  수 있으니, 하이브 티켓은 권장하지 않는다(오히려 더 멀다.) <br />
					  <img src="img/Intro/4-2.jpg" alt="" style="width:100%" border="0" /> <br />
					  <br />
					  6.    티켓팅 및 일정 <br />
					  티켓팅은 일부 요일은 현매도 남아있는 수준이다. 라인업은 조금씩  나온다. </p>
					<p>A.    10월 28일  첫 라인업 Radiohead 공개 <br />
					  B.    11월 19일 티켓팅 4일권 236 유로, 캠핑존 20 유로<br />
					  C.     6월초 교통편 티켓 E-mail 수령 </p>
				</div>
			</div>
		</div>
		
		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px">
			<!-- 열려라 참깨! -->
			<div class="w3-accordion">
				<button onclick='accordion("Intro5");' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					V. 코첼라 (미국, 팝)
					<!-- 솰라솰라 -->
				</button>
				<div id="Intro5" class="w3-accordion-content w3-container">
					<p><img border="0"  src="img/Intro/5-1.jpg" alt="WW17_축제사진(코첼라).jpg" style="width:100%" /> <br />
					  *공식  홈페이지: <a href="http://splash.coachella.com/">http://splash.coachella.com/</a></p>
					<p>1.    개요 <br />
					  코첼라 뮤직 앤 아트 페스티벌은 미국 캘리포니아주 인디오의 사막 지대 코첼라 밸리에서 진행되는 페스티벌이다. 락 ,힙합, EDM, 팝  등 다양한 장르의 공연이 이어지며 세련된 분위기와 패션스타들로도 유명하다. 화씨 100도(섭씨 38도)에 이르는 날씨로도 유명하다. <br />
					  <br />
					  2.    지역 <br />
					  미국 캘리포니아주 인디오 <br />
					  <br />
					  3.    개최시기 <br />
					  A.     4월 14일~16일 1주차 진행 <br />
					  B.     4월 21일~23일 2주차 진행 <br />
					  <br />
					  4.    라인업 <br />
					  건즈앤로지스, LCD사운드시스템,  제드 등 다양한 라인업 <br />
					  <br />
					  5.    교통편 및 숙박 <br />
					  캠핑존과 장비를 빌릴 수 있는 캠핑 패키지가 제공된다. 침대와 에어컨이  완비된 사파리 텐트를 예약할 경우 설치까지 미리 되어있다. 표를 예매할 때 텐트, 셔틀 등의 패키지를 선택할 수 있게 되어있다. <br />
					  <img src="img/Intro/5-2.jpg" alt="" style="width:100%" border="0" /> <br />
					  <br />
					  6.    티켓팅 및 일정 <br />
					  A.     (2016년  기준) 1월 7일 티켓팅 (일반티켓 $499, VIP티켓 $895) <br />
					</p>
				</div>
			</div>
		</div>
		
		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px">
			<!-- 열려라 참깨! -->
			<div class="w3-accordion">
				<button onclick='accordion("Intro6");' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					VI. 락앰링 (독일, 락/메탈)
					<!-- 솰라솰라 -->
				</button>
				<div id="Intro6" class="w3-accordion-content w3-container">
					<p><img border="0" src="img/Intro/6-1.jpg" alt="WW17_축제사진(락앰링).jpg" style="width:100%" /> <br />
					  *공식  홈페이지: <a href="http://www.rock-am-ring.com/">http://www.rock-am-ring.com/</a></p>
					<p>1.    개요 <br />
					  독일에서 가장 큰 페스티벌 중 하나이다. 섬머소닉 도쿄/오사카와 같이 뉘르부르크링과 함께 Rock im Park(뉘른베르크)를 동시에 진행한다. 최근에는 많이 말랑말랑해졌다는 평을 받지만, 그래도 정통 하드록/메탈 분야에서 가장 유명한 페스티벌 중 하나이다. 사이트가 오직  독일어만 지원하여 정보를 얻기가 매우 힘든 편이다. 락앰링이 규모나 라인업이 조금 더 좋은 편이다. 병이나 캔 등이 반입이 안 되고 음료가 비싸기 때문에 종이팩에 담긴 음료를 다량 준비하여야 한다.</p>
					<p>2.    장소 <br />
					  뉘르부르크링에 있는 그린헬이라는 이름의 F1 서킷에서 진행하였으나  공군기지로 변경되었다. 이전 후기나 정보를 찾아볼 때 유의하여야 한다.  독일 중부의 프랑크푸르트와 서부의 쾰른 사이쯤에 있는 코블렌츠 기차역 15km 거리. </p>
					<p>그리고 2017년부터는 다시 원래의 부지로 돌아간다고 한다. 세부 공지는  아직 안 나와있는 상태이다. <br />
					  <br />
					  3.    개최시기<br />
					  2017년  6월 2  ~ 4일<br />
					  <br />
					  4.    라인업 <br />
					  레드핫칠리페퍼스, 볼빗, 블랙사바스, 콘, 데프톤즈, 비피클라이로, 브링미더호라이즌 등 하드록/메탈 계열 <br />
					  <img src="img/Intro/6-2.jpg" alt=""style="width:100%" border="0" /> <br />
					  <br />
					  5.    교통편 및 숙박 <br />
					  캠핑이 가능하며 메인스테이지 옆의 캠핑존을 이용할 시 20유로를  지불하여야 한다. VIP 텐트도 존재하며, 원활한 캠핑을  위해서는 최소 1~2일 전에 가서 텐트를 쳐야 한다고 한다.  Koblenz 중앙역까지 기차를 타고 간 뒤, 셔틀버스에 탑승할 수 있다. <br />
					  <img src="img/Intro/6-3.jpg" alt="" style="width:100%" border="0" /></p>
					<p>6.    티켓팅 및 일정 <br />
					  A.     3일  진행시 180 유로, 4일 진행시 250 유로 정도<a name="_q6ad5vna5i4j" id="_q6ad5vna5i4j"></a></p>
				</div>
			</div>
			<!-- 닫혀라 참깨! -->
		</div>		
		
		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px">
			<!-- 열려라 참깨! -->
			<div class="w3-accordion">
				<button onclick='accordion("Intro7");' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					VII. 롤라팔루자 (미국, 팝)
					<!-- 솰라솰라 -->
				</button>
				<div id="Intro7" class="w3-accordion-content w3-container">
					<p><img border="0" src="img/Intro/7-1.jpg" alt="WW17_축제사진(롤라팔루자).jpg" style="width:100%" /> <br />
					  *공식  홈페이지: <a href="http://www.lollapalooza.com/">http://www.lollapalooza.com/</a></p>
					<p>1.    개요 <br />
					  미국에서 가장 큰 페스티벌로 손꼽히는 롤라팔루자는 다양한 장르의 음악을 포괄한다. 시카고 그랜드파크에서 열리는 이 페스티벌은 칠레, 베를린 등 도시  순회형으로 열리기도 하였다. <br />
					  <br />
					  2.    장소 <br />
					  미국 시카고 루프지역 그랜트파크. 시카고공항 남동쪽 30km. <br />
					  <br />
					  3.    개최시기 <br />
					  2017년 8월 3일~6일 진행 예정.<br />
					  4.    라인업 <br />
					  라디오헤드, 레드핫칠리페퍼스,  LCD사운드시스템, J.COLE, 라나델레이, 엘리굴딩, 디스클로저 등 다양한 장르 </p>
					<p>현재 Muse의 메튜 밸라미가  SNS상에서 출연을 시사한바있다. <br />
					  <br />
					  5.    교통편 및 숙박 <br />
					  호텔 패키지가 존재한다. 파트너 호텔은 다음과 같다. <br />
					  A.     James Chicago Hotel<br />
					  B.     JW Marriott Chicago<br />
					  C.     Intercontinental Chicago<br />
					  D.     The Hotel Palomar<br />
					  E.      The Peninsula Chicago<br />
					  시카고공항에서의 교통편은 아래 링크에서 예약할 수 있다. (21$, 2016년  링크) <br />
					  <a href="http://airportexpress.hudsonltd.net/res?USERIDENTRY=LOLLAPALOOZA&amp;LOGON=GO">http://airportexpress.hudsonltd.net/res?USERIDENTRY=LOLLAPALOOZA&amp;LOGON=GO</a> <br />
					  <img src="img/Intro/7-2.jpg" alt="" style="width:100%" border="0" /></p>
					<p>6.    티켓팅 및 일정 <br />
					  A.     (2016년  기준) 3월 24일 판매시작 (1일 $120 / 4일 $3,350) <br />
					  B.     3월 25일 VIP 패키지 등 판매(VIP  $2,200부터 플래티넘 $4,200 까지 다양한 패키지) <br />
					</p>
				</div>
			</div>
			<!-- 닫혀라 참깨! -->
		</div>
		
		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px">
			<!-- 열려라 참깨! -->
			<div class="w3-accordion">
				<button onclick='accordion("Intro8");' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					VIII. 노스얼라이브 (포르투갈, 락)
					<!-- 솰라솰라 -->
				</button>
				<div id="Intro8" class="w3-accordion-content w3-container">
					<p><img border="0" src="img/Intro/8-1.jpg" alt="WW17_축제사진(노스얼라이브).jpg" style="width:100%" /> <br />
					  *공식  홈페이지: <a href="http://nosalive.com/en/">http://nosalive.com/en/</a></p>
					<p>1.    개요 <br />
					  2016년도 라인업이  매우 좋아 한국인들도 많이 찾은 페스티벌이지만, 전반적으로 운영이 좋지 않다는 평을 듣고 있다. 바다와 함께 즐기기 위해서라면 괜찮지만, 페스티벌만이 목적이라면  조금 재고할 필요가 있다. </p>
					<p>2.    장소 <br />
					  포르투갈 리스본 passeio maritimo de alges. 공항  남서쪽 15km의 해변가 <br />
					  <br />
					  3.    개최시기 <br />
					  2017년 7월 6 ~ 8일 <br />
					  <br />
					  4.    라인업 <br />
					  2016년 기준 라디오헤드, 아케이드파이어, 케미컬브라더스, 로버트플랜트, 테임임팔라, 폴스, M83 등  적당히 대중적인 록밴드 라인업. 위치가 위치이다 보니 프리마베라와 라인업을 많이 공유하는 편. </p>
					<p align="left">2017년 라인업은 현재까지 첫번째 헤드라이너  Depeche mode에 이어   Foo Fighters가 공개되었으며 그 외 The Kills, War Paint,  Alt-J가 공개되어 있다. <br />
					  <br />
					  5.    교통편 및 숙박 <br />
					  새벽 3~5시까지 공연을 하는데 나가는 방향 차도가 통제되어 있어서  조금 불편하다. 통근열차는 30분에 한 번 가량 있다. 숙소 구하기도 어려운 편이다. <br />
					  <img src="img/Intro/8-2.jpg" alt="" style="width:100%" border="0" /> <br />
					  <br />
					  6.    티켓팅 및 일정 <br />
					  A.     현재 티켓 판매중(1일 59유로 / 3일 129유로 / 캠핑패키지 146유로 / 호텔패키지 223유로)<a name="_v99c1vi3q3ki" id="_v99c1vi3q3ki"></a></p>
				</div>
			</div>
			<!-- 닫혀라 참깨! -->
		</div>
		
		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px">
			<!-- 열려라 참깨! -->
			<div class="w3-accordion">
				<button onclick='accordion("Intro9");' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					IX. 그라스팝 (벨기에, 메탈)
					<!-- 솰라솰라 -->
				</button>
				<div id="Intro9" class="w3-accordion-content w3-container">
					<p><img border="0" src="img/Intro/9-1.jpg" alt="WW17_축제사진(그라스팝).jpg" style="width:100%" /> <br />
					  *공식  홈페이지: <a href="https://www.graspop.be/en/">https://www.graspop.be/en/</a></p>
					<p>1.    개요 <br />
					  다운로드 페스티벌은 비교적 신인밴드가 많아 낮시간대가 심심하고, 바켄오픈에어는  지나치게 매니악하며, 락엠링은 규모가 너무 크다. 하지만  그라스팝은 알짜배기 라인업과 2개의 메인스테이지를 붙여 끝없는 공연을 제공해 좋은 공연을 몰아보기에  적합하다. <br />
					  <br />
					  2.    장소 <br />
					  벨기에의 네덜란드 국경 인근 마을 데설. 투른호우트 남동쪽 20km, 안트베르펜 동쪽 60km. <br />
					  <br />
					  3.    개최시기 <br />
					  2017년 6월 16 ~ 18일 <br />
					</p>
					<br clear="all" />
					<p>&nbsp;</p>
					<p>4.    라인업 <br />
					  <img src="img/Intro/9-2.jpg" alt="" style="width:100%" border="0" /> <br />
					  블랙사바스, 볼빗, 아이언메이든, 메가데스, 킹스다이아몬드, 슬레이어, 나이트위시, 트위스티드시스터 등 올드한 메탈밴드들 <br />
					  <br />
					  5.    교통편 및 숙박 <br />
					  셔틀버스가 잘 되어있어서 전혀 불편함이 없다. 벨기에 전역에서 기차왕복 10유로 정도에 판매된다. 캠핑존은 구역 구분이 없다. 원활한 캠핑을 위해서는 전야제 날 일찍 들어가야 한다. 3가지 VIP 텐트가 존재한다. <br />
					  A.    Festihuts  2인 569 유로 / 4인 639 유로 <br />
					  B.    Festicabins  2인 649 유로 + 100 유로/cabins <br />
					  C.    Pitches  2인 199 유로 / 4인 259 유로 / 6인 319 유로 <br />
					  D.   그 외 민박 렌트 <br />
					  *텐트 렌트도 가능하다. <br />
					  <img src="img/Intro/9-3.jpg" alt="" style="width:100%" border="0" /> <br />
					  <br />
					  6.    티켓팅 및 일정 <br />
					  A.     티켓 (1일권 95 유로 / 3일+전야제 195 유로 / VIP 1.5배) </p>
				</div>
			</div>
			<!-- 닫혀라 참깨! -->
		</div>
		
		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px">
			<!-- 열려라 참깨! -->
			<div class="w3-accordion">
				<button onclick='accordion("Intro10");' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					X. 베니카심 FIB (스페인, 락)
					<!-- 솰라솰라 -->
				</button>
				<div id="Intro10" class="w3-accordion-content w3-container">
					<p><img src="img/Intro/10-1.jpg" alt="" style="width:100%" border="0" /> <br />
					  *공식  홈페이지: <a href="http://fiberfib.com/en/">http://fiberfib.com/en/</a></p>
					<p>1.    개요 <br />
					  낮에는 바다, 밤에는 페스티벌. 신혼여행으로  가고싶을 만한  페스티벌이다. 라인업도 무난하게 어디서 들어본 밴드들이 많아 좋다. <br />
					  <br />
					  2.    장소 <br />
					  스페인 발렌시아 북쪽 85km 지점에 위치한 해변 베니카심 <br />
					  <br />
					  3.    개최시기 <br />
					  2017년 7월 13 ~ 16일 <br />
					  <br />
					  4.    라인업 <br />
					  케미컬브라더스, 비피클라이로, 뮤즈, 디스클로저, 켄드릭라마, 매시브어택, 1975  등 무난한 록밴드 라인업 <br />
					  2017년 첫번째 헤드로 RHCP가 공개되어있다. <br />
					  <br />
					  5.    교통편 및 숙박<br />
					  A.    VIP 캠핑 85유로 (10~17일) <br />
					  B.    일반 캠핑 + 4일티켓 135유로 <br />
					  C.    일반 캠핑 + 4일티켓 + Villacamp 229유로 <br />
					  D.   4일티켓 + 아파트 219유로 <br />
					  E.    4일티켓 + 호텔 250유로~585유로 <br />
					  <img src="img/Intro/10-2.jpg" alt="" style="width:100%" border="0" /> <br />
					  <img src="img/Intro/10-3.jpg" alt="" style="width:100%" border="0" /></p>
					<p>6.    티켓팅 및 일정 <br />
					  A.     얼리버드 티켓팅 진행중 (일반 100유로 / VIP 240유로, 수수료 별도) </p>
				</div>
			</div>
			<!-- 닫혀라 참깨! -->
		</div>
	
<!-- main end -->
	</body>
</html>