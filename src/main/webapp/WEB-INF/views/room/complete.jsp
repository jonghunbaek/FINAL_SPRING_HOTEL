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
<!-- roomRev3 CSS -->
<link
	href="${pageContext.request.contextPath}/resources/room/css/complete.css"
	rel="stylesheet">
<!-- total zone -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<title>Spring Hotel</title>
</head>
<body>
	<c:set var="menu" value="completed" />
	<%@ include file="../common/nav.jsp"%>
	<div class="contain">
		<div class="container">
			<!-- Rev completed -->
			<div class="rev-step">
				<div style="color: #7b6f4bf2; font-size: 30px; font-weight: 300; margin-block: 10px;">예약이 완료되었습니다.</div>
				<div style="font-size: 30px; color:#7b6f4bf2 ">
					<span style="font-size: 13px; color: gray;">예약번호</span> 28002900
				</div>
			</div>
			<!-- action 1 -->
			<div id="Accordion_wrap1" style="border: 0.01em solid #80808063;">
				<div class="que1" style="background-color: #9fa0a11c;">
					<span style="margin-left: 20px;">예약정보</span>
					<div class="arrow-wrap1"></div>
				</div>
				<div class="anw1 row p-3" style="margin-inline:10px;">
					<!-- 호텔정보/예약상세정보/고객정보  -->
					<div class="hotel-info col-3">
						<strong class="title-bold" >호텔정보</strong>
						<div class="col" style="margin-top: 10px;">
							<img class="row-6" alt="호텔사진" src="../resources/images/room/location/seoul.jpg" style="width: 150px;">
							<div class="row-6" style="margin-top: 10px;">
								<div class="title-bold" style="font-weight: 700;">서울 신라호텔</div>
								<div style="color: gray; font-size:13px; margin-top: 5px; ">서울특별시 중구 장충동 동호로 249</div>
							</div>
						</div>
					</div>
					<div class="hotel-info-detail col-5"
						style="border-inline: 1px dotted #8080805c; padding-inline: 20px;">
						<strong class="title-bold">예약 상세 정보</strong>
						<div class="row">
							<ul class="col-4" style="list-style: none; margin-top: 10px;">
								<li>체크인/체크아웃</li>
								<li style="margin-block: 10px;">객실</li>
								<li>투숙인원</li>
							</ul>
							<ul class="col-8" style="list-style: none; margin-top: 10px;">
								<li>2022.10.12-2022.10.13(1박)</li>
								<li style="margin-block: 10px;">디럭스 / 더블</li>
								<li>성인 2, 어린이 1</li>
							</ul>
						</div>
					</div>
					<div class="customer-info col-4" style="padding-inline:20px">
						<strong class="title-bold" >고객 정보</strong>
						<div class="row">
							<ul class="col-6" style="list-style: none; margin-top: 10px;">
								<li>고객명</li>
								<li style="margin-block:10px;">연락처</li>
								<li>이메일</li>
							</ul>
								<ul class="col-6" style="list-style: none; margin-top: 10px;">
								<li>NANA KIM</li>
								<li style="margin-block:10px; ">010-1111-2222</li>
								<li>nana@gmail.com</li>
							</ul>
						</div>
					</div>

				</div>

			</div>

			<!-- 요금상세 -->
			<div id="Accordion_wrap2"
				style="margin-top: 30px; border: 0.01em solid #80808063;">
				<div class="que2" style="background-color: #9fa0a11c;">
					<span style="margin-left: 20px;">요금상세(1박)</span>
					<div class="arrow-wrap2">
						<span class="arrow-top2">↑</span> <span class="arrow-bottom2">↓</span>
					</div>
				</div>
				<div class="anw2 p-3" style="display: flex; border-bottom: 1px solid #dddddd; display: none; overflow: hidden; font-size: 16px; padding: 27px 0;">
					<strong class="title-bord">객실1(성인 2 / 어린이 0)</strong>
					<div class="box-2" style="margin: 30px;">
						<div class="box-2-1 row"
							style="text-align: center; padding-block: 10px; border-top: 1px solid #7b6f4bf2;">
							<div class="col-2">투숙 일자</div>
							<div class="col-2">객실 요금</div>
							<div class="col-2">성인 조식</div>
							<div class="col-2">어린이 조식</div>
							<div class="col-2">엑스트라 베드</div>
							<div class="col-2">합계</div>
						</div>
						<div class="box-2-2 row" style="text-align: center; padding-block: 10px; border-block: 1px dashed #8080805c;">
							<div class="col-2">2022.10.12(수)</div>
							<div class="col-2">350,000원</div>
							<div class="col-2">45,454원</div>
							<div class="col-2">-</div>
							<div class="col-2">33,000원</div>
							<div class="col-2">428,454원</div>
						</div>
						<div class="box-2-3 row" style="padding-block:10px; border-bottom: 1px solid #7b6f4bf2;">
							<div class="col-10" style="text-align: end;">부가가치세</div>
							<div class="col-2" style="text-align: center;">42,845원</div>
						</div>
					</div>
				</div>
				<div class="que3" style="align-content: center;justify-content: space-between;height: 60px;background-color: #664d03a6;color: #f9fafb;">
					<strong class="title-bold" style="margin-left: 30px;">요금 합계<span style="font-size: 13px; font-weight: 400;">(부가가치세 포함)</span></strong><span class="form-check" style="margin-right: 30px;">471,299원</span>
				</div>
			</div>
			
			<!-- gray box -->
			<div class="gray-box" style="background-color: #dee2e642;margin-top: 50px; color: gray; font-size: 13px;">
				<ul style="padding: 20px; list-style: none; line-height: 20px;" >
					<li>※ 부가가치세 10%가 포함된 금액입니다.</li>
					<li>※ 예약 번호를 메모해두시면 빠르고 편리하게 예약을 확인하실 수 있습니다.</li>
					<li>※ 예약한 내용 확인 및 변경, 취소는 My Page에서 가능합니다.</li>
					<li>※ 현재 미결제 상태이며, 최종 결제는 프론트 데스ㅏ크에서 진행됩니다.</li>
					<li>※ 체크인 시 등록카드 작성 및 투숙객 본인 확인을 위해 본인 사진이 포함되 신분증을 반드시 제시해 주시기
						바랍니다.</li>
					<li>※ 비회원으로 예약한 경우에는, 예약번호로 예약 내용 확인, 변경, 취소가 가능합니다.</li>
				</ul>
			</div>
			<div class="ok-btn1" style="text-align: center; margin-top: 40px;">
				<a href="#"><img alt="확인" src="../resources/images/room/rev/ok.gif"></a>
			</div>
		</div>
	</div>
	<%@ include file="../common/footer.jsp"%>
	<script>

		// 아코디언 2
		$(".que2").click(function() {
			$(this).next(".anw2").stop().slideToggle(300);
			$(this).toggleClass('on').siblings().removeClass('on');
			$(this).next(".anw2").siblings(".anw2").slideUp(300);
		});

		// 아코디언 3
		$(".que3").click(function() {
			$(this).prev(".anw3").stop().slideToggle(300);
			$(this).toggleClass('on').siblings().removeClass('on');
			$(this).prev(".anw3").siblings(".anw3").slideUp(300);
		});
	</script>
</body>
</html>