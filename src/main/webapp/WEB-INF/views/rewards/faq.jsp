<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">
#container {
	padding-top: 65px;
	width: 1200px;
	height: auto;
	margin: auto;
	padding-left: 0px;
	padding-right: 0px;
}

#container a {
	text-decoration: none;
	color: rgb(99, 62, 16);
}

#container h3 {
	font-family: 'Nanum Myeongjo', serif;
	color: rgb(133, 111, 86);
}

li {
	list-style: none;
}

#h5 {
	font-size: 15px;
	border-bottom: 3px;
	border-color: black;
	margin-top: 30px;
	margin-bottom: 30px;
}

#div-sidebar {
	float: left;
	width: 264px;
	height: 430px;
	background-color: rgb(241, 227, 196);
	margin: auto;
	padding: 23px;
	text-align: left;
	border: 1px solid #e9dab8;
}

#div-sidebar ul {
	padding: 0px;
}

#list {
	margin-top: 25px;
	text-align: left;
}

#list li {
	margin-top: 10px;
	text-align: left;
	font-size: 13px;
}

#div-sidebar span {
	color: rgb(99, 62, 16);
	font-weight: bold;
}

#div-sidebar li a {
	display: block;
	color: rgb(135, 97, 51);
}

#list-border {
	border-top: 1px dotted rgb(206, 194, 168);
	padding-top: 5px;
	margin-top: 5px;
}

#div-contents {
	float: right;
	margin: auto;
	margin-bottom: 10px;
	width: 900px;
}

#div-box {
	width: 866px;
	height: 173px;
	border: solid 1px;
	border-color: rgb(227, 214, 198);
	padding: 19px 190px 9px 35px;
	margin-bottom: 50px;
	font-size: 14px;
}

#div-search {
	display: block;
	float: right;
	width: 110px;
	height: 34px;
	position: relative;
	left: 150px;
	bottom: 50px;
	background-color: rgb(62, 43, 44);
	text-align: center;
}

#div-search a {
	display: block;
	color: white;
	padding-top: 2px;
}

#keywords li {
	float: left;
	border: 2px solid #e3d6c6;
	margin-right: 5px;
}

#keywords a {
	display: block;
	text-align: center;
	padding: 5px;
	background-color: #f4eee3;
	font-size: 13px;
}

#div-tab {
	width: 866px;
	height: 40px;
	margin-bottom: 20px;
	font-size: 14px;
	font-weight: bold;
}

#div-tab ul {
	padding: 0px;
}

#div-tab li {
	float: left;
	width: 216px;
	height: 38px;
	border: solid 1px rgb(161, 136, 111);
	padding-top: 2px;
}

#div-tab a {
	display: block;
	text-align: center;
	padding: 5px;
}

#div-selector {
	text-align: right;
	margin-bottom: 50px;
}

#div-packages {
	padding-bottom: 40px;
	margin-bottom: 40px;
	border-bottom: 1px solid rgb(226, 224, 215);
}

#div-packCon {
	margin-left: 310px;
	text-align: left;
}

.tagico {
	font-size: 11px;
	height: 17px;
	background-color: #9c5718;
	color: #fff;
	padding: 1px 3px;
	border-radius: 2px;
}

#dd-border {
	border-bottom: 1px dotted #bfbfbf;
	padding-bottom: 17px;
	margin-bottom: 17px;
}

#btn-reservation {
	float: right;
	position: relative;
	bottom: 178px;
}

.faqList ul li .fTit .cate{
    float: left;
    color: #666;
    padding: 9px 0px;
    width: 118px;
    text-align: center;
    display: inline-block;
    *display: inline;
    font-size: 14px;
    zoom: 1;
}
.faqList {
	border-top: #cdcbbe solid 1px;
}
.faqList h3{
    margin-bottom:0;
}
.faqList ul li{
    border-bottom: #ccc solid 1px;
    vertical-align: middle;
    zoom: 1;
    background: #ffffff;
}
.faqList ul{
	padding-left: 0;
}
.faqList ul li .fTit .tit{
    float: left;
    color: #707070;
    padding: 9px 15px;
    display: inline-block;
    *display: inline;
    font-size: 14px;
    vertical-align: middle;
    zoom: 1;
}
.faqList ul li .fTit{
	display: block;
    overflow: hidden;
    zoom: 1;
    cursor: pointer;
    background: #faf9f4;
}

