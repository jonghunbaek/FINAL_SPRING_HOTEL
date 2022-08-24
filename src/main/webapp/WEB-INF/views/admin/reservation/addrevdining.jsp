<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- DatePicker 라이브러리 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<title>신규 다이닝예약 등록</title>
<style>
#keymap {
	position: relative;
	top: 10px;
}

.row p {
	color: black;
	font-size: 20px;
	font-weight: bold;
}

label {
	font-weight:bold;
}

#userForm {
	font-size: bold !important;
	color: black;
	background-color: RGBa(220, 220, 220, 0.3) !important;
	position: relative;
	top: 70px;
	border-radius: 10px;
	box-shadow: 1px 1px 5px 1px gray;
	padding: 15px;
}

#revForm {
	font-size: bold !important;
	color: black;
	background-color: RGBa(220, 220, 220, 0.3) !important;
	position: relative;
	top: 70px;
	border-radius: 10px;
	box-shadow: 1px 1px 5px 1px gray;
	padding: 15px;
}

.form-control {
	font-size: 12px;
}

.form-control:hover {
	box-shadow: 1px 1px 3px 2px RGB(220, 220, 220);
	font-size: 12px;
}

/* .btn {
	color: rgba(30, 22, 54, 0.6);
	box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
}

.btn:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 80px 0px 2px inset;
} */

#btn-setting {
	margin:0;
	font-size:13px;
	font-weight: 900;
	width: 120%;
	height: 100%;
	color:rgb(54, 74, 99);
	box-shadow: rgba(54, 74, 99, 1) 0 0px 0px 2px inset;
}

#btn-setting:hover {
	color: rgba(255, 255, 255, 1);
	box-shadow: rgba(54, 74, 99, 1) 0 80px 0px 2px inset;
} 

#btn-reset {
	margin:0;
	font-size:13px;
	font-weight: 900;
	width: 120%;
	height: 100%;
	color:rgb(54, 74, 99);
	box-shadow: rgba(54, 74, 99, 1) 0 0px 0px 2px inset;
}

#btn-reset:hover {
	color: rgba(255, 255, 255, 1);
	box-shadow: rgba(54, 74, 99, 1) 0 80px 0px 2px inset;
} 
#search-keyword {
	position: relative;
	right:20px;
	font-weight: bold;
	font-size: 13px;
	width:50%;
	color: rgba(30, 22, 54, 0.6);
}
</style>
</head>

