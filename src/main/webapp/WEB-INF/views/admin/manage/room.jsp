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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">

<!-- 테이블 스타일 라이브러리 -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admincss/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admincss/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admincss/style.css">

<!-- flatpicker  -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://npmcdn.com/flatpickr/dist/flatpickr.min.js"></script>
<script src="https://npmcdn.com/flatpickr/dist/l10n/ko.js"></script>

<style>
	#keymap {
		color: black !important;
		position:relative;
		top:10px;
	}
	
	a {
		font-weight: 900;
		color:black;
	}
	
	#title {
		position:relative;
		top:70px;
		left:10px;
		width: 90%;
		height: 70px;
		padding-top:17px;
		/* border:1px solid #dcdcdc;
		border-radius: 10px; 
		background-color:rgba(220, 220, 220, 0.5); */
	}
	
	.dropdown-menu {
		box-shadow: 2px 2px 5px 5px #dcdcdc;
	}
	
	.dropdown-menu select {
		font: 11px Roboto, sans-serif;
	}
		
	#search-text {
		border:1px solid darkgray;
		height: 25px;
		font-size: 13px;
	}
	
    #filter-title {
    	margin-bottom:-5px;
    	margin-left:10px;
		font: 15px Roboto, sans-serif;
		font-weight: bold;
		color:black;
	} 
	
	.form-label {
		font: 12px Roboto, sans-serif;
		font-weight: bold;
		color:gray;
	}
	
	#filter-first-1 {
		border-right: 1px solid #dcdcdc;
	}
	
	#filter-first-2 {
		border-right: 1px solid #dcdcdc;
	}
	
	#filter-second input[type=text] {
		font-size: 11px;
	}
	
	#filter-third-1 {
		border-right: 1px solid #dcdcdc;
	}
	
	#filter-third-2 {
		border-right: 1px solid #dcdcdc;
	}
	
	.table-responsive {
		position:relative;
		top:70px;
		width: 90%;
		border:1px solid #dcdcdc;
		border-radius: 10px;
	} 
	
	#pagination {
		position:relative;
		top:70px;
		padding-top:50px;
		padding-bottom: 100px;
	}
	
	/* ----------------------버튼 관련-------------------------------- */
	#dropdownMenuClickableInside {
		outline:none !important;
		font-size:25px;
		color: rgba(30, 22, 54, 0.6);
		width: 100%;
		margin:-10px;
	}
	
	#dropdownMenuClickableInside:hover {
		color: rgba(255, 255, 255, 1);
		box-shadow: rgba(30, 22, 54, 0.4) 0 80px 0px 2px inset;
	} 
	
	#fix {
		position:relative;
		top:8px;
		left:5px;
		font-weight:bold;
		font-size:15px;
		color: gray;
		box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
		height: 70%;
		width: 100%;
	}
	
	#fix:hover {
		color:RGB(255, 56, 92);
		font-weight:bold;
		border: none !important;
		box-shadow: rgba(220, 220, 220, 0.3) 0 80px 0px 2px inset;
	} 
	
	#complete {
		position:relative;
		top:8px;
		left:5px;
		font-weight:bold;
		font-size:15px;
		color: gray;
		box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
		height: 70%;
		width: 100%;
	}
	
	#complete:hover {
		color:#008080;
		font-weight:bold;
		border: none !important;
		box-shadow: rgba(220, 220, 220, 0.3) 0 80px 0px 2px inset;
	} 
	
	#search-keyword {
		position:relative;
		bottom:5px;
		font-weight:bold;
		font-size:25px;
		color: rgba(30, 22, 54, 0.6);
	} 
	
    #filter-third-1 div label {
		margin:0;
		font-size:12px;
		width: 45%;
		height: 25%;
		box-shadow: rgba(255, 255, 255, 0.4) 0 0px 0px 2px inset;
	}
	
	#filter-third-1 div label:hover {
		color: rgba(255, 255, 255, 1);
		box-shadow: rgba(30, 22, 54, 0.4) 0 80px 0px 2px inset;
	}  
	
	#filter-third-2 div label {
		margin:0;
		font-size:17px;
		width: 35%;
		height: 60%;
		box-shadow: rgba(255, 255, 255, 0.4) 0 0px 0px 2px inset;
	}
	
	#filter-third-2 div label:hover {
		color: rgba(255, 255, 255, 1);
		box-shadow: rgba(30, 22, 54, 0.4) 0 80px 0px 2px inset;
	} 
	
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
	
	.btn-table {
		margin:-10px;
		font-size:25px;
		width: 60%;
		height: 40%;
		color: rgba(30, 22, 54, 0.6);
	}
	
	.btn-table:hover {
		color: rgba(255, 255, 255, 1);
		box-shadow: rgba(30, 22, 54, 0.4) 0 80px 0px 2px inset;
	}  

	/* 모달 관련 */
	#room-rev-detail label {
		font-weight: bold;
	}
	
	#room-rev-detail input {
		font-size:12px;
	}
	
	#room-rev-detail input:hover {
		box-shadow: 1px 1px 5px 3px #dcdcdc;
		font-size: 12px;
	}
	
	#room-rev-detail select {
		font-size:12px;
	}
	
	#room-rev-detail select:hover {
		box-shadow: 1px 1px 5px 3px #dcdcdc;
		font-size: 12px;
	}