.faqList ul li .msg{
    text-align: left;
    margin: 0;
    position: relative;
    border-bottom: #ccc solid 1px;
    border-top: #ccc solid 1px;
    padding: 10px 25px 10px 156px;
    background: #fff;
    line-height: 160%;
    color: #1b1b1b;
    font-size: 12px;
}
}
</style>
<title>Spring Hotel</title>
</head>
<body>
	<%@ include file="../common/nav.jsp"%>
	<div class="container-fluid" id="container">
		<div id="div-sidebar">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">스프링 리워즈</h3>
			<ul class="menu">
				<li id="list"><a href="/benefits"><span>회원특전</span></a></li>
				<li id="list"><a href="/points"><span>포인트 안내</span></a></li>
				<li id="list"><span>회원전용 프로모션</span>
					<ul id="list-border">
						<li><a href="/rewards">객실 패키지</a></li>
						<li><a href="/events">이벤트</a></li>
					</ul></li>
				<li id="list"><span>스프링리워즈 문의</span>
					<ul id="list-border">
						<li><a href="/faq">FAQ</a></li>
						<li><a href="/contact">문의하기</a></li>
					</ul></li>
			</ul>
		</div>

		<div id="div-contents">
			<div id="div-content5">
				<h3 class="fs-7 border-dark border-bottom border-5 pb-3">FAQ</h3>
				<br>
				<div>
					<img src="resources/images/rewards/contactText02.gif">
				</div>
				<div id="h5">
					<h3 style="font-size:20px; font-weight:bolder; border-bottom: #A1886F solid 3px;">자주하는 질문</h3>
				</div>
				<div class="faqList">
					<ul>
						<li class="first"><a href="javascript:replyView('1','14');"
							class="fTit"> <span class="cate">기타</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> 객실 업그레이드 쿠폰은 어떻게 사용하나요?
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView1">
								<em class="icoA">A.</em>
								<p>객실 업그레이드 쿠폰은 등급에 따라 GOLD 등급(차상위 2매, 스위트 1매), DIAMOND
									등급(차상위 4매, 스위트 1매)이 제공됩니다.</p>
								<p>
									<br>※ 본 쿠폰은 등급 업그레이드로 인한 등급 조정 시 발행됩니다.
								</p>
								<p>
									<br>
								</p>
								<p>
									<strong>[쿠폰 사용 방법]</strong><br>1. 스프링호텔 모바일 앱 회원 로그인 후, 쿠폰함
									&gt; [마이쿠폰]에서 쿠폰 번호를 확인하여 예약하신 호텔의 객실예약과로
								</p>
								<p>쿠폰 사용을 요청합니다.</p>
								<p>
									<br>
								</p>
								<p>(서울스프링호텔 02-2230-3310, 제주스프링호텔 1588-1142)</p>
								<p>
									<br>
								</p>
								<p>2. 호텔 체크인 시, 프런트 직원에게 모바일 쿠폰을 제시해 주시면 사용이 완료됩니다.</p>
								<p>
									<br>
								</p>
								<p>
									※ 본 쿠폰은 객실 예약 시점에 해당 호텔 예약실로 사전 신청 후 이용 가능하며, 투숙 호텔의 객실 상황에 따라
									제공이 제한될 수 있습니다.<br> ※ 본 쿠폰은 객실 예약자 명과 스프링리워즈 회원 명이 동일할 경우에만
									사용 가능합니다.<br> ※ 본 쿠폰은 스프링호텔 예약실 및 공식 홈페이지(PC, 모바일 앱/웹)을 통한
									객실 예약에 한하여 적용 가능합니다.<br> ※ 본 쿠폰은 등급에 따른 회원 특전 사항으로 예약 객실
									수에 관계없이 한 객실에만 사용 가능하며, 기타 혜택과 중복 적용되지 않습니다.<br> ※ 본 쿠폰
									혜택은 투숙 당 최대 3박까지 적용 가능하며, 4박부터는 추가 요금 지불 또는 업그레이드 이전 객실로의 룸
									체인지가 필요합니다.<br>※ 쿠폰 사용의 세부 조건은 이용 약관을 참고해 주시기 바랍니다.
								</p>
								<p>
									<br>
								</p>
								<p>감사합니다.</p>
								<p>
									<br>
								</p>
							</div></li>
						<li><a href="javascript:replyView('2','14');" class="fTit">
								<span class="cate">기타</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> 객실 패키지 이용 금액은 포인트 적립 기준이 어떻게 되나요?
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView2">
								<em class="icoA">A.</em>
								<p>A. 객실 패키지 이용 금액은 최종 결제 금액에서 세금을 제외한 금액 중 객실 금액과 식음 이용 금액이
									각 적립률에 따라 적립됩니다.</p>
								<p>
									<br>
								</p>
								<p>①&nbsp;객실 : 총 결제 금액에서 세금 및 식음 이용 금액(조식/패키지 혜택으로 제공되는
									식음/기타 레스토랑 룸 차지)을 제외한 순수 객실 금액의 등급별 적립률</p>
								<p>
									<br>②&nbsp;식음 : 총 결제 금액에서 세금 및 객실 금액(①)을 제외한 식음 이용 금액의 등급별
									적립률
								</p>
								<p>
									<br>
								</p>
								<p>감사합니다.</p>
								<p>
									<br>
								</p>
								<p>
									<br>
								</p>
							</div></li>
						<li><a href="javascript:replyView('3','14');" class="fTit">
								<span class="cate">기타</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> 등급 점수는 어디서 확인이 가능한가요?
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView3">
								<em class="icoA">A.</em>
								<p>등급 점수는 홈페이지 또는 모바일 앱 스프링리워즈 회원 로그인 후 [마이페이지]에서 확인 가능합니다.</p>
								<p>
									<br>
								</p>
								<p>- 등급 점수는 멤버십 센터 유선 문의 또는 홈페이지 스프링리워즈 페이지 [문의하기]를 통해 확인
									가능합니다.</p>
								<p>
									<br>
								</p>
								<p>- 멤버십 승급 기준에 도달한 경우, 회원 등급은 즉시 상향되며 조정된 등급은 익년 말까지 유지됩니다.</p>
								<p>
									<br>
								</p>
								<p>
									- 멤버십 등급의 유지 및 강등은 가입 일자에 관계 없이 직전 1년 동안의 이용 실적을 기반으로 익년 1월 첫째
									주에 반영됩니다.<br>(예) 2022년 5월 1일 가입 시, 멤버십 등급 유지 및 강등은 2022년
									1월 1일~12월 31일 이용 실적을 기준으로 2023년 1월 초 반영됩니다.
								</p>
								<p>
									<br>
								</p>
								<p>
									- 등급 점수 산출 방법 및 보다 자세한 사항은 홈페이지에 게시된 회원 이용약관을 확인해 주시기 바랍니다.<br>
									&nbsp;<br> 감사합니다.<br>
								</p>
								<p>
									<br>
								</p>
							</div></li>
						<li><a href="javascript:replyView('4','14');" class="fTit">
								<span class="cate">기타</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> 로그인이 안됩니다.
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView4">
								<em class="icoA">A.</em> <span style="font-size: 10pt;">
									<p>
										<strong>[온라인 가입 회원]</strong>
									</p>
									<strong></strong>
									<p>
										<br>- 홈페이지 로그인 창의 "비밀번호 찾기"를 통해 임시 비밀번호를 발급받은 후 로그인
									</p>
									<p>
										<br>- 멤버십 번호 또는 아이디를 모르는 경우, "스프링리워즈 번호 또는 아이디 찾기"를 통해 가입
										정보 확인
									</p>
									<p>
										<br>
									</p>
									<p>
										<strong>[현장 가입 및 전환 신청 회원] </strong>
									</p>
									<strong></strong>
									<p>
										<br>⑴ 멤버십 번호를 아는 경우,
									</p>
									<p>
										<br>- 홈페이지 로그인 창 하단의 "온라인 계정 활성화" 진행
									</p>
									<p>
										<br>- ID 대신 멤버십 번호 입력 후, 발급받은 임시 비밀번호를 대소문자 구분 입력하여 로그인
									</p>
									<p>
										<br>
									</p>
									<p>⑵ 멤버십 번호를 모르는 경우,</p>
									<p>
										<br>- 홈페이지 로그인 창의 "스프링리워즈 번호 또는 아이디 찾기"를 통해 멤버십 번호 확인
									</p>
									<p>
										<br>- 멤버십 번호를 통해 "온라인 계정 활성화" 진행
									</p>
									<p>
										<br>- ID 대신 멤버십 번호 입력 후, 발급받은 임시 비밀번호를 대소문자 구분 입력하여 로그인
									</p>
									<p>
										<br>
									</p>
									<p>⑶ 온라인 계정 활성화 등록이 이미 되어있다고 뜨는 경우, “비밀번호 찾기”를 통해 로그인</p>
									<p>
										<br>
									</p>
									<p>
										※ 현장 가입 회원의 경우, 프런트에서 가입 신청서 작성 후 발급받은 임시 카드 번호가 스프링리워즈 멤버십
										번호입니다.<br> ※ 현장 가입 회원은 ID 대신 스프링리워즈 멤버십 번호 입력 후 로그인 가능합니다.<br>
										※ 안전한 이용을 위해 로그인 성공 시 [마이페이지]에서 비밀번호를 변경해 주시기 바랍니다.<br>※
										영문명 철자 오타, 성과 이름의 순서 오류 또는 개인 정보가 다르게 입력된 경우 회원 조회가 불가하오니,
									</p>
									<p>회원 가입 시 입력하신 정보를 올바르게 입력해 주시기 바랍니다.</p>
									<p>
										<br>
									</p>
									<p>
										감사합니다.<br>
									</p>
								</span>
								<p>
									<br>
								</p>
							</div></li>
						<li><a href="javascript:replyView('5','14');" class="fTit">
								<span class="cate">기타</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> 멤버십 카드(모바일 카드)는 어디서 확인이 가능한가요?
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView5">
								<em class="icoA">A.</em>
								<p>스프링리워즈 멤버십은 2017년 6월 홈페이지 개편을 통하여 고객 편의와&nbsp;정확한 회원 정보
									관리를 위해 모바일 카드를 제공하고 있습니다.</p>
								<p>
									<br>
								</p>
								<p>- 모바일 카드는 모바일 홈페이지 또는 스프링호텔 모바일 앱을 통해 회원 로그인 후 [마이페이지]에서
									확인 가능합니다.</p>
								<p>
									<br>- 모바일 카드 제시 후 포인트 적립 및 사용이 가능합니다.
								</p>
								<p>
									<br>
								</p>
								<p>감사합니다.</p>
								<p>
									<br>
								</p>
								<p>
									<br>
								</p>
							</div></li>
						<li><a href="javascript:replyView('6','14');" class="fTit">
								<span class="cate">기타</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> 모바일 쿠폰은 어떻게 확인/사용하나요?
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView6">
								<em class="icoA">A.</em>
								<p>모바일 쿠폰은 스프링호텔 모바일 앱을 통해 발급됩니다.</p>
								<p>
									<br>
								</p>
								<p>
									<strong>[모바일 쿠폰 확인 방법]</strong>
								</p>
								<p>
									<br>1) 안드로이드(구글 플레이스토어) 또는 iOS(앱스토어)에서 "스프링호텔" 검색 후 모바일 앱
									다운로드
								</p>
								<p>
									<br>2) 모바일 앱 스프링리워즈 회원 로그인 후 [쿠폰함] 클릭
								</p>
								<p>
									<br>3) 쿠폰 리스트에서 쿠폰 별 세부정보 확인
								</p>
								<p>
									<br>
								</p>
								<p>
									<strong>[모바일 쿠폰 사용 방법]</strong>
								</p>
								<p>
									<br>1) 객실 업그레이드 쿠폰은 기존과 동일하게 객실 예약 시점에 쿠폰 번호를 객실예약과로 전달해
									주시면 사용 신청이 가능합니다.
								</p>
								<p>체크인 시 모바일 쿠폰 화면을 프런트 직원에게 보여주시면 사용 완료 처리를 도와드립니다.</p>
								<p>
									<br>2) 그 외 호텔 별 할인 쿠폰은 별도의 사전 신청 없이 체크인 시점에 프런트 직원을 통해 사용
									가능합니다.
								</p>
								<p>단, 쿠폰 적용은 체크인 시점에만 가능하며, 체크아웃 시점 또는 체크아웃 이후에는 적용이 불가합니다.</p>
								<p>
									<br>
								</p>
								<p>
									※ 객실 업그레이드 쿠폰 사용 신청은 각 호텔 객실예약과에 문의해 주시기 바랍니다.<br>(서울스프링호텔
									02-2230-3310, 제주스프링호텔 1588-1142)
								</p>
								<p>
									<br>
								</p>
								<p>
									감사합니다.<br>
								</p>
								<p>
									<br>
								</p>
								<p>&nbsp;</p>
							</div></li>
						<li><a href="javascript:replyView('7','14');" class="fTit">
								<span class="cate">기타</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> 스프링리워즈 멤버십센터의 운영시간은 어떻게 되나요?
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView7">
								<em class="icoA">A.</em>
								<p>스프링리워즈 멤버십 센터 운영 시간은 평일(월~금요일) 오전 9시~오후 6시이며, 주말 및 공휴일은
									휴무입니다.</p>
								<p>
									<br>운영 시간 외 문의는 홈페이지 스프링리워즈 페이지 [FAQ]를 참고하거나 [문의하기]를 통해 등록
									가능합니다.
								</p>
								<p>
									<br>※ 스프링리워즈 대표전화 : 02-2230-5528
								</p>
								<p>
									<br>
								</p>
								<p>
									감사합니다.<br>
								</p>
								<p>
									<br>
								</p>
							</div></li>
						<li><a href="javascript:replyView('8','14');" class="fTit">
								<span class="cate">기타</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> 스프링리워즈 포인트 적립은 어떻게 하나요?
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView8">
								<em class="icoA">A.</em>
								<p>
									<strong>1. 객실 이용</strong>
								</p>
								<p>
									<br>1) 객실 예약 시, 객실예약과 또는 프런트에 스프링리워즈 멤버십 번호를 알려주시기 바랍니다.
								</p>
								<p>
									<br> 2) 포인트는 <strong>체크아웃</strong> 익일 9시경 <strong>자동
										적립</strong>됩니다.
								</p>
								<p>
									<br>3) 포인트는 최종 결제 금액에서 세금을 제외한 금액에 대해 객실 3%와 식음 1%가 각각
									적립됩니다.
								</p>
								<p>
									<br> ※ 포인트 적립은 객실 예약자 명과 스프링리워즈 회원 명이 동일한 경우에만 가능합니다.<br>&nbsp;
								</p>
								<p>
									<br> <strong>2. 식음 이용</strong>
								</p>
								<p>
									<br> ① 현장 결제 시, 해당 업장의 직원에게 스프링리워즈 멤버십 번호를 알려주시면 결제일 <strong>익일</strong>
									포인트가 자동 적립됩니다.
								</p>
								<p>단, 멤버십 번호를 제시하지 않을 경우, 포인트는 적립되지 않습니다.</p>
								<p>
									<br>
								</p>
								<p>※ 유료 멤버십 회원의 경우에도 결제 시점에 스프링리워즈 멤버십 번호를 제시해야만 포인트 적립이
									가능합니다.</p>
								<p>포인트 적립 누락 시, 홈페이지 스프링리워즈 페이지 [FAQ]의 포인트 조정신청 방법을 참고하여 신청해
									주시기 바랍니다.</p>
								<p>
									<br>
								</p>
								<p>
									감사합니다.<br>
								</p>
								<p>
									<br>
								</p>
							</div></li>
						<li><a href="javascript:replyView('9','14');" class="fTit">
								<span class="cate">기타</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> 회원 정보 수정은 어떻게 하나요?
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView9">
								<em class="icoA">A.</em>
								<p>
									<br>
								</p>
								<p>
									홈페이지 스프링리워즈 회원 로그인 후<strong> [마이페이지]</strong> <strong>‘프로필</strong>
									<strong>수정'</strong>에서 간단한 회원 정보 수정이 가능합니다.
								</p>
								<p>
									<br>단, 회원명 및 주소지 정보는 멤버십 센터를 통해서만 변경 가능합니다.
								</p>
								<p>멤버십 센터 유선 문의 또는 홈페이지 스프링리워즈 페이지 [문의하기]를 통해 수정을 요청해 주시기
									바랍니다.</p>
								<p>
									<br>
								</p>
								<p>
									감사합니다.<br>
								</p>
								<p>
									<br>
								</p>
							</div></li>
						<li><a href="javascript:replyView('10','14');" class="fTit">
								<span class="cate">스프링리워즈가입</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> 스프링리워즈 가입은 어떻게 하나요?
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView10">
								<em class="icoA">A.</em>
								<p>스프링리워즈는 무료 멤버십으로 온라인 또는 오프라인에서 가입이 가능합니다.</p>
								<p>
									<br>
								</p>
								<p>
									<strong>1. 온라인</strong>
								</p>
								<p>
									<br> 스프링호텔 홈페이지 우측 상단의 '스프링리워즈 가입' 버튼을 통해 회원 가입이 가능하며, 신청 완료
									시 멤버십 번호가 <strong>즉시</strong> 부여됩니다.
								</p>
								<p>
									<br>회원 가입 시점 이전에 객실을 예약하신 경우 해당 호텔의 객실 예약실 또는 멤버십 센터에 멤버십
									번호를 알려주시면
								</p>
								<p>예약 건에 멤버십 정보를 반영해 드립니다.</p>
								<p>
									<br>
								</p>
								<p>
									<strong>2. 오프라인</strong>
								</p>
								<p>
									<br>호텔 프런트에서 회원 가입이 가능하며, 가입 신청서 작성 완료 후 멤버십 번호와 임시 카드가
									발급됩니다.
								</p>
								<p>
									<br>임시 카드의 멤버십 번호를 통해 홈페이지 로그인 창 하단의 ‘온라인 계정 활성화’ 진행 완료 시,
								</p>
								<p>해당 멤버십 번호를 ID 대신 사용하여 로그인이 가능합니다.</p>
								<p>
									<br>
								</p>
								<p>
									<strong>3.</strong> 모바일 카드는 가입 방법에 관계 없이 모바일 홈페이지 또는 스프링호텔 모바일 앱
									회원 로그인 후 [마이페이지]에서 확인 가능합니다.
								</p>
								<p>
									<br>
								</p>
								<p>
									감사합니다.<br>
								</p>
								<p>
									<br>&nbsp;
								</p>
							</div></li>
						<li><a href="javascript:replyView('11','14');" class="fTit">
								<span class="cate">스프링리워즈가입</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> 온라인 계정 활성화 등록과 온라인 가입의 차이점은 무엇인가요?
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView11">
								<em class="icoA">A.</em>
								<p>
									<strong>온라인 계정 활성화</strong>는<strong> </strong>아래 경로를 통해 스프링리워즈
									회원 전환 또는 신규 가입한 고객 대상 진행됩니다.
								</p>
								<p>
									<br>1) 구 멤버십(골드클럽, 다이너스티) 회원 중 스프링리워즈 회원 전환 신청을 완료한 고객
								</p>
								<p>
									<br>2) 호텔 프런트에서 스프링리워즈 멤버십에 신규 가입한 고객
								</p>
								<p>
									<br>전달받은 스프링리워즈 번호와 영문 성명, 이메일 주소 입력 시 임시 비밀번호가 발급됩니다.
								</p>
								<p>온라인 가입은 홈페이지를 통해 신규 가입한 고객을 의미하며, 가입 완료 시 멤버십 번호가 즉시
									부여됩니다.</p>
								<p>
									<br>
								</p>
								<p>
									감사합니다.<br>
								</p>
								<p>
									<br>
								</p>
							</div></li>
						<li><a href="javascript:replyView('12','14');" class="fTit">
								<span class="cate">포인트 적립/사용</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> 포인트 적립률은 어떻게 되나요?
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView12">
								<em class="icoA">A.</em>
								<p>객실 이용 금액의 3%, 식음 이용 금액의 1%가 적립됩니다. (Brown, Silver 등급 기준)</p>
								<p>
									<br>적립률은 등급에 따라 상이하며 최종 결제 금액에서 세금을 제외한 금액으로 계산됩니다.
								</p>
								<p>
									<br>패키지 상품 및 룸차지 금액의 경우, 각 항목의 객실 및 식음 적립률에 따라 계산됩니다.
								</p>
								<p>
									<br>객실 상품의 경우, 포인트 비적립 대상인 항목에 대해서는 포인트가 적립되지 않습니다. 비적립 대상
									관련 보다 자세한 사항은 홈페이지 스프링리워즈 페이지 [FAQ]에서 확인 가능합니다.
								</p>
								<p>
									<br>
								</p>
								<p>
									감사합니다.<br>
								</p>
								<p>
									<br>
								</p>
							</div></li>
						<li><a href="javascript:replyView('13','14');" class="fTit">
								<span class="cate">포인트 적립/사용</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> 포인트가 적립되지 않는 객실 상품은 무엇인가요?
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView13">
								<em class="icoA">A.</em>
								<p>
									스프링리워즈 약관 제6조 3항에 의거하여 아래 항목은 포인트 적립 대상에서 <strong>제외</strong>됩니다.
								</p>
								<p>
									<br>
								</p>
								<p>
									(1) 도매 요금, 무료 객실, House Use 객실, 임직원 특별 요금, 가족 요금, 여행사 및 대행사 등을
									통한 예약<br> (2) 계약에 포함되지 않은 요금<br> (3) 조직, 연회, 협회 등 특정
									단체가 결제하는 투숙<br> (4) 삼성상품권 구매 금액, 유료 멤버십 가입비<br> (5)
									임대 영업장 내 결제금액<br>(6) 인터넷, 미니바, 유료 TV, 객실 핸드폰요금, 객실 내 전화요금,
									간이침대 대여비, 소매제품 구매비용, 세금,
								</p>
								<p>비즈니스 센터 이용 금액, 세탁비, 교통비, 피트니스클럽 이용비용, 서울스프링호텔 어번 아일랜드 내 식음
									등 이용비용, 연회비용,</p>
								<p>
									No-Show비용, 객실 예약취소 페널티비용<br> (7) 식음업장 리테일 제품 및 이벤트 제품(에코백,
									키링, 와인 등)<br>(8) 멤버십 숙박권을 통한 투숙 비용(Shilla S, 블루클럽, 프리미엄 블루
									등 멤버십 가입 시 제공되는 숙박권)
								</p>
								<p>
									<br> &nbsp;감사합니다.<br>
								</p>
								<p>
									<br>
								</p>
							</div></li>
						<li class="last"><a href="javascript:replyView('14','14');"
							class="fTit"> <span class="cate">포인트 조정</span>
								<h3 class="tit">
									<em class="icoQ">Q.</em> [포인트 조정 신청] 포인트 적립이 누락되었습니다.
								</h3>
						</a>
							<div style="display: none" class="msg" id="replyView14">
								<em class="icoA">A.</em>
								<p>아래의 경우에는 포인트가 적립되지 않습니다.</p>
								<p>
									<br> 1) 스프링리워즈 회원 <strong>가입 시점</strong> <strong>이전</strong>의
									이용 내역<br> 2) 포인트 <strong>비적립</strong> 대상인 객실 상품 이용 내역
								</p>
								<p>
									<br>보다 자세한 사항은 홈페이지 스프링리워즈 페이지 [FAQ]에서 확인 가능합니다.
								</p>
								<p>위 경우에 해당되지 않을 경우, 아래 방법을 통해 포인트 조정 신청이 가능합니다.</p>
								<p>
									<br>
								</p>
								<p>
									<br> <strong>&lt;포인트 조정 신청 방법&gt;</strong>
								</p>
								<p>
									<br> 1) 홈페이지 스프링리워즈 회원 로그인 후 [마이페이지] 접속<br> 2)<strong>
										"포인트 조정신청"</strong> 메뉴 선택<br>3) 이용 지점, 업장명, 결제 영수증 사진을 첨부하여 포인트 조정
									신청
								</p>
								<p>
									<br> ※ 식음 업장 이용 내역에 대해서는 영수증을 첨부할 경우에만 포인트 조정이 가능합니다.<br>※
									파일은 5MB 이하의 크기로 첨부해 주시기 바랍니다.
								</p>
								<p>
									<br>
								</p>
								<p>
									- 포인트 조정 신청 후 1~2주일 내(영업일 기준) 멤버십 센터에서 확인 후 해당 포인트를 적립하여 드립니다.<br>-
									포인트 조정 처리 결과 및 세부 내용은 메일을 통해 안내해 드립니다.
								</p>
								<p>
									<br>
								</p>
								<p>감사합니다.</p>
								<p>
									<br>
								</p>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../common/footer.jsp"%>
</body>
<script type="text/javascript">

function replyView(replyNum , totalCount){
	if($("#replyView"+replyNum).css("display") == "none"){
		$("#replyView"+replyNum).attr("style","display:");
	}else{
		$("#replyView"+replyNum).attr("style","display: none");
	}
}

</script>
</html>