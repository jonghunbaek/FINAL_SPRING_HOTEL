<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">

	#container {padding-top: 65px; width: 1200px; height:1500px; margin: auto; padding-left: 0px; padding-right: 0px;}
	#container a {text-decoration: none; color: rgb(99, 62, 16);}
	#container h3 {font-family: 'Nanum Myeongjo', serif; color: rgb(133, 111, 86);}
	#container input {border: 1px solid rgb(204,204,204);}
	li {list-style: none;}
	#h5 {font-size: 15px; border-bottom: 3px; border-color: black; margin-top: 30px;}
	#div-sidebar {float: left; width: 264px; height: 720px; background-color: rgb(241, 227, 196);
				  margin: auto; padding: 23px; text-align: left; border: 1px solid #e9dab8;}
	#div-sidebar ul {padding: 0px;}
	#list {margin-top: 25px; text-align: left;}
	#list li {margin-top:10px; text-align: left; font-size: 13px;}
	#div-sidebar span {color: rgb(99, 62, 16); font-weight: bold;}
	#div-sidebar li a {display: block; color: rgb(135,97,51);}
	#list-border {border-top: 1px dotted rgb(206,194,168); padding-top: 5px; margin-top: 5px;}
	#div-contents {float: right; margin: auto; width: 866px; height: 100%;}
	#span-color {color:rgb(118,118,118)}
	#div-topmsg {margin: 20px 0px; font-size:80%; color:#212529;}
	#div-box {width: 866px; height: 100%; border: solid 1px; border-color: rgb(227, 214, 198); 
			  padding: 24px; font-size: 14px;}
    #div-inquery {display:block; margin:auto; float:right; width:62px; height:27px; position: relative; right:250px;
    			  background-color: rgb(62,43,44); text-align: center;}
    #div-inquery a {display: block; color: rgb(250,241,208); padding-top: 2px;}
	#div-tableBox {margin: 20px 0 26px;}
	#div-hTitle {height: 40px; border-bottom: 3px solid #a1886f; margin-bottom: 20px 0px;}
	#div-table {border: none; border-top: 1px solid #cdcbbe; width: 100%; border-collapse: collapse;}
	.table {text-align: center; font-size: 13px;}
	.table th {border-bottom: 1px solid #cdcbbe; color: #666666; line-height: 25px;}
	
	#div-text-info {margin-top :20px; font-size:80%;}

	#div-text-info img {width: 60px; height: 20px;}
	
	#div-rev-number{height: 50px; padding:20px; background:#f1e3c4; border-bottom:solid #c0c0c0 1px;}
	
	#div-box-info{border: solid #c0c0c0 1px};
	
	#rev-no{color: grey;}
	
	#div-hotel-info .left {border-right: dotted #c0c0c0 1px;}
	
	#div-hotel-info .left {padding-left: 20px;}
	
	#div-hotel-info span{font-size: 100%; }
	
	#div-hotel-info p{font-size: 90%;}
	
	#div-hotel-info {padding: 15px; background:#fbfbfb;}
	
	#div-customer-info-title{margin-left: 10px; margin-top :20px; font-size:80%;}
	
	#div-customer-info{padding: 20px;border: solid #c0c0c0 1px}
	
	#div-customer-info p{font-size: 90%; }
	
	#div-customer-info{border-right: dotted #c0c0c0 1px; background:#fbfbfb;}
	
	#div-customer-info .left {border-right: dotted #c0c0c0 1px;}
	
	#div-customer-info .right {padding-left:20px;}
	
	#div-card-info-title{margin-left: 10px; margin-top :20px; font-size:80%; color:#63431d;}
	
	#div-card-info{border-top: solid #c0c0c0 1px; border-bottom: solid #c0c0c0 1px; padding:10px; margin-left:10px; margin-bottom:20px;}
	
	#btn-div-reservation img{width: 70xp ; height: 20px;}
	
	.text-status{font-weight:800;}
	
	.text1{color:#63431d; }
	
</style>
<title>Spring Hotel</title>
</head>
<body>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div id="div-sidebar">
		<h3 class="fs-7 border-dark border-bottom border-5 pb-3">마이 페이지</h3>
		<ul class="menu">
			<li id="list"><a href="mypage"><span>스프링리워즈 등급 및 포인트</span></a></li>
			<li id="list"><span >예약 확인/취소</span>
				<ul id="list-border">
					<li><a href="room">객실/패키지</a></li>
					<li><a href="dining">다이닝</a></li>
				</ul>
			</li>
			<li id="list"><span>포인트</span>
				<ul id="list-border">
					<li><a href="point">포인트 조회</a></li>
					<li><a href="#">포인트 조정신청</a></li>
					<li><a href="#">상품권 교환 신청</a></li>
				</ul>
			</li>
			<li id="list"><span>쿠폰</span>
				<ul id="list-border">
					<li><a href="coupon">쿠폰함</a></li>
					<li><a href="#">프로모션 숙박권</a></li>
				</ul>
			</li>
			<li id="list"><span>내 정보</span>
				<ul id="list-border">
					<li><a href="modify">프로필 수정</a></li>
					<li><a href="changePw">비밀번호 변경</a></li>
					<li><a href="inquery">문의 내역</a></li>
					<li><a href="withdrawal">탈퇴 요청</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<div id="div-contents">
		<div id="div-content1">
			<h3 class="fs-7 border-dark border-bottom border-5 pb-3">예약 확인/취소</h3>
			<div id="div-topmsg">
				<p>온라인 예약에 한해 조회가능합니다</p>
			</div>
			<div id="div-box">
				<div id="div-tableBox">
					<div id="div-hTitle">
						<h5><img src="/resources/images/mypage/myRsvDinTit.jpeg"></h5>
					</div>
				</div>
			<div id="div-text-info" class="row">
				<div class="col-6">
					<p class="text1"><strong>예약정보</strong></p>
				</div>
				<div class="col-6 text-end">
					<a href="#"><img src="../resources/images/dining/btn-print.png"></a>
				</div>
			</div>
			<div id="div-box-info">
				<div id="div-rev-number">
					<div class="row">
						<div class="col-6">
							<p class="text1"><strong>예약번호</strong></p>
						</div>
						<div class="col-6 text-end">
							<p id="rev-no" class="text1"><strong>${rtRev.reservationNo }</strong></p>
						</div>
					</div>
				</div>
				<div id="div-hotel-info">
					<div class="row">
						<div class="col-6 left">
							<p class="text1"><strong>예약자명</strong></p>
							<p class="text1">${rtRev.name }</p>
							</br>
							<p class="text1"><strong>호텔</strong><p>
							<p class="text1">${rtRev.dn.location.name }신라호텔</p>
							</br>
							<p class="text1"><strong>레스토랑</strong></p>
							<p class="text1">${rtRev.dn.name }(${rtRev.dn.dnInfo.tel })</p>
						</div>
						<div class="col-6 first-line">
							<p class="text1"><strong>예약상태</strong></p>
							<c:choose>
							<c:when test="${rtRev.status eq 'R' }">
								<p class="text-status" style="color:#3a3125;"><strong>예약완료</strong></p>
							</c:when>
							<c:when test="${rtRev.status eq 'D' }">
								<p class="text-status" style="color:red;"><strong>예약취소</strong></p>
							</c:when>
							<c:when test="${rtRev.status eq 'O' }">
								<p class="text-status" style="color:#3a3125;"><strong>예약임박</strong></p>
							</c:when>
							<c:when test="${rtRev.status eq 'I' }">
								<p class="text-status" style="color:#3a3125;"><strong>방문완료</strong></p>
							</c:when>
							</c:choose>						
							</br>
							<p class="text1"><strong>예약일</strong><p>
							<span class="text1" id="rev-date"><fmt:formatDate pattern="yyyy-MM-dd" value="${rtRev.visitDate }"/></span> <span class="text1" id="week-day"></span><span class="text1"> &nbsp;${rtRev.visitTime }</span>
							</br></br>
							<p class="text1"><strong>예약인원</strong></p>
							<p class="text1">성인&nbsp;${rtRev.adult },&nbsp;어린이&nbsp;${rtRev.child },&nbsp;유아&nbsp;${rtRev.baby }</p>
						</div>
					</div>
				</div>
			</div>
			<div id="div-customer-info-title">
				<p class="text1"><strong>고객정보</strong></p>
			</div>
			<div id="div-customer-info">
				<div class="row">
					<div class="col-6 left">
						<p class="text1"><strong>고객명</strong></p>
						<p class="text1">${rtRev.name }</p>
						</br>
						<p class="text1"><strong>연락처</strong><p>
						<p class="text1">${rtRev.tel }</p>
						</br>
					</div>
					<div class="col-6 right">
						<p class="text1"><strong>이메일</strong></p>
						<p class="text1">${rtRev.email }</p>
						</br>
					</div>
				</div>
			</div>
			<div id="div-card-info-title">
				<p class="text1"><strong>카드</strong></p>
			</div>
			<div id="div-card-info">
				<div class="row">
					<div class=col-3>
						<p class="text1"><strong>카드번호</strong></p>
						<p class="text1"><strong>카드종류</strong></p>
					</div>
					<div class=col-3>
						<p class="text1">************${rtRev.cardNum4 }</p>
						<p class="text1">${rtRev.cardSort }</p>
					</div>
					<div class=col-3>
						<p></p>
						</br>
						<p class="text1"><strong>유효기간</strong></p>
					</div>
					<div class=col-3>
						<p></p>
						</br>
						<span class="text1" id="card-expiry-month">${rtRev.cardExpiryMonth }</span>/<span class="text1">${rtRev.cardExpiryYear }</span>
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
        <form id="form-delete-Rev" method="post" action="/dining/deleteRevMember">
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
</body>
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
</html>