<body>
	<c:set var="menu" value="registerform" />
	<%@ include file="../common/nav.jsp"%>
	<div class="container-fluid" id="container">
		<div class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mt-3 pb-3">
			<p id="keymap">
				<span data-feather="monitor"></span>&nbsp;&gt;&nbsp;<span data-feather="file-plus"></span>&nbsp;<strong style="font-size: 13px;">신규 다이닝예약 등록</strong>
			</p>
		</div>
		<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4" id="main">
			<div class="row justify-content-center">
				<div class="col-5">
					<form id="userForm" method="post">
						<p>고객정보</p>
						<div class="row">
							<label for="recipient-name" class="col-form-label">고객검색</label>
							<div class="col-6">
								<input class="form-control" type="text" id="keyword" name="keyword" placeholder="고객명을 입력하세요" aria-label="Search" />
							</div>
							<div class="col-2">
								<button type="button" id="search-keyword" class="btn">
									<i class="bi bi-search"></i>
								</button>
							</div>
						</div>
						<div class="row">
							<div class="col-4 mb-3">
								<label for="recipient-name" class="col-form-label">이름</label> 
								<input type="text" class="form-control" id="user-lastname"> 
							</div>
							<div class="col-4 mb-3">
								<label for="recipient-name" class="col-form-label">성</label> 
								<input type="text" class="form-control" id="user-firstname"> 
							</div>
							<div class="col mb-3">
								<label for="recipient-name" class="col-form-label">생년월일</label> 
								<input type="text" class="form-control" name="adult" id="user-birthday">
							</div>
						</div>
						<div class="row">
							<div class="col mb-3">
								<label for="recipient-name" class="col-form-label">이메일</label> 
								<input type="text" class="form-control" id="user-email">
							</div>
							<div class="col mb-3">
								<label for="recipient-name" class="col-form-label">전화번호</label> 
								<input type="text" class="form-control" id="user-tel">
							</div>
						</div>
						<div class="row">
							<div class="col mb-3">
								<label for="recipient-name" class="col-form-label">연간누적숙박일</label> 
								<input type="text" class="form-control" name="child" id="user-stay">
							</div>
							<div class="col mb-3">
								<label for="recipient-name" class="col-form-label">포인트</label> 
								<input type="text" class="form-control" name="child" id="user-point">
							</div>
							<div class="col mb-3">
								<label for="recipient-name" class="col-form-label">등급</label> 
								<input type="text" class="form-control" name="child" id="user-grade">
							</div>
						</div>
						<div class="row">
							<div class="col-8 mb-3">
								<label for="recipient-name" class="col-form-label">주소</label> 
								<input type="text" class="form-control" name="adult" id="user-address">
							</div>
						</div>
					</form>
				</div>
				<!-- --------------------------------------예약정보 form--------------------------------------------- -->
				<div class="col-6">
					<form id="revForm" method="post" action="addrevroomform">
						<input type="hidden" id="userNo" name="userNo">
						<input type="hidden" id="dnNo" name="dnNo">
						<p>예약정보</p>		
						<div class="row">
							<div class="col-2">
								<label for="recipient-name" class="col-form-label" style="font-weight:bold; font-size:0.98rem;">다이닝검색</label>
							</div>
							<div class="col-2">
								<button type="button" id="search-room" class="btn">
									<i class="bi bi-search"></i>
								</button>
							</div>
						</div>
						<div class="row">
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">성인</label> 
								<input type="number" class="form-control" name="adult" id="adult" readonly><span style="position: relative; bottom: 26px; left: 140px;">명</span>
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">어린이</label> 
								<input type="number" class="form-control" name="child" id="child" readonly><span style="position: relative; bottom: 26px; left: 140px;">명</span>
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">지점</label> 
								<input type="text" class="form-control" name="location" id="location" readonly>
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">다이닝 종류</label> 
								<input type="text" class="form-control" name="roomCategory" id="roomCategory" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-6 mb-3">
								<label for="recipient-name" class="col-form-label">방문일</label> 
								<input type="text" class="form-control" name="checkinPeriod" id="checkinPeriod" readonly>
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">식사 타임</label> 
								<select class="form-select form-select-sm" name="mealTime" id="mealTime">
					
								</select>
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">방문예정시간</label> 
								<select class="form-select form-select-sm" name="timeOption" id="timeOption">

								</select>
							</div>
						</div>
						<div class="row" id="options">
							
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">금액</label> 
								<input type="text" class="form-control" name="totalPrice" id="totalPrice" readonly><span style="position: relative; bottom: 26px; left: 140px;">원</span>
							</div>
						</div>
						<div class="row">
							<div class="col mb-3">
								<label for="recipient-name" class="col-form-label">고객 요청사항</label>
								<textarea cols="50" rows="5" class="form-control" name="request" id="request"></textarea>
							</div>
						</div>
						<div class="row justify-content-end px-3">
				  			<div class="col-2">
					  			<button type="submit" class="btn setting" id="btn-setting">등록</button>
				  			</div>
				  		</div>
					</form>
				</div>
			</div>
		</main>
	</div>
	<!-------------------------- 고객검색 모달창-------------------------------------------->
	<div class="modal fade" id="user-rev" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel" style="font-weight:bold;">고객목록</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body" id="user-rev-body">
	      	
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" id="close-modal" data-bs-dismiss="modal">닫기</button>
	        <button type="button" class="btn btn-primary" id="update-modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-------------------------- 객실검색 모달창-------------------------------------------->
	<div class="modal fade" id="dn-rev" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-scrollable">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel" style="font-weight:bold;">다이닝목록</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <form id="dn-filter-form"> 
	        	<div class="row">
		        	<div class="col" id="filter-first-1">
				  		<label for="location-field" class="form-label">지점</label>
					  	<select class="form-select form-select-sm" name="location" id="location-modal">
					  		<option value="" selected>=====</option>
							<option value="1">서울</option>
							<option value="2">부산</option>
							<option value="3">제주</option>
							<option value="4">강릉</option>
							<option value="5">광주</option>
						</select>
			  		</div>
			  		<div class="col" id="filter-first-1">
				  		<label for="location-field" class="form-label">다이닝 종류</label>
					  	<select class="form-select form-select-sm" name="dnCategory" id="dnCategory-modal">
					  		<option value="" selected>=====</option>
							<option value="101">라연</option>
							<option value="102">아리아께</option>
							<option value="103">팔선</option>
							<option value="104">더파크뷰</option>
							<option value="105">콘티넨탈</option>
						</select>
			  		</div>
			  		<div class="col" id="filter-first-1">
				  		<label for="location-field" class="form-label">좌석 유형</label>
					  	<select class="form-select form-select-sm" name="seatType" id="seatType">
					  		<option value="" selected>=====</option>
							<option value="table">테이블</option>
							<option value="room">룸</option>
						</select>
			  		</div>
			  	</div>
			  	<div class="row">
			  		<div class="col mb-3">
						<label for="recipient-name" class="col-form-label">성인</label> 
						<input type="number" class="form-control" name="adult" id="adult-modal" value="1"><span style="position: relative; bottom: 26px; left: 200px;">명</span>
					</div>
					<div class="col mb-3">
						<label for="recipient-name" class="col-form-label">어린이</label> 
						<input type="number" class="form-control" name="child" id="child-modal" value="0"><span style="position: relative; bottom: 26px; left: 200px;">명</span>
					</div>
	        	</div>
	        	<div class="row justify-content-end">
	        		<div class="col-3 text-end">
		        		<button type="button" class="btn btn-secondary btn-sm" id="search-filter">날짜검색</button>
	        		</div>
	        	</div><hr>
	        </form>
	        <form id="dn-date-form">
		        <div class="row px-3" id="dn-list">
	  				<div class="col-6 d-none" id="calendar">
						<label for="checkin-field" class="form-label">방문예정일을 선택해주세요</label>
						<input type="text" class="form-control" id="datepicker" name="visitDate" />
					</div>
					<div class="col-2">
					</div>
					<div class="col-4 d-none" id="time-select">
						<div class="row">
				 			<div clss="col">
				 	  			<label for="location-field" class="form-label">식사타임</label>
							  	<select class="form-select form-select-sm" name="mealTime-modal" id="mealTime-modal">
							  		<option value="" selected>=====</option>
								</select>
							</div>
						</div>
						<div class="row py-3">
							<div clss="col">
				  				<label for="location-field" class="form-label">방문시간</label>
							  	<select class="form-select form-select-sm" name="visitTime-modal" id="visitTime-modal">
							  		<option value="" selected>=====</option>
								</select>
							</div>
						</div>
					</div>
		        </div>
		    </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" id="close-modal" data-bs-dismiss="modal">닫기</button>
	        <button type="button" class="btn btn-primary" id="select-modal">등록</button>
	      </div>
	    </div>
	  </div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/admincss/dashboard.js"></script>
