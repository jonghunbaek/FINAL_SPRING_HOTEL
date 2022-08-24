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
#container {width: 1200px; margin: 0 auto;}
.logo-outer { 
	margin-top: 100px; border-bottom: solid 2px brown; 
}
.logo-inner {
  width : 200px;
  height : 100px;
  margin: auto;
}
.inner-div img { width: 160px; height: 80px;}

#div-hotel-name{margin-top: 20px; border-bottom: solid 5px #D5D5D5;}

#must-require {text-align: right; color: red; margin-top: 10px; font-size: 5px; margin-bottom:0px;}

#form-select .btn-outline-secondary{width: 150px;}

#seat-notice {font-size: 60%; margin-top: 20px;}

#select-people a,span{margin-right:15px;}

#select-people .bi{border: 1px solid brown; color:brown;}

#date-choice img{width: 100px; height: 30px;}

#visit-div{border: 1px solid grey;}

#datepicker{margin-left: 50px; margin-bottom: 50px;}

#visit-div-left{border-right: 1px solid grey;}

#date-choice-text, #time-choice-text{margin: 10px; margin-bottom: 30px;}

#meal-type-select {margin-bottom: 30px;}

#gap {margin-top: 50px; border-bottom: solid 3px brown; }

#submit-button {margin-top: 50px;}

#submit-button img {width: 150px; height: 50px;}
</style>
</head>
<body>
<c:set var="menu" value="home"/>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid" id="container">
	<div class="logo-outer">
		<div class="logo-inner">
			<img src="../resources/images/dining/dining_rsv_step1_on.jpg"/>
		</div>
	</div>
	<div id="div-hotel-name" class=row>
		<div class="col-11">
			<p><strong>${dining.name }</strong>&nbsp;&nbsp;(${dining.location.name }스프링호텔)</p>
		</div>
		<div class="col-1">
			<a href="#"><img src="../resources/images/dining/btn_rsvclear.png"/></a>
		</div>
	</div>
	<div id="must-require">
		<p>표시 필수 입력사항</p>
	</div>
	<form id="form-select" method="post" action="step3">
		<input type="hidden" name="diningNo"/>
		<div id="seat-choice">
			<p><strong>좌석 유형 선택</strong></p>
		</div>
		<div>
			<input type="radio" class="btn-check" name="seat" id="table-select" value="table" >
			<label class="btn btn-outline-secondary" for="table-select">테이블</label>
			<input type="radio" class="btn-check" name="seat" id="room-select" value="room" >
			<label class="btn btn-outline-secondary" for="room-select">룸</label>
		</div>
		<div id="seat-notice">
			<ul>
				<li>성인과 소인 동반 시, 최대 4명까지 이용 가능합니다.</li>
				<li>5명 이상 예약을 원하시는 경우 전화 문의 부탁드립니다.</li>
				<li>사회적 거리두기에 발맞추어 이용 인원이 제한될 수 있으니 양해 부탁드립니다.</li>
			</ul>
		</div>
		<div id="select-people">
			<div class="row">
				<div class="col-2">
					<p><strong>인원선택</strong></p>
				</div>
				<div class="col-1">
					<p>성인</p>
				</div>
				<div class="col-2" id="adult-people">
    				<a href="#" id="decreaseAdult"><i class="bi bi-dash-lg"></i></a>
					<span id="adultScore">0</span>
					<a href="#" id="increaseAdult"><i class="bi bi-plus-lg"></i></a>
					<input id="input-adult" type="hidden" name="adult"/>
				</div>
				<div class="col-1">
					<p>어린이</p>
				</div>
				<div class="col-2" id="child-people">
    				<a href="#" id="decreaseChild"><i class="bi bi-dash-lg"></i></a>
					<span id="childScore">0</span>
					<a href="#" id="increaseChild"><i class="bi bi-plus-lg"></i></a>
					<input id="input-child" type="hidden" name="child"/>
					<input type="hidden" name="isMember"/>
					<input type="hidden" name="userId" value="${LOGIN_USER.id }"/>
				</div>
					<div class="col-1">
					<p>유아</p>
				</div>
				<div class="col-2" id="baby-people">
    				<a href="#" id="decreaseBaby"><i class="bi bi-dash-lg"></i></a>
					<span id="babyScore">0</span>
					<a href="#" id="increaseBaby"><i class="bi bi-plus-lg"></i></a>
					<input id="input-baby" type="hidden" name="baby"/>
				</div>
				<div class="col-1" id="date-choice">
					<a href="#" id="btn-date-choice"><img src="../resources/images/dining/날짜선택.png"></a>
				</div>
			</div>
		</div>
		<div class="row mb-3 d-none" id="date-time-select-form">
			<div class="row" id="visit-div">
				<div class="col-6" id="visit-div-left">
					<div id="date-choice-text">
						<p><strong>날짜선택</strong></p>
					</div>
					<div id="datepicker"></div>
					<input type="hidden" id="input-date" name="date"/>
				</div>
				<div class="col-6">
					<div id="time-choice-text">
						<p><strong>시간선택</strong></p>
					</div>
					<div id="meal-type-select">
						<c:forEach var="meal" items="${mealTimes }">
							<input type="radio" class="btn-check" name="mealTime" id="${meal.mealTime }-select" value="${meal.mealTime }" autocomplete="off">
							<label class="btn btn-outline-secondary" for="${meal.mealTime }-select">${meal.name }</label>
						</c:forEach>
					</div>
					<div>
						<select class="form-select form-select-sm" name="visitTime" id="time-select">
							<option value='0' selected>방문예정시간을 선택해주세요.</option>
						</select>
					</div>
				</div>
			</div>
			<div id="gap"></div>
			<div class="row" id="submit-button">
				<div class="col-7">
					<a href="step1?diningNo=${dining.no }"><img src="../resources/images/dining/이전.png"/></a>
				</div>
				<div class="col-5 text-end">
					<a href="#" class="${!empty LOGIN_USER ? 'd-none' : '' }" id="btn-non-member-rev"><img src="../resources/images/dining/비회원예약.png"/></a>
					<a href="#" id="btn-member-rev"><img src="../resources/images/dining/회원예약.png"/></a>
				</div>
			</div>
		</div>
	</form>
