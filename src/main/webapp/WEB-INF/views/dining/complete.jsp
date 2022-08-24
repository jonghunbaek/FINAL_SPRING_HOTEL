<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
*{font-family: 돋움, sans-serif, Arial}

#container {width: 1200px; margin: 0 auto;}

.complete-text h2{font-weight:800;}

.complete-text {margin-top:80px}

.complete-text span{margin-top :30px;}

#reservation-no {font-size: 200%; color: #9f876b;}

.complete-text p {margin-top: 30px;}

#rev-info {padding: 10px;}

#img-res{width:140px; height: 75px;}

#btn-print{ width: 80px; height: 30px;}

#rev-info {margin-top: 80px; border: solid #D5D5D5 1px; border-top: solid #9f876b 3px;}

.st-text {font-size: 120%; font-weight:800;}

.st-text2 {font-size: 100%; font-weight:800;}

.nor-text {font-size: 85%; font-weight:200; }

#text-rev-info {padding: 10px; border-bottom:solid #9f876b 1px;}

#restaurant-info{padding:20px; border-right: dotted #D5D5D5 1px;}

#rev-more-info{padding: 20px; border-right: dotted #D5D5D5 1px;}

#rev-guest-info{padding: 20px;}

#rev-notice{margin-top: 50px;}
</style>
<title>Spring Hotel</title>
</head>
<body>
<c:set var="menu" value="home"/>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid " id="container">
	<div class="complete-text text-center">
		<h2>예약이완료 되었습니다</h2>
		<p>예약번호 <span id="reservation-no">${diningReservationForm.reservationNo }</span></p>
		<span>예약하신 내용이 예약 시 입력하신 이메일과 문자(알림톡)로 발송되었습니다. &nbsp;&nbsp;&nbsp;</span>
		<span></span><a href="#"><img id="btn-print" class="text-end" src="../resources/images/dining/btn-print.png"/></a></span>
	</div>
	<div id="rev-info">
		<div id="text-rev-info">
			<p class="st-text">예약정보</p>
		</div>
		<div class="row">
			<div id="restaurant-info" class="col-4">
				<p class="st-text">레스토랑정보</p>
				<div class="row">
					<div class="col-6 text-center">
						<img id="img-res" src="../resources/images/dining/더파크뷰메인.jpg">
					</div>
					<div class="col-6">
						<p><strong>${dining.name}</strong></p>
						<p class="nor-text">${dining.location.name }스프링호텔</p>
						<p class="nor-text">${dining.dnInfo.location }</p>
						<p class="nor-text">${dining.dnInfo.tel }</p>
					</div>
				</div>
			</div>
			<div id="rev-more-info" class="col-4">
				<div class="row">
					<p class="st-text">예약 상세정보</p>
					<div class="col-6">
						<p class="st-text2">예약일</p>
						<p class="st-text2">예약인원</p>
					</div>
					<div class="col-6 text-end">
						<p class="nor-text"> ${diningReservationForm.date }(${day }) &nbsp;${diningReservationForm.visitTime }</p>
						<p class="nor-text"> 성인 ${diningReservationForm.adult }, 어린이 ${diningReservationForm.child }, 유아 ${diningReservationForm.baby }</p>
					</div>
				</div>
			</div>
			<div id="rev-guest-info" class="col-4">
				<div class="row">
					<p class="st-text">고객 정보</p>
					<div class="col-6">
						<p class="st-text2">예약자명</p>
						<p class="st-text2">연락처</p>
						<p class="st-text2">이메일</p>
					</div>
					<div class="col-6 text-end">
						<p class="nor-text">${diningReservationForm.name }</p>
						<p class="nor-text">${diningReservationForm.tel }</p>
						<p class="nor-text">${diningReservationForm.email }</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="rev-notice">
		<p class="nor-text">※방문 예정일 1일전까지는 변경 및 취소가 가능합니다.</p>
		<p class="nor-text">※방문 당일 취소 및 변경은 불가하며, 예약 인원 식사 금액의 10%가 위약금으로 부과됩니다.
		<p class="nor-text">※방문 당일 취소 및 변경시, 전화 문의 바랍니다.</p>
		<p class="nor-text">※예약 내역과 상이할 시, 이용이 제한되거나 변경될 수 있습니다.</p>
	</div>
</div>

<%@ include file="../common/footer.jsp" %>
<script type="text/javascript">

</script>
</body>
</html>