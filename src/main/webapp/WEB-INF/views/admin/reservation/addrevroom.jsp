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

<!-- flatpicker  -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://npmcdn.com/flatpickr/dist/flatpickr.min.js"></script>
<script src="https://npmcdn.com/flatpickr/dist/l10n/ko.js"></script>
<title>신규 객실예약 등록</title>
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
				<span data-feather="monitor"></span>&nbsp;&gt;&nbsp;<span data-feather="file-plus"></span>&nbsp;<strong style="font-size: 13px;">신규 객실예약 등록</strong>
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
							<div class="col-4 mb-3">
								<label for="recipient-name" class="col-form-label">국적</label> 
								<input type="text" class="form-control" name="adult" id="user-country">
							</div>
							<div class="col-8 mb-3">
								<label for="recipient-name" class="col-form-label">주소</label> 
								<input type="text" class="form-control" name="adult" id="user-address">
							</div>
						</div>
					</form>
				</div>
				<!-- --------------------------------------예약정보 form--------------------------------------------- -->
				<div class="col-6">
					<form id="revForm" method="post" action="addrevroom/addrevroomform">
						<input type="hidden" id="userNo" name="no">
						<input type="hidden" id="roomId" name="id">
						<p>예약정보</p>		
						<div class="row">
							<div class="col-2">
								<label for="recipient-name" class="col-form-label" style="font-weight:bold; font-size:0.98rem;">객실검색</label>
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
								<input type="number" class="form-control" name="adult" id="adult" value="1"><span style="position: relative; bottom: 26px; left: 140px;">명</span>
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">어린이</label> 
								<input type="number" class="form-control" name="child" id="child" value="0"><span style="position: relative; bottom: 26px; left: 140px;">명</span>
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">지점</label> 
								<input type="text" class="form-control" name="location" id="location">
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">객실타입</label> 
								<input type="text" class="form-control" name="roomCategory" id="roomCategory">
							</div>
						</div>
						<div class="row">
							<div class="col-6 mb-3">
								<label for="recipient-name" class="col-form-label">숙박기간</label> 
								<input type="text" class="form-control" name="checkinPeriod" id="checkinPeriod">
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">체크인 예정시간</label> 
								<select class="form-select form-select-sm" name="timeOption" id="timeOption">
									<option value="14:00">14:00</option>
									<option value="15:00">15:00</option>
									<option value="16:00">16:00</option>
									<option value="17:00">17:00</option>
									<option value="18:00">18:00</option>
									<option value="19:00">19:00</option>
									<option value="20:00">20:00</option>
									<option value="21:00">21:00</option>
								</select>
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">침대타입</label> 
								<select class="form-select form-select-sm" name="bedType" id="bedType">
									<option value="F">패밀리더블</option>
									<option value="T">트윈</option>
									<option value="D">더블</option>
								</select>
							</div>
						</div>
						<div class="row" id="options">
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">성인조식</label> 
								<input type="number" class="form-control" name="adultBf" id="adultBf" value="0"><span style="position: relative; bottom: 26px; left: 140px;">명</span>
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">어린이조식</label> 
								<input type="number" class="form-control" name="childBf" id="childBf" value="0"><span style="position: relative; bottom: 26px; left: 140px;">명</span>
							</div>	
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">엑스트라 베드</label> 
								<input type="number" class="form-control" name="extraBed" id="extraBed" value="0"><span style="position: relative; bottom: 26px; left: 140px;">명</span>
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">금액</label> 
								<input type="text" class="form-control" name="price" id="totalPrice"><span style="position: relative; bottom: 26px; left: 140px;">원</span>
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
	<div class="modal fade" id="room-rev" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-scrollable">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel" style="font-weight:bold;">객실목록</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <form id="room-filter-form"> 
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
				  		<label for="location-field" class="form-label">객실타입</label>
					  	<select class="form-select form-select-sm" name="roomCategory" id="roomCategory-modal">
					  		<option value="" selected>=====</option>
							<option value="101">디럭스</option>
							<option value="102">비즈니스 디럭스</option>
							<option value="103">그랜드 코너 디럭스</option>
							<option value="201">이그제큐티브 비즈니스 디럭스</option>
							<option value="202">이그제큐티브 그랜드 디럭스</option>
							<option value="301">수페리어 스위트</option>
							<option value="302">코리안 스위트</option>
							<option value="303">코너 스위트</option>
							<option value="304">프리미어 스위트</option>
							<option value="305">로열 스위트</option>
							<option value="306">신라 스위트</option>
							<option value="307">프레지덴셜 스위트</option>
						</select>
			  		</div>
	        	</div>
	        	<div class="row py-3">
	        		<div class="col" >
			  			<label for="checkin-field" class="form-label">체크인 기간</label>
			  			<input type="text" class="form-control" id="datepicker" name="checkinPeriod" />
			  		</div>
	        	</div>
	        	<div class="row justify-content-end py-3">
	        		<div class="col-2 float-end">
		        		<button type="button" class="btn btn-secondary btn-sm" id="search-filter">검색</button>
	        		</div>
	        	</div>
	        </form>
	        <div class="row px-3" id="room-list">
	        
	        </div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" id="close-modal" data-bs-dismiss="modal">닫기</button>
	        <button type="button" class="btn btn-primary" id="update-modal">확인</button>
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
		$("#user-country").attr('value', userDetail.country);
		$("#user-address").attr('value', userDetail.totalAddress);
		$("#userNo").attr('value', userDetail.no);
		
		userModal.hide();
		users = [];
	})
	
	// 객실 검색
	let roomModal= new bootstrap.Modal($("#room-rev"), {keyboard: false})
	$("#search-room").on("click", function() {
		roomModal.show();
	})
	
	// 필터 설정 후 검색
	$("#search-filter").on("click", function() {
		if($("#location-modal option:selected").val() == null || $("#location-modal option:selected").val() == '') {
			alert("지점을 선택해주세요");	
			return false;
		}
		if($("#roomCategory-modal option:selected").val() == null || $("#roomCategory-modal option:selected").val() == '') {
			alert("객실타입을 선택해주세요");	
			return false;
		}
		if ($("#datepicker").val() == null || $("#datepicker").val() =='') {
			alert("숙박기간을 선택해주세요");	
			return false;
		}
		
		roomCheck();
	})
	
	// 객실선택
	let rooms = [];
	$("#room-list").on("click",".btn-table", function() {
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
		
		roomModal.hide();
		$("#room-list").empty();
		rooms = [];
	})
	
	// 조식,엑스트라베드 옵션에 따른 총 금액 변경------------------------------------------------------------------강사님께 질문
	$("#options div").not(":last-child").on('propertychange change keyup paste input', function () {
		let $adultBf = $("#adultBf").val();
		let $childBf = $("#childBf").val();
		let $extraBed = $("#extraBed").val();
		let $totalPrice = $("#totalPrice").val().replace(',','');
		
		let totalPrice = parseInt($totalPrice) + ($adultBf*50000) + ($childBf*40000) + ($extraBed*50000);
		
		$("#totalPrice").attr('value', totalPrice.toLocaleString());
	})
	
	// 인원 수 유효성체크
	$("#adult").on('keyup mouseup', function () {
		
		let $value = $("#adult").val();
		var pattern = /[0-9]/;	// 숫자 
		var testAdult = pattern.test($value);
		
		if (!testAdult) {
			alert("숫자만 입력가능 합니다.")
			$("#adult").val(1);
		}

		let type = $("#roomCategory").val();
		if (type == '디럭스' || type == '비즈니스 디럭스' || type == '그랜드 코너 디럭스') {
			if($value <= 0 || $value > 4) {
				alert("해당타입은 성인 1~4명까지 선택가능합니다.");
				$(this).val(1);
			}
		}
		
		if (type == '이그제큐티브 비즈니스 디럭스' || type == '이그제큐티브 그랜드 디럭스') {
			if($value <= 0 || $value > 6) {
				alert("해당타입은 성인 1~6명까지 선택가능합니다.");
				$("#adult").val(1);
			}
		} else {
			if($value <= 0 || $value > 10) {
				alert("해당타입은 성인 1~10명까지 선택가능합니다.");
				$("#adult").val(1);
			}
		}
	})
	
	$("#child").on('keyup mouseup', function () {
		
		let $value = $("#child").val();
		var pattern = /[0-9]/;	// 숫자 
		var testChild = pattern.test($value);
		
		if (!testChild) {
			alert("숫자만 입력가능 합니다.")
			$("#child").val(0);
		}

		if($value < 0 || $value > 4) {
			alert("어린이는 0~4명까지 선택가능합니다.");
			$("#child").val(0);
		}
	});
	
	// 조식 인원 유효성 체크
	$("#adultBf").on('keyup mouseup', function () {
		
		let $adult = $("#adult").val();
		let $adultBf = $("#adultBf").val();
		var pattern = /[0-9]/;	// 숫자 
		var testAdultBf = pattern.test($adultBf);
		
		if (!testAdultBf) {
			alert("숫자만 입력가능 합니다.")
			$("#adultBf").val(0);
		}

		if($adultBf > $adult || $adultBf < 0) {
			alert("조식은 투숙인원보다 적거나 같아야합니다.");
			$("#adultBf").val(0);
		}
	});
	
	$("#childBf").on('keyup mouseup', function () {
		
		let $child = $("#child").val();
		let $childBf = $("#childBf").val();
		var pattern = /[0-9]/;	// 숫자 
		var testChildBf = pattern.test($childBf);
		
		if (!testChildBf) {
			alert("숫자만 입력가능 합니다.")
			$("#childBf").val(0);
		}

		if($childBf > $child || $childBf < 0) {
			alert("조식은 투숙인원보다 적거나 같아야합니다.");
			$("#childBf").val(0);
		}
	});
	
	// extrabed 유효성체크
	$("#extraBed").on('keyup mouseup', function () {
		
		let $adult = $("#adult").val();
		let $extraBed = $("#extraBed").val();
		var pattern = /[0-9]/;	// 숫자 
		var testExtraBed = pattern.test($extraBed);
		
		if (!testExtraBed) {
			alert("숫자만 입력가능 합니다.")
			$("#extraBed").val(0);
		}

		if($extraBed > $adult || $extraBed < 0) {
			alert("엑스트라 베드는 성인 투숙인원 이하여야합니다.");
			$("#extraBed").val(0);
		}
	});
	
	// 객실 요금 변경
	
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
	
	// 객실 필터 검색
	function roomCheck() {
		let queryString = $("#room-filter-form").serialize();
		let $roomList = $("#room-list").empty();
		
		$.getJSON("/admin/addrevroom/room", queryString, function(results) {
			if (results.length == 0) {
				let content =
					`<div class="col-12">
						<p class="text-center">검색결과가 존재하지 않습니다.</p>
					</div>`;
				$userBody.append(content);
			}
			
			$.each(results, function(index, room) {
				let content ='';
				content +='<table class="table table-striped table-sm">';
				content +='	<thead>';
				content +='		<tr>';
				content +='			<th>순번</th>';
				content +='			<th>객실호수</th>';
				content +='			<th>객실타입</th>';
				content +='			<th>지점</th>';
				content +='			<th>비고</th>';
				content +='		</tr>';
				content +='	</thead>';
				content +='	<tbody>';
				content +='		<tr>';
				content +='			<td>'+(index+1)+'</td>';
				content +='			<td>'+room.no+'</td>';
				content +='			<td>'+room.roomCategory.name+'</td>';
				content +='			<td>'+room.location.name+'</td>';
				content +='			<td><button class="btn btn-table" data-tag="'+index+'">선택</button</td>';
				content +='		</tr>';
				content +='	</tbody>';
				content +='</table>';
				
				rooms.push(results[index]); 
				$roomList.append(content);
			})	
			
		})
	}
	
	// 체크인 기간조회(필터)
	$("#datepicker").flatpickr({
		minDate: "today",
		mode: "range",
		locale: "ko"
		});
})
</script>
</body>
</html>