</style>
<title>객실 관리</title>
</head>
<body>
<c:set var="menu" value="roomrev"/>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid">
	<div class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mt-3 pb-3">
		<p id="keymap">
			<i class="bi bi-building" style="font-weight:bold; font-size:16px;"></i></span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span data-feather="home"></span>
			&nbsp;<strong style="font-size:13px;">객실 관리</strong>
		</p>
		<!-- 조건설정하는 헤드부분 -->
		<div class="row" id="title">
			<div class="col-1">
				<button class="btn" type="button" id="fix" name="delete">보수요청</button>
			</div>
			<div class="col-1">
				<button class="btn" id="complete" name="complete">보수완료</button>
			</div>
			<div class="col-9">
			</div>
			<div class="col-1 dropdown" id="filter">
			  <button class="btn dropdown-toggle" type="button" id="dropdownMenuClickableInside" data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false">
			    <i class="bi bi-gear"></i>
			  </button>
			  <input type="hidden" name="page" />
			  <form class="dropdown-menu" aria-labelledby="dropdownMenuClickableOutside" id="filter-room-form" style="width: 320%; height:550%;">
			  	<div class="row" id="filter-title">객실 필터</div><hr/>
			  	<div class="row justify-content-center gy-1 px-3" id="filter-first">
			  		<div class="col" id="filter-first-1">
				  		<label for="location-field" class="form-label">지점</label>
					  	<select class="form-select form-select-sm" name="location">
					  		<option value="0" selected>=====</option>
							<option value="1">서울</option>
							<option value="2">부산</option>
							<option value="3">제주</option>
							<option value="4">강릉</option>
							<option value="5">광주</option>
						</select>
			  		</div>
			  		<div class="col" id="filter-first-2">
						<label for="category-field" class="form-label">객실 타입</label>
						<select class="form-select form-select-sm" name="roomCategory">
							<option value="0" selected>=====</option>
							<option value="100" >스탠다드</option>
							<option value="200">이그제큐티브</option>
							<option value="300">스위트</option>
						</select>
					</div>
					<div class="col" id="filter-first-3">
						<label for="revStatus-field" class="form-label">객실 상태</label>
						<select class="form-select form-select-sm" name="roomStatus">
							<option value="" selected disabled>=====</option>
							<option value="C" >숙박</option>
							<option value="E">공실</option>
							<option value="F">보수</option>
						</select>
					</div>
			  	</div><hr/>
			  	<div class="row justify-content-center gy-1 px-3" id="filter-third">
			  		<div class="col" id="filter-third-1">
			  			<label for="checkout-field" class="form-label">정렬</label>
			  			<div class="row" style="padding-left:10px;">
			  				<input type="radio" class="btn-check" name="sort" id="sort-id-desc" autocomplete="off" value="id" >
							<label class="btn" for="sort-id-desc">아이디순</label>
							<input type="radio" class="btn-check" name="sort" id="sort-price-desc" autocomplete="off" value="price">
							<label class="btn" for="sort-price-desc">금액순</label>
			  			</div>
			  		</div>
			  		<div class="col" id="filter-third-3">
			  			<label for="checkout-field" class="form-label">행 개수</label>
			  			<select class="form-select form-select-sm" name="rows">
							<option value="10" selected>10개</option>
							<option value="20">20개</option>
							<option value="30">30개</option>
						</select>
			  		</div>
			  	</div><hr/>
		  		<div class="row justify-content-center px-3">
		  			<div class="col-3">
			  			<button type="button" class="btn setting" id="btn-setting">적용</button>
		  			</div>
		  			<div class="col-6"></div>
		  			<div class="col-3">
			  			<button type="reset" class="btn setting" id="btn-reset" style="position:relative; right:10px;">초기화</button>
		  			</div>
		  		</div>
			  </form>
			</div>
		</div>
		<!-- 테이블 시작 -->
		<div class="row">
			<div class="col">
				<div class="table-responsive mt-1">
					<table class="table custom-table">
						<thead>
							<tr>
								<th scope="col">
									<label class="form-check-label" for="flexCheckDefault">
										<input type="checkbox" class="js-check-all" style="accent-color: RGBa(255, 56, 92, 0.1); zoom:1.7;">
									</label>
								</th>
								<th scope="col">객실아이디</th>
								<th scope="col">객실명</th>
								<th scope="col">지점</th>
								<th scope="col">객실번호</th>
								<th scope="col">객실상태</th>
								<th scope="col">금액</th>
								<th scope="col">할인금액</th>
								<th scope="col">객실관리</th>
							</tr>
						</thead>
						<tbody id="body">
							<c:forEach var="room" items="${rooms }">
								<tr id="${room.id }">
									<th scope="row">
										<label class="form-check-label" for="flexCheckDefault">
											<input type="checkbox" name="checkedNo" value="${room.id }" data-tag="${room.rev }" style="accent-color: RGBa(255, 56, 92, 0.1); zoom:1.3;">
										</label>
									</th>
									<td>${room.id }</td>
									<td>${room.name }</td>
									<td>${room.location.name }</td>				
									<td>${room.no }호</td>						
									<c:choose>
										<c:when test="${room.rev eq 'C'}">
											<td style="color:RGBA(0, 0, 255, 0.6); font-weight:bold;">숙박</td>
										</c:when>	
										<c:when test="${room.rev eq 'E'}">
											<td style="color:gray; font-weight:bold;">공실</td>
										</c:when>
										<c:when test="${room.rev eq 'F'}">
											<td style="color:RGBA(255, 56, 92, 0.7); font-weight:bold;">보수중</td>
										</c:when>									
									</c:choose>	
									<td><fmt:formatNumber value="${room.price }" type="currency" /></td>
									<td><fmt:formatNumber value="${room.discountPrice }" type="currency" /></td>
									<td><button type="button" class="btn btn-table" id="btn-table-${room.id }" data-tag="${room.id }">
										<i class="bi bi-box-arrow-in-right"></i></button></td>
								</tr>
							</c:forEach> 
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- 페이징 처리  -->
		<div class="row justify-content-center" id="pagination">
			<div class="col-3">
				<nav aria-label="Page navigation example">
				  <ul class="pagination">
				    <li class="page-item">
				      <a class="page-link ${pagination.currentPage eq '1' ? 'disabled' : '' }" href="room?page=${pagination.currentPage - 1}" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <c:forEach var="pageNo" begin="${pagination.beginPage}" end="${pagination.endPage}">		
					    <li class="page-item ${pagination.currentPage eq pageNo ? 'active' : '' }" id="page-${pageNo }" ><a class="page-link" href="room?page=${pageNo }">${pageNo }</a></li>
				    </c:forEach>
				    <li class="page-item">
				      <a class="page-link ${pagination.currentPage eq pagination.totalPages ? 'disabled' : '' }" href="room?page=${pagination.currentPage + 1}" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="room-manage-detail" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="font-weight:bold;">객실관리</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="request-modal-form" method="post">
          <input type="hidden" name="id" id="id-modal">
          <div class="row">
	          <div class="col-6 mb-3">
	            <label for="recipient-name" class="col-form-label">금액</label>
	            <input type="text" class="form-control" name="price" id="price-modal"><span style="position:relative; bottom: 28px; left:190px;">원</span>
	          </div>
	          <div class="col-6 mb-3">
	            <label for="recipient-name" class="col-form-label">할인금액</label>
	            <input type="text" class="form-control" name="discountPrice" id="discountPrice-modal"><span style="position:relative; bottom: 28px; left:190px;">원</span>
	          </div>
          </div>
          <div class="row">
	          <div class="col mb-3">
	          	<label for="recipient-name" class="col-form-label">특이사항</label>
	            <textarea cols="50" rows="5" class="form-control" name="request" id="request-modal"></textarea>
	          </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" id="close-modal" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" id="update-modal">수정</button>
      </div>
    </div>
  </div>
