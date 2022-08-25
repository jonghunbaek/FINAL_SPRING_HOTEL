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
					<form id="revForm" method="post" action="addrevdiningform">
						<input type="hidden" id="userNo" name="userNo">
						<input type="hidden" id="dnNo" name="diningNo">
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
							<div class="col mb-3">
								<label for="recipient-name" class="col-form-label">성인</label> 
								<input type="number" class="form-control" name="adult" id="adult" readonly><span style="position: relative; bottom: 26px; left: 100px;">명</span>
							</div>
							<div class="col mb-3">
								<label for="recipient-name" class="col-form-label">어린이</label> 
								<input type="number" class="form-control" name="child" id="child" readonly><span style="position: relative; bottom: 26px; left: 100px;">명</span>
							</div>
							<div class="col mb-3">
								<label for="recipient-name" class="col-form-label">유아</label> 
								<input type="number" class="form-control" name="baby" id="baby" value="0"><span style="position: relative; bottom: 26px; left: 100px;">명</span>
							</div>
							<div class="col mb-3">
								<label for="recipient-name" class="col-form-label">지점</label> 
								<input type="text" class="form-control" name="location" id="location" readonly>
							</div>
							<div class="col mb-3">
								<label for="recipient-name" class="col-form-label">다이닝 종류</label> 
								<input type="text" class="form-control" name="dnCategory" id="dnCategory" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">방문일</label> 
								<input type="text" class="form-control" name="date" id="visitDate" readonly>
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">좌석유형</label> 
								<input type="text" class="form-control" name="seat" id="seatType" readonly>
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">식사 타임</label> 
								<input type="text" class="form-control" name="mealTime" id="mealTime" readonly>
							</div>
							<div class="col-3 mb-3">
								<label for="recipient-name" class="col-form-label">방문예정시간</label> 
								<input type="text" class="form-control" name="visitTime" id="visitTime" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-4 mb-3">
								<label for="recipient-name" class="col-form-label">알레르기 유무</label>
								<div class="row px-3" id="allergyCheck">
									<input type="radio" class="form-check-input" name="isAllergy" id="isAllergy" autocomplete="off" value="Y">
									<label class="col-3 form-check-label" for="isAllergy">유</label>
									<input type="radio" class="form-check-input" name="isAllergy" id="isNotAllergy" autocomplete="off" value="N">
									<label class="col-3 form-check-label" for="isNotAllergy">무</label>
								</div>
							</div>
							<div class="col-8 mb-3 d-none" id="typeView">
								<label for="recipient-name" class="col-form-label">알레르기 종류</label>
								<div class="row px-3" id="allergyType">
									 <input class="form-check-input" type="checkbox" name="allergyNos" value="1" id="flexCheckDefault">
									 <label class="col form-check-label" for="flexCheckDefault">육류</label>
									 <input class="form-check-input" type="checkbox" name="allergyNos" value="2" id="flexCheckDefault">
									 <label class="col form-check-label" for="flexCheckDefault">어패류</label>
									 <input class="form-check-input" type="checkbox" name="allergyNos" value="3" id="flexCheckDefault">
									 <label class="col form-check-label" for="flexCheckDefault">유제품</label>
									 <input class="form-check-input" type="checkbox" name="allergyNos" value="4" id="flexCheckDefault">
									 <label class="col form-check-label" for="flexCheckDefault">견과류</label>
								</div>
									 <label class="col-form-label"for="etc">기타</label>
								<div class="row px-3">
									 <input type="text" class="col form-control" id="" name="etcAllergy" placeholder="기타 사항을 입력해 주세요." />
								</div>
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
	
	<!-------------------------- 다이닝검색 모달창-------------------------------------------->
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
					  	<select class="form-select form-select-sm" name="seatType" id="seatType-modal">
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
		if ($("#seatType-modal option:selected").val() == null || $("#seatType-modal option:selected").val() =='') {
			alert("좌석유형을 선택해주세요");	
			return false;
		}
		
		if ($("#adult-modal").val() == null || $("#adult-modal").val() =='') {
			alert("인원수를 선택해주세요");	
			return false;
		}
		
		diningCheck();
		console.log($("#dnNo").val());
	})
	
	// 밀타임 변경시 시간 변경
	$("#mealTime-modal").on('change', function() {
		
		let $mealTime = $("#mealTime-modal").val();
		let $visitTime = $("#visitTime-modal").empty();
		
		if ($mealTime == 'lunch' || $mealTime == 'blunch') {
			let content ='';
			content += '<option value="12:00">12:00</option>';
			content += '<option value="12:30">12:30</option>';
			content += '<option value="13:00">13:00</option>';
			
			$visitTime.append(content);
		} else if ($mealTime == 'dinner') {
			let content ='';
			content += '<option value="17:30">17:30</option>';
			content += '<option value="18:00">18:00</option>';
			content += '<option value="18:30">18:30</option>';
			content += '<option value="12:30">19:00</option>';
			
			$visitTime.append(content);
		}
	})
	
	// 다이닝선택
	$("#select-modal").on("click", function() {
		
		let $location = $("#location-modal").val();
		let $dnCategory = $("#dnCategory-modal").val();
		let $seatType = $("#seatType-modal").val();
		let $adult = $("#adult-modal").val();
		let $child = $("#child-modal").val();
		let $datepicker = $("#datepicker").val();
		let $mealTime = $("#mealTime-modal").val();
		let $visitTime = $("#visitTime-modal").val();

		if ($location == 1) {
			$("#location").attr('value', '서울');
		} else if ($location == 2) {
			$("#location").attr('value', '부산');
		} else if ($location == 3) {
			$("#location").attr('value', '제주');
		} else if ($location == 4) {
			$("#location").attr('value', '강릉');
		} else if ($location == 5) {
			$("#location").attr('value', '광주');
		}
		
		if ($dnCategory == 101) {
			$("#dnCategory").attr('value', '라연');
		} else if ($dnCategory == 102) {
			$("#dnCategory").attr('value', '아리아께');
		} else if ($dnCategory == 103) {
			$("#dnCategory").attr('value', '팔선');
		} else if ($dnCategory == 104) {
			$("#dnCategory").attr('value', '더 파크뷰');
		} else if ($dnCategory == 105) {
			$("#dnCategory").attr('value', '콘티넨탈');
		} 
	
		if ($seatType == 'room') {
			$("#seatType").attr('value', '룸');
		} else if ($seatType == 'table') {
			$("#seatType").attr('value', '테이블');
		}
		
		$("#adult").attr('value', $adult);
		$("#child").attr('value', $child);
		$("#visitDate").attr('value', $datepicker);
		$("#mealTime").attr('value', $mealTime);
		$("#visitTime").attr('value', $visitTime);
		
		dnModal.hide(); //--------------------------------캘린더 d-none추가
		$("#calendar").addClass("d-none");
	})
	
	// 알레르기 체크 여부
	$(":radio[name=isAllergy]").on('change', function() {

		let $allergyCheck = $(":radio[name=isAllergy]:checked").val();
		if ($allergyCheck == 'Y') {
			$("#typeView").removeClass("d-none");
		} else {
			$("#typeView").addClass("d-none");
		}
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

		let type = $("#seatType-modal").val();
		
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
	$("#child-modal").on('change', function () {
		
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
	
	let $preValBaby = '';
	$("#baby").on('change', function () {
		
		let $baby = $("#baby").val();
		var pattern = /[0-9]/;	// 숫자 
		var testBaby = pattern.test($baby);
		
		if (!testBaby) {
			alert("숫자만 입력가능 합니다.")
			$("#baby").val(0);
		}

		if ($baby == 4) {
			$(this).data('val', $(this).val());
			$preValBaby = $(this).data('val');
		}
		if($baby < 0 || $baby > 4) {
			alert("유아는 0~4명까지 선택가능합니다.");
			$(this).val($preValBaby);
		}
	});

	// 예약정보 form제출시 유효성체크
	$("#btn-setting").on('click', function () {
		let $userNo = $("#userNo").val();
		let $location = $("#location").val();
		let $dnCategory = $("#dnCategory").val();
		let $visitDate = $("#visitDate").val();
		let $dnNo = $("#dnNo").val();
		
		if ($userNo == null || $userNo == '') {
			alert("고객정보 입력은 필수 입니다.");
			return false;
		}
		if ($location == '' || $dnCategory == '' || $visitDate == '' || $dnNo == '') {
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
				
				let dn = results.dn
				let selectableDates = results.selectableDate
				
				$.each(selectableDates, function(index, selectableDate) {
					dates.push(selectableDate.date);
				})
				
				$("#dnNo").val(dn.no);
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
							let content ='';
							content += '<option value="" selected>선택해주세요</option>'
							$mealTime.append(content);
						}
					})
					queryForm = queryForm.substring(0, queryForm.length - 16)

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