<script>
$(function() {
	
	// 고객명 검색
	$("#search-keyword").on("click", function() {
		let keyword = $("#keyword").val();
		if (keyword == null || keyword == '') {
			alert("고객명을 입력해주세요");
			return false;
		}
		userCheck(keyword);
	})
	
	// 고객 선택
	let users = [];
	$("#user-rev-body").on("click",".btn-table", function() {
		let i= $(this).attr("data-tag");

		let userDetail = users[i];
		
		$("#user-lastname").attr('value', userDetail.lastName);
		$("#user-firstname").attr('value', userDetail.firstName);
		$("#user-birthday").attr('value', userDetail.birthDay);
		$("#user-email").attr('value', userDetail.email);
		$("#user-tel").attr('value', userDetail.tel);
		$("#user-stay").attr('value', userDetail.stay);
		$("#user-point").attr('value', userDetail.point);
		$("#user-grade").attr('value', userDetail.grade.grade);
		$("#user-address").attr('value', userDetail.totalAddress);
		$("#userNo").attr('value', userDetail.no);
		
		userModal.hide();
		users = [];
	})
	
	// 다이닝 검색
	let dnModal= new bootstrap.Modal($("#dn-rev"), {keyboard: false})
	$("#search-room").on("click", function() {
		dnModal.show();
	})
	
	// 필터 설정 후 검색
	$("#search-filter").on("click", function() {
		if($("#location-modal option:selected").val() == null || $("#location-modal option:selected").val() == '') {
			alert("지점을 선택해주세요");	
			return false;
		}
		if($("#dnCategory-modal option:selected").val() == null || $("#dnCategory-modal option:selected").val() == '') {
			alert("다이닝종류를 선택해주세요");	
			return false;
		}
		if ($("#seatType option:selected").val() == null || $("#seatType option:selected").val() =='') {
			alert("좌석유형을 선택해주세요");	
			return false;
		}
		
		if ($("#adult-modal").val() == null || $("#adult-modal").val() =='') {
			alert("인원수를 선택해주세요");	
			return false;
		}
		
		diningCheck();
	})
	
	// 날짜 선택시 해당 런치,디너중 가능시간 조회
	
	
	// 다이닝선택
	let rooms = [];
	$("#select-modal").on("click", function() {
		let i = $(this).attr("data-tag");
		let roomDetail = rooms[i];
		let checkinPeriod = $("#datepicker").val();
		
		$("#location").attr('value', roomDetail.location.name);
		$("#roomCategory").attr('value', roomDetail.roomCategory.name);
		$("#checkinPeriod").attr('value', checkinPeriod);
		
		// 숙박일에 따른 금액 구하기
		let checkinSplit = checkinPeriod.split("~")
		let checkinout = [];
		
		for(let i=0; i<checkinSplit.length; i++) {
			checkinout.push(checkinSplit[i].trim());
		}
		// 체크인,아웃 날짜 사이 기간 구하기
		let checkin = new Date(checkinout[0]);
		let checkout = new Date(checkinout[1]);
		let dateDiff = Math.ceil((checkout.getTime()-checkin.getTime())/(1000*3600*24));
		
		let periodPrice = roomDetail.discountPrice*dateDiff;
		
		$("#totalPrice").attr('value', periodPrice.toLocaleString());
		$("#roomId").attr('value', roomDetail.id);
		
		dnModal.hide(); //--------------------------------캘린더 d-none추가
		$("#calendar").addClass("d-none");
		rooms = [];
	})
	
	// 인원 수 유효성체크
	let $preValAdult = '';
	$("#adult-modal").on('change', function () {
		
		let $adult = $("#adult-modal").val();
		var pattern = /[0-9]/;	// 숫자 
		var testAdult = pattern.test($adult);
		
		if (!testAdult) {
			alert("숫자만 입력가능 합니다.")
			$("#adult-modal").val(1);
		}

		let type = $("#seatType").val();
		
		if (type == 'table') {
			if ($adult == 4) {
				$(this).data('val', $(this).val());
				$preValAdult = $(this).data('val');
			}
			if ($adult <= 0 || $adult > 4) {
				alert("테이블은 성인 1~4명까지 선택가능합니다.");
				$(this).val($preValAdult);
			}
		}
		if (type == 'room') {
			if ($adult == 8) {
				$(this).data('val', $(this).val());
				$preValAdult = $(this).data('val');
			}
			if ($adult <= 0 || $adult > 8) {
				alert("룸은 성인 1~8명까지 선택가능합니다.");
				$(this).val($preValAdult);
			}
		}	
	})
	
	let $preValChild = '';
	$("#child-modal").on('keyup mouseup', function () {
		
		let $child = $("#child-modal").val();
		var pattern = /[0-9]/;	// 숫자 
		var testChild = pattern.test($child);
		
		if (!testChild) {
			alert("숫자만 입력가능 합니다.")
			$("#child").val(0);
		}

		if ($child == 4) {
			$(this).data('val', $(this).val());
			$preValChild = $(this).data('val');
		}
		if($child < 0 || $child > 4) {
			alert("어린이는 0~4명까지 선택가능합니다.");
			$(this).val($preValChild);
		}
	});
	
	// 예약정보 form제출시 유효성체크
	$("#btn-setting").on('click', function () {
		let $location = $("#location").val();
		let $roomCategory = $("#roomCategory").val();
		let $checkinPeriod = $("#checkinPeriod").val();
		let $userNo = $("#userNo").val();
		let $dnNo = $("#dnNo").val();
		
		if ($userNo == null || $userNo == '') {
			alert("고객정보 입력은 필수 입니다.");
			return false;
		}
		if ($location == '' || $roomCategory == '' || $checkinPeriod == '' || $dnNo == '') {
			alert("다이닝 선택은 필수 입니다.");
			return false;
		}
	})
	
	// 고객 검색 모달창 열기 
	let userModal= new bootstrap.Modal($("#user-rev"), {keyboard: false})
	function userCheck(keyword) {
		let queryString = "keyword=" + keyword;
		let $userBody = $("#user-rev-body").empty();
		
		$.post("/admin/addrev/user", queryString, function(results) {
			if (results.length == 0) {
				let content =
					`<div class="col-12">
						<p class="text-center">검색결과가 존재하지 않습니다.</p>
					</div>`;
				$userBody.append(content);
			}
			
			$.each(results, function(index, user) {
				let content ='';
				content +='<table class="table table-striped table-sm">';
				content +='	<thead>';
				content +='		<tr>';
				content +='			<th>고객이름</th>';
				content +='			<th>생년원일</th>';
				content +='			<th>전화번호</th>';
				content +='			<th>비고</th>';
				content +='		</tr>';
				content +='	</thead>';
				content +='	<tbody>';
				content +='		<tr>';
				content +='			<td>'+user.name+'</td>';
				content +='			<td>'+user.birthDay+'</td>';
				content +='			<td>'+user.tel+'</td>';
				content +='			<td><button class="btn btn-table" data-tag="'+index+'">선택</button</td>';
				content +='		</tr>';
				content +='	</tbody>';
				content +='</table>';
				
				users.push(results[index]); 
				$userBody.append(content);
			})	
		}) 
		userModal.show();
	}
	
	// 다이닝 필터 검색
	let dates = new Array();
	let queryForm = '';
	let selectDate = '';
	function diningCheck() {
		let queryString = $("#dn-filter-form").serialize();
		queryForm = queryString;
		dates = [];
		
		$.ajax({
			async: false,
			type: 'get',
			url: "/admin/addrevdining/dn",
			data: queryString,
			success: function(results) {
				
				$("#calendar").removeClass("d-none");
				$("#time-select").removeClass("d-none");
				
				$.each(results, function(index, result) {
					dates.push(result.countDate);
				})
			}
		})
			$("#datepicker").datepicker({
		        dateFormat: 'yy-mm-dd'
		        ,showOtherMonths: true 
		        ,showMonthAfterYear:true 
		        ,changeYear: true 
		        ,changeMonth: true                          
		        ,yearSuffix: "년" 
		        ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] 
		        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] 
		        ,dayNamesMin: ['일','월','화','수','목','금','토'] 
		        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] 
		        ,minDate: "0" 
		        ,maxDate: "+10y"   
		        ,yearRange: "+0:+10"
		        ,beforeShowDay: disableAllTheseDays
		        ,onSelect: function (date) {
		        	
		        	let dateQuery = "&date=" + date
		        	queryForm += dateQuery
		        	let $mealTime = $("#mealTime-modal").empty();

			        $.ajax({
						async: false,
						type: 'get',
						url: "/admin/addrevdining/checkDnDate",
						data: queryForm,
						success: function(results) {
							
							$.each(results, function(index, mealtime){
								let content = '';
								content += '<option value="' + mealtime +'">'+ mealtime +'</option>'
								
								$mealTime.append(content);
							})
						}
					})
					// queryForm 초기화 어떻게------------------강사님께 질문
					queryForm -= dateQuery

			    }
   		    });                    

			function disableAllTheseDays(date) {
			    var m = date.getMonth(), d = date.getDate(), y = date.getFullYear();
			    for (i = 0; i < dates.length; i++) {
			        if($.inArray(y + '-' +(m+1) + '-' + d, dates) != -1) {
			            return [false];
			        }
			    }
			    return [true];
			} 
		    $('#datepicker').datepicker('setDate', '0'); 
	}
  
})
</script>
</body>
</html>