</div>

<div class="modal" tabindex="-1" id="modal-login" data-bs-backdrop="static" data-bs-keyboard="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">로그인</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form id="form-modal-login" method="post" action="logIn">
	        <div class="row">
	        	<div class="col-8">
			        <div class="inputId">
		        		<input type="text" class="id" name="userId" id="id-field" placeholder="스프링리워즈 번호 또는 아이디를 입력해주세요">
			        </div>
			        <div class="inputPw">
			        	<input type="password" class="password" name="password" id="pw-field">
			        </div>
			        <input type="hidden" id="modal-diningNo" name="diningNo">
			        <input type="hidden" id="modal-seat" name="seat">
			        <input type="hidden" id="modal-adult" name="adult">
			        <input type="hidden" id="modal-child" name="child">
			        <input type="hidden" id="modal-baby" name="baby">
			        <input type="hidden" id="modal-isMember" name="isMember">
			        <input type="hidden" id="modal-date" name="date">
			        <input type="hidden" id="modal-mealTime" name="mealTime">
			        <input type="hidden" id="modal-visitTime" name="visitTime">
	        	</div>	
	        	<div class="col-4">
	        		<button>로그인</button>
	        	</div>
	        </div>
       	</form>
      	</div>
        <div class="row">
        	<div class="col-4">
        		<p>회원가입</p>
        	</div>
        	<div class="col-4 text-center">
        		<p>회원가입</p>
        	</div>
        	<div class="col-4 text-end">
        		<p>회원가입</p>
        	</div>
        </div>
    </div>
  </div>
</div>