</div>
<script src="${pageContext.request.contextPath}/resources/admincss/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admincss/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/admincss/dashboard.js"></script>
<script>
$(function() {
	
	// 보수요청 클릭
	$("#fix").on("click", function() {
		
		let roomId = $(":checkbox[name=checkedNo]:checked");
		let roomIdLength = roomId.length;
		if (roomIdLength == 0) {
			alert("선택항목을 하나이상 선택하세요");
			return false;
		}
		fixChecked(roomId) 
		
		let currentPage = $(".pagination .active").attr("data-tag");
		console.log(currentPage);
		filterRoom(currentPage);  
	})
	
	// 보수요청 ajax
	function fixChecked(id) {
		let queryString = '';
		$(":checkbox[name=checkedNo]:checked").each(function(e) {
			
			   if ($(this).attr("data-tag") == 'C' || $(this).attr("data-tag") == 'F') {
				   alert("숙박,보수 중인 객실은 선택할 수 없습니다.")
				   return false;
			   }
			
		       if (e == 0) {
		    	   queryString += "id=" + $(this).val(); 
		       }
				queryString += "&id=" + $(this).val();
		 	 })
		 	 
		if (queryString.length == 0) {
			return;
		} else {
			$.getJSON("/admin/room/fix", queryString)
		}
	}
	
	// 보수완료 클릭
	$("#complete").on("click", function() {
		
		let roomId = $(":checkbox[name=checkedNo]:checked");
		let roomIdLength = roomId.length;
		if (roomIdLength == 0) {
			alert("선택항목을 하나이상 선택하세요");
			return false;
		}
		completeChecked(roomId) 
		
		let currentPage = $(".pagination .active").attr("data-tag");
		console.log(currentPage);
		filterRoom(currentPage);  
	})
	
	// 보수완료 ajax
	function completeChecked(id) {
		let queryString = '';
		$(":checkbox[name=checkedNo]:checked").each(function(e){
			   
			   if ($(this).attr("data-tag") == 'C' || $(this).attr("data-tag") == 'E') {
				   alert("숙박,공실인 객실은 선택할 수 없습니다.")
				   return false;
			   }
		       if (e == 0) {
		    	   queryString += "id=" + $(this).val(); 
		       }
				queryString += "&id=" + $(this).val();
		 	 })
		if (queryString.length == 0) {
			return;
		} else {
			$.getJSON("/admin/room/complete", queryString)
		}	
	}
	
	// 특이사항 클릭
	$("#body").on("click",".btn-table", function() {
		let roomId= $(this).attr("data-tag");
		modalRequest(roomId);
	})
	
	// 특이사항 수정
	$("#room-manage-detail").on("click","#update-modal", function() {
		let id= parseInt($("#id-modal").val());
		modalRequestUpdate(id);
		alert("특이사항 수정이 완료됐습니다.");
		modalRequest(id);
	} )
	
	// 모달창 닫힐때 수정내역 반영한 리스트 재노출
	$('#room-manage-detail').on('hidden.bs.modal', function () {
		let currentPage = $(".pagination .active").attr("data-tag");
		console.log(currentPage);
		filterRoom(currentPage); 
	})
	
	// 필터검색
	$("#btn-setting").click(function() {
		filterRoom();
	})
	
	// 페이지 이동처리 
	$("#pagination").on('click', '#pre-page', function() {
		let currentPage = $(".pagination .active").attr("data-tag");
		console.log(currentPage-1);
		filterRoom(currentPage - 1); 
	})
	
	$("#pagination").on('click', '#next-page', function() {
		let currentPage = $(".pagination .active").attr("data-tag");
		console.log(currentPage-0+1);
		filterRoom(currentPage - 0 + 1); 
	})
	
	$("#pagination").on('click', '.current-page', function() {
		let currentPage = $(this).attr("data-tag");
		console.log(currentPage);
		filterRoom(currentPage); 
	})
	
	// 모달창 특이사항 수정
	function modalRequestUpdate(id) {
		let queryString = $("#request-modal-form").serialize();
		$.post("/admin/room/updateRoomRequest", queryString)
	}
	
	// 모달창에 특이사항 정보 넣기
	let roomManageRequest= new bootstrap.Modal($("#room-manage-detail"), {keyboard: false})
	
	function modalRequest(id) {
		let queryString = "id=" + id;
		
		$.getJSON("/admin/room/request", queryString, function(result) {
			$("#id-modal").attr('value', result.id);
			$("#price-modal").attr('value', result.price.toLocaleString());
			$("#discountPrice-modal").attr('value', result.discountPrice.toLocaleString());
			
			$("#request-modal").val(result.request);
		})
		roomManageRequest.show();
	}
	
	// 객실 조건별 조회
	function filterRoom(page) {
		let queryString = $("#filter-room-form").serialize();
		
		let pageNo = page || 1;
		queryString += "&page=" + pageNo;
		
		let $body = $("#body").empty();
		let $pagination = $("#pagination").empty();
		
		$.getJSON("/admin/room/filter", queryString, function(results) {
			if (results.length == 0) {
				let content =
				   `<div class="col-12">
						<p class="text-center">검색결과가 존재하지 않습니다.</p>
					</div>`;
					$body.append(content);
			} else {
				let rooms = results.rooms;
				let pagination = results.pagination;
				
				$.each(rooms, function(index, room) {
					let content = '';
						content +='<tr>';
						content +='	 <th scope="row">';
						content +='		 <label class="form-check-label" for="flexCheckDefault">'; 
						content +='		 	 <input type="checkbox" name="checkedNo" value="'+room.id+'" data-tag="'+room.rev+'" style="accent-color: RGBa(255, 56, 92, 0.1); zoom:1.3;">';
						content +='		 </label>';
						content +='	 </th>';
						content +='	 <td>'+ room.id +'</td>';
						content +='	 <td>'+ room.name +'</td>';
						content +='	 <td>'+ room.location.name +'</td>';				
						content +='	 <td>'+ room.no +'호</td>';
						
						if (room.rev == 'C') {
							content +='	 <td style="color:RGBA(0, 0, 255, 0.6); font-weight:bold;">숙박</td>';							
						} else if (room.rev == 'E'){						
							content +='	 <td style="color:gray; font-weight:bold;">공실</td>';
						} else if (room.rev == 'F'){						
							content +='	 <td style="color:RGBA(255, 56, 92, 0.7); font-weight:bold;">보수중</td>';
						} 
						
						content +='	 <td>'+ room.price.toLocaleString("ko-KR", { style: 'currency', currency: 'KRW' }) +'</td>';
						content +='	 <td>'+ room.discountPrice.toLocaleString("ko-KR", { style: 'currency', currency: 'KRW' }) +'</td>';
						content +='	 <td><button type="button" class="btn btn-table" id="btn-table-'+room.id+'" data-tag="'+room.id+'"><i class="bi bi-box-arrow-in-right"></i></button></td>';
						content +='</tr>';
						
					$body.append(content);
				})
				let content = '';
					content +='<div class="col-3">';
					content +='	<nav aria-label="Page navigation example">';
					content +='    	<ul class="pagination">';
					content +='        	<li class="page-item">';
					content +='      			<button class="page-link '+ (pagination.currentPage == '1' ? 'disabled' : '') +'" aria-label="Previous" id="pre-page">';
					content +='       				 <span aria-hidden="true" style="font-weight:bold;">&laquo;</span>';
					content +='     			</button>';
					content +='    		</li>';
											for (let num = pagination.beginPage; num <= pagination.endPage; num++ ) {									
					content +='	 		   <li class="page-item '+(pagination.currentPage == num ? 'active' : '')+ ' current-page" id="page-'+num+'" data-tag="'+num+'" ><button class="page-link" style="font-weight:bold;">'+num+'</button></li>';
											}		
					content +='    		<li class="page-item">';
					content +='     			<button class="page-link '+ (pagination.currentPage == pagination.totalPages ? 'disabled' : '') +'" aria-label="Next" id="next-page">';
					content +='        			 <span aria-hidden="true" style="font-weight:bold;">&raquo;</span>';
					content +='      			</button>';
					content +='    		</li>';
					content +='  		</ul>';
					content +='	</nav>';
					content +='</div>';
					
				$pagination.append(content);
			}
		})
	}
	
})
</script>
</body>
</html>