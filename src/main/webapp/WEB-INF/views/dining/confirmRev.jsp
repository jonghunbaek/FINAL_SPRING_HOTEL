<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<title>스프링 온라인</title>
<style>
/* *{font-family: 돋움, sans-serif, Arial} */

#container {width: 1000px; margin: 0 auto;}

#div-title { padding-top: 50px; border-bottom: solid #4a433b 6px; color:#81725f}

#div-notice {padding-top: 20px;}

#div-rev-info{padding: 20px; border:solid #856f56 3px;}

#info-title{border-bottom:solid #4a433b 3px; color:#81725f}

#div-cancel-notice{margin-top:20px; background:#f1e3c4; font-size:80%; padding-top:5px; border:solid #f1e3c4 1px;}

#div-text-info {margin-top :20px; font-size:80%;}

#div-text-info img {width: 60px; height: 20px;}

#div-rev-number{height: 50px; padding:10px; background:#f1e3c4; padding-bottom: 20px;}

#div-box-info{border: solid #856f56 2px};

#rev-no{color: grey;}

#div-hotel-info .left {padding-lef:20px; border-right: dotted #856f56 3px;}

#div-hotel-info .right {padding-left: 30px;}

#div-hotel-info span{font-size: 100%; }

#div-hotel-info p{font-size: 90%;}

#div-hotel-info {padding: 30px; background:#f7f7f7}

#div-customer-info-title{margin-left: 10px; margin-top :20px; font-size:80%;}

#div-customer-info{padding: 30px;border: solid #856f56 2px}

#div-customer-info p{font-size: 90%; }

#div-customer-info{ background:#f7f7f7}

#div-customer-info .left {border-right: dotted #856f56 3px;}

#div-customer-info .right {padding-left:30px;}

#div-card-info-title{margin-left: 10px; margin-top :20px; font-size:80%;}

#div-card-info{background:#f7f7f7; border-top: solid #f1e3c4 1px; border-bottom: solid #f1e3c4 1px; padding:10px; margin-left:10px; margin-bottom:20px;}

#btn-div-reservation img{width: 100xp ; height: 30px;}

.text1{font-weight: 500;}
</style>
</head>
<body>
<c:set var="menu" value="home"/>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div id="div-title">
		<div class="row">
			<div class="col-6">
				<h2><strong>예약확인/취소</strong></h2>
			</div>
			<div class="col-6 text-end">
				<p><i class="bi bi-house-door-fill"></i>&nbsp;> My page > 예약확인/취소<p>
			</div>
		</div>
	</div>
	<div id="div-notice">
		<p>온라인 예약에 한해 조회가능합니다.</p>
	</div>
	<div id="div-rev-info">
		<h5 id="info-title"><strong>다이닝 예약</strong></h5>
		<div id="div-cancel-notice">
			<p>예약취소는&nbsp;<strong>예약취소/환불</strong>규정을 참고 후 진행해 주시기 바랍니다.</p>
		</div>
		<div id="div-text-info" class="row">
			<div class="col-6">
				<p><strong>예약정보</strong></p>
			</div>
			<div class="col-6 text-end">
				<a href="#"><img src="../resources/images/dining/btn-print.png"></a>
			</div>
		</div>
		<div id="div-box-info">
			<div id="div-rev-number">
				<div class="row">
					<div class="col-6">
						<p><strong>예약번호</strong></p>
					</div>
					<div class="col-6 text-end">
						<p id="rev-no"><strong>${rtRev.reservationNo }</strong></p>
					</div>
				</div>
			</div>
			<div id="div-hotel-info">
				<div class="row">
					<div class="col-6 left">
						<p><strong>예약자명</strong></p>
						<p class="text1">${rtRev.name }</p>
						</br>
						<p><strong>호텔</strong><p>
						<p class="text1">${rtRev.dn.location.name }신라호텔</p>
						</br>
						<p><strong>레스토랑</strong></p>
						<p class="text1">${rtRev.dn.name }(${rtRev.dn.dnInfo.tel })</p>
					</div>
					<div class="col-6 right">
						<p><strong>예약상태</strong></p>
						<c:choose>
						<c:when test="${rtRev.status eq 'R' }">
							<p style="color:blue;"><strong>예약완료</strong></p>
						</c:when>
						<c:when test="${rtRev.status eq 'D' }">
							<p style="color:red;"><strong>예약취소</strong></p>
						</c:when>
						<c:when test="${rtRev.status eq 'O' }">
							<p style="color:green;"><strong>예약임박</strong></p>
						</c:when>
						<c:when test="${rtRev.status eq 'I' }">
							<p><strong>방문완료</strong></p>
						</c:when>
						</c:choose>						
						</br>
						<p><strong>예약일</strong><p>
						<span id="rev-date" ><fmt:formatDate pattern="yyyy-MM-dd" value="${rtRev.visitDate }"/></span> <span id="week-day"></span><span> &nbsp;${rtRev.visitTime }</span>
						</br></br>
						<p><strong>예약인원</strong></p>
						<p class="text1">성인&nbsp;${rtRev.adult },&nbsp;어린이&nbsp;${rtRev.child },&nbsp;유아&nbsp;${rtRev.baby }</p>
					</div>
				</div>
			</div>
		</div>
		<div id="div-customer-info-title">
			<p><strong>고객정보</strong></p>
		</div>
		<div id="div-customer-info">
			<div class="row">
				<div class="col-6 left">
					<p><strong>고객명</strong></p>
					<p class="text1">${rtRev.name }</p>
					</br>
					<p><strong>연락처</strong><p>
					<p class="text1">${rtRev.tel }</p>
					</br>
				</div>
				<div class="col-6 right">
					<p><strong>이메일</strong></p>
					<p class="text1">${rtRev.email }</p>
					</br>
				</div>
			</div>
		</div>
		<div id="div-card-info-title">
			<p><strong>카드</strong></p>
		</div>
		<div id="div-card-info">
			<div class="row">
				<div class=col-3>
					<p><strong>카드번호</strong></p>
					<p><strong>카드종류</strong></p>
				</div>
				<div class=col-3>
					<p>************${rtRev.cardNum4 }</p>
					<p>${rtRev.cardSort }</p>
				</div>
				<div class=col-3>
					<p></p>
					</br>
					<p><strong>유효기간</strong></p>
				</div>
				<div class=col-3>
					<p></p>
					</br>
					<span id="card-expiry-month">${rtRev.cardExpiryMonth }</span>/<span>${rtRev.cardExpiryYear }</span>
				</div>
			</div> 
		</div>
		<c:choose>
		<c:when test="${rtRev.status eq 'R' }">
		<div id="btn-div-reservation" class="text-end">
			<a href="#"><img src="/resources/images/dining/btn-reservation_change.png"/></a>
			<a id="btn-open-cancel-rev" href="#"><img src="/resources/images/dining/btn-reservation-canceled.png"/></a>
		</div>
		</c:when>
		</c:choose>
	</div>