<div class="modal" tabindex="-1" id="modal-seat_change" data-bs-backdrop="static" data-bs-keyboard="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLabel">예약초기화 안내</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body text-center">
     	<h5>좌석 유형변경시 검색결과가 초기화 됩니다.</h5>
      </div>
      <div class="modal-footer text-center">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary" id="btn-reset-seat">확인</button>
      </div>
    </div>
  </div>
</div>

<%@ include file="../common/footer.jsp" %>
<script type="text/javascript">
$(function() {
	let loginModal = new bootstrap.Modal(document.getElementById("modal-login"));
	let seatModal = new bootstrap.Modal(document.getElementById("modal-seat_change"));
	
	let params = new URLSearchParams(document.location.search);
	let diningNo = params.get("dining"); 
	let seat = $(":input[name=seat]").val();
	let adult = $(":input[name=adult]").val();
	let child = $(":input[name=child]").val();
	let baby = $(":input[name=baby]").val();
	let isMember = $(":input[name=isMember]").val();
	let date = $(":input[name=date]").val();
	let mealTime = $(":input[name=mealTime]").val();
	let visitTime = $(":input[name=visitTime]").val(); 
	
	$(":input[name='diningNo']").val(diningNo);
	$("#modal-diningNo").val(diningNo);
	$("#modal-seat").val(seat);
	$("#modal-adult").val(adult);
	$("#modal-child").val(child);
	$("#modal-baby").val(baby);
	$("#modal-isMember").val(isMember);
	$("#modal-date").val(date);
	$("#modal-mealTime").val(mealTime);
	$("#modal-visitTime").val(visitTime);
	
	
	
	// 폼제출시 검증
	$("#form-select").submit(function(){
		let $baby = $(":input[name=baby]");
		let $adult = $(":input[name=adult]");
		let $child = $(":input[name=child]");
		if(!$adult.val()){
			$adult.val(0);
		}
		if(!$child.val()){
			$child.val(0);
		}
		if(!$baby.val()){
			$baby.val(0);
		}
		
		if(!$(":input[name=date]").val()) {
			alert("날짜를 선택해주세요");
			return false;
		}
		
		if(!$(":input[name=mealTime]:checked").val()){
			alert("식사타임을 선택해주세요.");
			return false;
		}
		
		if($("select[name=visitTime]:selected").val() == '0' || $("select[name=visitTime]:selected").val()) {
			alert("방문시간을 설정해주세요");
			return false;
		}
	});
	
	// 비회원 예약버튼 클릭시
	$("#btn-non-member-rev").click(function(){
		$(":input[name=isMember]").val("N");
		$("#form-select").submit();
	});	
	
	// 회원 예약버튼 클릭시
	$("#btn-member-rev").click(function() {
		$.getJSON('logInCheck').done(function(result){
			if(result.isLogined) {
				$(":input[name=isMember]").val("Y");
				$("#form-select").submit();
			}else {
				loginModal.show();
			}
		});
	});
	
	// 모달창 로그인
	$("#form-modal-login").submit(function() {
		let idValue = $("#id-field").val();  
		if (idValue === "") {
			alert("아이디는 필수입력값입니다.");
			return false;
		}
		
		let passwordValue = $("#pw-field").val();
		if (passwordValue === "") {
			alert("비밀번호는 필수입력값입니다.");
			return false;
		}
		
		let seat = $(":input[name=seat]").val();
		let adult = $(":input[name=adult]").val();
		let child = $(":input[name=child]").val();
		let baby = $(":input[name=baby]").val();
		let isMember = $(":input[name=isMember]").val();
		let date = $(":input[name=date]").val();
		let visitTime = $(":input[name=visitTime]").val();
		
		$("#modal-seat").val(seat);
		$("#modal-adult").val(adult);
		$("#modal-child").val(child);
		$("#modal-baby").val(baby);
		$("#modal-isMember").val('Y');
		$("#modal-date").val(date);
		$("#modal-mealTime").val(mealTime);
		$("#modal-visitTime").val(visitTime);
		
		if(!$("#modal-adult").val()){
			$("#modal-adult").val(0);
		}
		if(!$("#modal-child").val()){
			$("#modal-child").val(0);
		}
		if(!$("#modal-baby").val()){
			$('#modal-baby').val(0);
		}
		
	});
	
	// 테이블 , 룸 변경시
	$(":radio[name=seat]").change(function(e) {
		if((!$("#date-time-select-form").hasClass('d-none'))){
			$checkedSeat = $(":radio[name=seat]:checked")
			if($checkedSeat == 'table'){
				$(":radio#room-select").prop("checked", true);
				$(":radio#table-select").prop("checked", false);
			} else {
				$(":radio#room-select").prop("checked", false);
				$(":radio#table-select").prop("checked", true);
			}
			
			seatModal.show();
		}
	});
	
	// 테이블, 룸 리셋 버튼
	$("#btn-reset-seat").click(function() {
		$checkedSeat = $(":radio[name=seat]:checked")
		if($checkedSeat == 'table'){
			$(":radio#room-select").prop("checked", false);
			$(":radio#table-select").prop("checked", true);
		} else {
			$(":radio#room-select").prop("checked", true);
			$(":radio#table-select").prop("checked", false);
		}
		
		$("#date-time-select-form").addClass('d-none');
		seatModal.hide();
		$("#babyScore").text(0);
		$(":input[name=adult]").val(0);
		/* $("#modal-adult").val(0); */
		$("#adultScore").text(0);
		$(":input[name=child]").val(0);
		/* $("#modal-child").val(0); */
		$("#childScore").text(0);
		$(":input[name=baby]").val(0);
		/* $("#modal-baby").val(0); */
		
		let $mealTimeEls = $("#:radio[name=mealTime]");
		for(var i=0; i<$mealTimeEls.length; i++) {
			$mealTimeEls[i].checked = false;
		}
		// 셀렉트 드롭 첫번째를 제외하고 모든옵션 제거
		$('select[name=visitTime]').children('option:not(:first)').remove();
		/* $("select[name=visitTime] option:eq(0)").prop("selected", true); */
	});
	

	// 식사 타임 변경시
	$("#:radio[name=mealTime]").change(function(){
		searchTime();
	})
	
	// 식사타임 클릭시
	$("#:radio[name=mealTime]").click(function(){
		if($("#input-date").val() == '') {
			alert("날짜를 먼저 선택해주세요");
			return false;
		}
	});
	
	// 날짜선택 클릭시
	$("#btn-date-choice").click(function(){
		let adultStat = $('#adultScore').text();
		let adultNum = parseInt(adultStat,10);
		let childStat = $('#childScore').text();
		let childNum = parseInt(childStat,10);
		let babyStat = $('#babyScore').text();
		let babyNum = parseInt(babyStat,10);
		let totalNum = adultNum + childNum + babyNum;
		
		let checkedSeatLength = $(":radio[name:'seat']:checked").length;
		let checkedSeatVal = $(":radio[name=seat]:checked").val();
		if(checkedSeatLength === 0) {
			alert("좌석유형을 골라주세요");
			return;
		}
		if(checkedSeatVal === 'table') {
			if(totalNum < 2) { 
				alert("테이블은 최소인원이 2명이상이어야 합니다.");
				return;
			}
		} else {
			if(totalNum<8) {
				alert("룸은 최소인원이 8명이상이어야 합니다.");
				return;
			}
		}
		
		$("#date-time-select-form").removeClass('d-none');
	});
	
	// 날짜변경 클릭시
	$("#datepicker").click(function(){
		searchSeat();
		if($(":radio[name=mealTime]:checked").length > 0 ) {
			searchTime();
		} else {
			return;
		} 
	});
	
	$("#datepicker").datepicker({
		inline: true,
	    dateFormat: "yy-mm-dd", 
	    showAnim: "slide",
	    currentText: '오늘',
	    showMonthAfterYear: true ,
	    dayNamesMin: ['일','월', '화', '수', '목', '금', '토'], 
	    monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    minDate : 0,
	    maxDate : 50,
	    onSelect: function (date) {
	        $("#input-date").val(date);
	    }
		
	});
	
	//특정일 막기
	
	/* var disabledDays = ["2022-8-30","2022-8-24","2022-8-27"];
	function disableAllTheseDays(date) {
	    var m = date.getMonth(), d = date.getDate(), y = date.getFullYear();
	    for (i = 0; i < disabledDays.length; i++) {
	        if($.inArray(y + '-' +(m+1) + '-' + d,disabledDays) != -1) {
	            return [false];
	        }
	    }
	    return [true];
	} */
	
	
	$('#decreaseAdult').click(function(e){
		resetTime();
		
		let adultStat = $('#adultScore').text();
		let adultNum = parseInt(adultStat,10);
		let childStat = $('#childScore').text();
		let childNum = parseInt(childStat,10);
		let babyStat = $('#babyScore').text();
		let babyNum = parseInt(babyStat,10);
		let totalNum = adultNum + childNum + babyNum;
		
		let isChecked = false;
		$(":input[name='seat']").each(function(index, el) {
			if (el.checked) {
				isChecked = true;
			}
		});
		
		if (!isChecked) {
			alert("좌석유형을 골라주세요");
		}
		
		adultNum--;
		if(adultNum<=-1){
			adultNum =0;
		}
		$('#adultScore').text(adultNum);
		$(":input[name=adult]").val(adultNum);
	});
	
	$('#increaseAdult').click(function(){
		resetTime();
		
		let adultStat = $('#adultScore').text();
		let adultNum = parseInt(adultStat,10);
		let childStat = $('#childScore').text();
		let childNum = parseInt(childStat,10);
		let babyStat = $('#babyScore').text();
		let babyNum = parseInt(babyStat,10);
		let totalNum = adultNum + childNum + babyNum;
		
		let checkedSeatLength = $(":input[name:seat]:checked").length;
		let checkedSeatValue = $(":input[name:seat]:checked").val();
		if(checkedSeatLength === 0) {
			alert("좌석유형을 골라주세요");
			return;
		}
		
		if(checkedSeatValue === 'table') {
			if(totalNum>=4){
				alert('테이블은 1~4인까지 가능합니다.');
				return;
			}
		} else {
			if(totalNum>=20){
				alert('룸은 20인까지 가능합니다');
				return;
			}
		}
		adultNum++;
	
		
		$('#adultScore').text(adultNum);
		$(":input[name=adult]").val(adultNum);
	});
	$('#decreaseChild').click(function(e){
		resetTime();
		
		let adultStat = $('#adultScore').text();
		let adultNum = parseInt(adultStat,10);
		let childStat = $('#childScore').text();
		let childNum = parseInt(childStat,10);
		let babyStat = $('#babyScore').text();
		let babyNum = parseInt(babyStat,10);
		let totalNum = adultNum + childNum + babyNum;
		
		let checkedSeatLength = $(":radio[name:'seat']:checked").length;
		if(checkedSeatLength === 0) {
			alert("좌석유형을 골라주세요");
			return;
		}
		
		childNum--;
		if(childNum<=-1){
			childNum =0;
		}
		$('#childScore').text(childNum);
		$(":input[name=child]").val(childNum);
	});
	
	$('#increaseChild').click(function(e){
		resetTime();
		
		let adultStat = $('#adultScore').text();
		let adultNum = parseInt(adultStat,10);
		let childStat = $('#childScore').text();
		let childNum = parseInt(childStat,10);
		let babyStat = $('#babyScore').text();
		let babyNum = parseInt(babyStat,10);
		let totalNum = adultNum + childNum + babyNum;
		
		let checkedSeatLength = $(":input:radio[name:'seat']:checked").length;
		let checkedSeatValue = $(":radio[name:seat]:checked").val();
		if(checkedSeatLength === 0) {
			alert("좌석유형을 골라주세요");
			return;
		}
		
		if(checkedSeatValue === 'table') {
			if(totalNum>=4){
				alert('테이블은 1~4인까지 가능합니다.');
				return;
			}
		} else {
			if(totalNum>=20){
				alert('룸은 20인까지 가능합니다');
				return;
			}
		}
		
		e.preventDefault();
		childNum++;

		$('#childScore').text(childNum);
		$(":input[name=child]").val(childNum);
	});
	$('#decreaseBaby').click(function(e){
		resetTime();
		
		let adultStat = $('#adultScore').text();
		let adultNum = parseInt(adultStat,10);
		let childStat = $('#childScore').text();
		let childNum = parseInt(childStat,10);
		let babyStat = $('#babyScore').text();
		let babyNum = parseInt(babyStat,10);
		let totalNum = adultNum + childNum + babyNum;
		
		let checkedSeatValue = $(":radio[name:seat]:checked").val();
		let checkedSeatLength = $(":radio[name:'seat']:checked").length;
		if(checkedSeatLength === 0) {
			alert("좌석유형을 골라주세요");
		}
		
		e.preventDefault();
		var stat = $('#babyScore').text();
		var num = parseInt(stat,10);
		babyNum--;
		if(babyNum<=-1){
			babyNum =0;
		}
		$('#babyScore').text(babyNum);
		$(":input[name=baby]").val(babyNum);
	});
	$('#increaseBaby').click(function(e){
		resetTime();
		
		let adultStat = $('#adultScore').text();
		let adultNum = parseInt(adultStat,10);
		let childStat = $('#childScore').text();
		let childNum = parseInt(childStat,10);
		let babyStat = $('#babyScore').text();
		let babyNum = parseInt(babyStat,10);
		let totalNum = adultNum + childNum + babyNum;
		
		let checkedSeatValue = $(":radio[name:seat]:checked").val();
		let checkedSeatLength = $(":radio[name:'seat']:checked").length;
		if(checkedSeatLength === 0) {
			alert("좌석유형을 골라주세요");
			return;
		}

		if(checkedSeatValue === 'table') {
			if(totalNum>=4){
				alert('테이블은 1~4인까지 가능합니다.');
				return;
			}
		} else {
			if(totalNum>=20){
				alert('룸은 20인까지 가능합니다');
				return;
			}
		}
		
		babyNum++;

		$('#babyScore').text(babyNum);
		$(":input[name=baby]").val(babyNum);
	});
	
	function searchTime() {
		let queryString = $("#form-select").serialize();
		let $select = $("#time-select").empty();
		
		let basisOptionContent = `
			<option selected>방문예정시간을 선택해주세요.</option>
		`;
		$select.append(basisOptionContent);
		
		$.getJSON("/dining/time", queryString, function(times){
			$.each(times, function(index, time){
				let content = '';
				content += '<option value="' + time +'">'+ time +'</option>'
				
				$select.append(content);
			})
		})
	}
	
	function searchSeat() {
		$(":input[name=mealTime]").each(function(index, el) {
			el.disabled = false;
			el.checked = false;
		})
		
		if(!$("#input-adult").val()){
			!$("#input-adult").val(0)
		}
		if(!$("#input-child").val()){
			!$("#input-child").val(0)
		}
		if(!$("#input-baby").val()){
			!$("#input-baby").val(0)
		}
		let queryString = $("#form-select").serialize();
		/* let $select = $("#meal-type-select").empty(); */
		let $seat = $(":input[name=seat]:checked").val();
		
		
		$.getJSON("/dining/lookUpSeat", queryString, function(results){
			$.each(results, function(index, result){
				let $btn = $('#'+result+'-select');
				$btn.prop('disabled', true);
			})
		})
	}
	
	//시간 세팅 초기화
	function resetTime() {
		if((!$("#date-time-select-form").hasClass('d-none'))){
			$(":input[name=mealTime]").each(function(index, el){
				el.checked = false;
			})
			$("#date-time-select-form").addClass('d-none');
		}
	}
});
</script>
</body>
</html>