</div>

<div class="modal" tabindex="-1" id="modal-rev-cancel" data-bs-backdrop="static" data-bs-keyboard="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLabel">예약취소 안내</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body text-center">
     	<h5>예약을 정말 취소하시겠습니까?</h5>
      </div>
      <div class="modal-footer text-center">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary" id="btn-cancel-rev">확인</button>
        <form id="form-delete-Rev" method="post" action="/dining/deleteRev">
        	<input type="hidden" name="rtRevNo">
        	<input type="hidden" name="name">
        	<input type="hidden" name="seatType">
        	<input type="hidden" name="mealTime">
        	<input type="hidden" name="revCount">
        </form>
      </div>
    </div>
  </div>
</div>


<%@ include file="../common/footer.jsp" %>
<script type="text/javascript">
$(function(){
	let cancelModal = new bootstrap.Modal(document.getElementById("modal-rev-cancel"));
	
	//예약취소 모달창 오픈
	$("#btn-open-cancel-rev").click(function(){
		cancelModal.show();
	})
	$("#btn-cancel-rev").click(function(){
		$(":input[name=rtRevNo]").val("${rtRev.reservationNo}");
		$(":input[name=name]").val("${rtRev.name}");
		$(":input[name=seatType]").val("${rtRev.seatType}");
		$(":input[name=mealTime]").val("${rtRev.mealTime}");
		let revCount = ${rtRev.adult}+${rtRev.child}+${rtRev.baby};
		$(":input[name=revCount]").val(revCount);
		$("#form-delete-Rev").submit();
	})
	
	// 요일 표시
	let date = $("#rev-date").text();
	let week = new Array('(일)', '(월)', '(화)', '(수)', '(목)', '(금)', '(토)');
	let dayOfDate = new Date(date).getDay();
	let dayLabel = week[2];
	$("#week-day").text(dayLabel);
	
	//카드 유효기간 한자리일때 앞자리 0추가
	$month = $("#card-expiry-month").text();
	if($month.length < 2) {
		$month = '0' + $month;
	} 
	$("#card-expiry-month").text($month);
	
})
</script>
</body>
</html>