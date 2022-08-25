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

<!-- DatePicker 라이브러리 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

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
	
	#filter-second-1 {
		border-right: 1px solid #dcdcdc;
	}
	
	#filter-second-2 {
		border-right: 1px solid #dcdcdc;
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
	
	#delete {
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
	
	#delete:hover {
		color:RGB(255, 56, 92);
		font-weight:bold;
		border: none !important;
		box-shadow: rgba(220, 220, 220, 0.3) 0 80px 0px 2px inset;
	} 
	
	#add {
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
	
	#add:hover {
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
		font-size:17px;
		width: 35%;
		height: 60%;
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
<title>다이닝 예약현황</title>
</head>
<body>
<c:set var="menu" value="roomrev"/>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid">
	<div class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mt-3 pb-3">
		<p id="keymap">
			<span data-feather="monitor"></span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span data-feather="home"></span>
			&nbsp;<strong style="font-size:13px;">다이닝 예약현황</strong>
		</p>
		<!-- 조건설정하는 헤드부분 -->
		<div class="row" id="title">
			<div class="col-1">
				<button class="btn" type="button" id="delete" name="delete">선택삭제</button>
			</div> 
			<div class="col-1">
				<a href="addrev" class="btn" id="add" style="text-decoration: none;">신규예약</a>
			</div>
			<div class="col-9">
			</div>
			<div class="col-1 dropdown" id="filter">
			  <button class="btn dropdown-toggle" type="button" id="dropdownMenuClickableInside" data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false">
			    <i class="bi bi-gear"></i>
			  </button>
			  <input type="hidden" name="page" />
			  <form class="dropdown-menu" aria-labelledby="dropdownMenuClickableOutside" id="filter-rev-form" style="width: 320%; height:830%;">
			  	<div class="row" id="filter-title">예약 필터</div><hr/>
				<div class="row justify-content-center gy-1 px-3">
					<div class="col-4">
						<select class="form-select form-select-sm" id="search-condition" name="search">
							<option value="" selected disabled>검색조건</option>
							<option value="name">고객명</option>
							<option value="revNo">예약번호</option>
						</select>
					</div>
					<div class="col-6">
						<input class="form-control form-control-dark" id="search-text" type="text" name="keyword" placeholder="검색어를 입력하세요" aria-label="Search" />
					</div>
					<div class="col-2"> 
						<button type="button" id="search-keyword" class="btn" style="font-size:13px; width: 100%;"><i class="bi bi-search"></i></button>
					</div>	
				</div><hr/>
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
						<label for="category-field" class="form-label">레스토랑</label>
						<select class="form-select form-select-sm" name="restaurant">
							<option value="0" selected>=====</option>
							<option value="101" >라연</option>
							<option value="102">아리아께</option>
							<option value="103">팔선</option>
							<option value="104">더 파크뷰</option>
							<option value="105">콘티넨탈</option>
						</select>
					</div>
					<div class="col" id="filter-first-3">
						<label for="revStatus-field" class="form-label">예약 상태</label>
						<select class="form-select form-select-sm" name="revStatus">
							<option value="" selected disabled>=====</option>
							<option value="O" >임박</option>
							<option value="I">방문</option>
							<option value="R">예약중</option>
							<option value="D">예약취소</option>
						</select>
					</div>
			  	</div><hr/>
			  	<div class="row justify-content-center gy-1 px-3" id="filter-second">
			  		<div class="col" id="filter-second-1">
			  			<label for="checkin-field" class="form-label">방문일</label>
			  			<input type="text" class="form-control" id="datepicker" name="visitDate" />
			  		</div>
			  		<div class="col" id="filter-second-2">
						<label for="revStatus-field" class="form-label">알레르기</label>
						<select class="form-select form-select-sm" name="isAllergy">
							<option value="" selected disabled>=====</option>
							<option value="Y" >있음</option>
							<option value="N">없음</option>
						</select>
					</div>
					<div class="col" id="filter-second-3">
						<label for="revStatus-field" class="form-label">식사타임</label>
						<select class="form-select form-select-sm" name="mealTime">
							<option value="" selected disabled>=====</option>
							<option value="lunch" >lunch</option>
							<option value="blunch">brunch</option>
							<option value="dinner">dinner</option>
						</select>
					</div>
			  	</div><hr/>
			  	<div class="row justify-content-center gy-1 px-3" id="filter-third">
			  		<div class="col" id="filter-third-1">
			  			<label for="checkout-field" class="form-label">예약번호순</label>
			  			<div class="row" style="padding-left:10px;">
			  				<input type="radio" class="btn-check" name="sortRev" id="sort-rev-desc" autocomplete="off" value="desc" >
							<label class="btn" for="sort-rev-desc"><i class="bi bi-sort-down-alt" selected></i></label>
							<input type="radio" class="btn-check" name="sortRev" id="sort-rev-asc" autocomplete="off" value="asc">
							<label class="btn" for="sort-rev-asc"><i class="bi bi-sort-up"></i></label>
			  			</div>
			  		</div>
			  		<div class="col" id="filter-third-2">
			  			<label for="checkout-field" class="form-label">방문일순</label>
			  			<div class="row">
			  				<input type="radio" class="btn-check" name="sortVisit" id="sort-visit-desc" autocomplete="off" value="desc">
							<label class="btn" for="sort-visit-desc"><i class="bi bi-sort-down-alt"></i></label>
							<input type="radio" class="btn-check" name="sortVisit" id="sort-visit-asc" autocomplete="off" value="asc">
							<label class="btn" for="sort-visit-asc"><i class="bi bi-sort-up"></i></label>
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
								<th scope="col">예약번호</th>
								<th scope="col">고객명</th>
								<th scope="col">지점</th>
								<th scope="col">레스토랑</th>
								<th scope="col">예약상태</th>
								<th scope="col">알레르기</th>
								<th scope="col">방문일</th>
								<th scope="col">예약상세</th>
							</tr>
						</thead>
						<tbody id="body">
							<c:forEach var="rtRev" items="${rtRevs}">
								<tr id="${rtRev.no }">
									<th scope="row">
										<label class="form-check-label" for="flexCheckDefault">
											<input type="checkbox" name="checkedNo" value="${rtRev.no }"style="accent-color: RGBa(255, 56, 92, 0.1); zoom:1.3;">
										</label>
									</th>
									<td>${rtRev.no }</td>
									<td><a href="">${rtRev.user.name }</a><small class="d-block">${rtRev.user.tel }</small></td>
									<td>${rtRev.dn.location.name }</td>				
									<td>${rtRev.dn.dnCategory.name }</td>
									<c:choose>
										<c:when test="${rtRev.status eq 'O'}">
											<td style="color:RGBa(255, 56, 92, 0.7); font-weight:bold;">임박</td>
										</c:when>	
										<c:when test="${rtRev.status eq 'I'}">
											<td style="color:RGBA(0, 0, 255, 0.6); font-weight:bold;">방문</td>
										</c:when>
										<c:when test="${rtRev.status eq 'R'}">
											<td style="color:RGBa(0, 128, 128, 0.7); font-weight:bold;">예약중</td>
										</c:when>
										<c:when test="${rtRev.status eq 'D'}">
											<td>예약취소</td>
										</c:when>							
									</c:choose>
									<c:choose>
										<c:when test="${rtRev.isAllergy eq 'Y'}">
											<td style="color:RGB(128, 0, 0); font-weight:bold;">있음</td>						
										</c:when>
										<c:when test="${rtRev.isAllergy eq 'N'}">
											<td>없음</td>						
										</c:when>
									</c:choose>
									<td><fmt:formatDate value="${rtRev.visitDate }" pattern="yyyy-MM-dd" /><small class="d-block">${rtRev.mealTime }</small></td>
									<td><button type="button" class="btn btn-table" id="btn-table-${rtRev.no }" data-tag="${rtRev.no }"><i class="bi bi-box-arrow-in-right"></i></button></td>
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
				      <a class="page-link ${pagination.currentPage eq '1' ? 'disabled' : '' }" href="diningrev?page=${pagination.currentPage - 1}" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <c:forEach var="pageNo" begin="${pagination.beginPage}" end="${pagination.endPage}">		
					    <li class="page-item ${pagination.currentPage eq pageNo ? 'active' : '' }" id="page-${pageNo }" data-tag="${pageNo }" ><a class="page-link" href="diningrev?page=${pageNo }">${pageNo }</a></li>
				    </c:forEach>
				    <li class="page-item">
				      <a class="page-link ${pagination.currentPage eq pagination.totalPages ? 'disabled' : '' }" href="diningrev?page=${pagination.currentPage + 1}" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="room-rev-detail" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="font-weight:bold;">예약상세</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="detail-modal-form" method="post">
          <div class="row">
	          <div class="col-4 mb-3">
	            <label for="recipient-name" class="col-form-label">예약번호</label>
	            <input type="text" class="form-control" name="no"id="revNo-modal" readonly>
	          </div>
	          <div class="col-3 mb-3">
	            <label for="recipient-name" class="col-form-label">레스토랑</label>
		        <input type="text" class="form-control" id="dnNo-modal" readonly>
	          </div>
	          <div class="col-4 mb-3">
	            <label for="recipient-name" class="col-form-label">고객이름</label>
	            <input type="text" class="form-control" id="name-modal" readonly>
	          </div>
          </div>
          <div class="row">
	          <div class="col mb-3">
	            <label for="recipient-name" class="col-form-label">성인</label>
	            <input type="text" class="form-control" name="adult" id="adult-modal"><span style="position:relative; bottom: 26px; left:120px;">명</span>
	          </div>
	          <div class="col mb-3">
	            <label for="recipient-name" class="col-form-label">어린이(12세이하)</label>
	            <input type="text" class="form-control" name="child" id="child-modal"><span style="position:relative; bottom: 26px; left:120px;">명</span>
	          </div>
	          <div class="col mb-3">
	            <label for="recipient-name" class="col-form-label">유아(36개월이하)</label>
	            <input type="text" class="form-control" name="baby" id="baby-modal"><span style="position:relative; bottom: 26px; left:120px;">명</span>
	          </div>
          </div>
          <div class="row">
	          <div class="col mb-3">
	            <label for="recipient-name" class="col-form-label">방문일</label>
	            <input type="text" class="form-control" name="visitDate" id="visit-modal">
	          </div>
	          <div class="col mb-3">
	            <label for="recipient-name" class="col-form-label">식사 타임</label>
	            <select class="form-select form-select-sm" name="mealTime" id="mealTime-modal">
					<option value="lunch" >Lunch</option>
					<option value="blunch" >Brunch</option>
					<option value="dinner" >Dinner</option>
				</select>
	          </div>
	          <div class="col mb-3">
	            <label for="recipient-name" class="col-form-label">방문 예정시간</label>
	            <select class="form-select form-select-sm" name="timeOption" id="timeOption-modal">
					<option value="" >=====</option>
				</select>
	          </div>
	          <div class="col mb-3">
	            <label for="recipient-name" class="col-form-label">예약상태</label>
	            <select class="form-select form-select-sm" name="status" id="status-modal">
					<option value="O" >임박</option>
					<option value="I">방문</option>
					<option value="R">예약중</option>
					<option value="D">예약취소</option>
				</select>
	          </div>
          </div>
          <!-- RT_ALLERGY, RT_ALLERGY_SELECTED에서 가져와함 -->
          <div class="row">
          	  <div class="col-4 mb-3">
	            <label for="recipient-name" class="col-form-label">알레르기</label>
	            <select class="form-select form-select-sm" name="isAllergy" id="isAllergy-modal">
					<option value="Y">있음</option>
					<option value="N">없음</option>
				</select>
	          </div>
          </div>
          <div class="row d-none" id="typeView">
          	  <div class="col mb-3">
				<label for="recipient-name" class="col-form-label">알레르기 종류</label>
				<div class="row px-3" id="allergyType" style="font-size:12px;">
					 <label class="col form-check-label" for="flexCheckDefault">육류</label>
					 <input class="form-check-input" type="checkbox" name="allergyNos" value="1" id="flexCheckDefault">
					 <label class="col form-check-label" for="flexCheckDefault">어패류</label>
					 <input class="form-check-input" type="checkbox" name="allergyNos" value="2" id="flexCheckDefault">
				</div>
				<div class="row px-3" id="allergyType" style="font-size:12px;">	 
					 <label class="col form-check-label" for="flexCheckDefault">유제품</label>
					 <input class="form-check-input" type="checkbox" name="allergyNos" value="3" id="flexCheckDefault">
					 <label class="col form-check-label" for="flexCheckDefault">견과류</label>
					 <input class="form-check-input" type="checkbox" name="allergyNos" value="4" id="flexCheckDefault">
				</div>
			  </div>
			  <div class="col">
         		 <label class="col-form-label" for="etc">기타</label>
				 <input type="text" class="col form-control" id="etcAllergy-modal" name="etcAllergy" placeholder="기타 사항을 입력해 주세요." />
			  </div>
          </div>
          <div class="row">
	          <div class="col mb-3">
	            <label for="recipient-name" class="col-form-label">고객 요청사항</label>
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
	
	// 선택삭제 클릭
	$("#delete").on("click", function() {
		
		let roomRevNo = $(":checkbox[name=checkedNo]:checked");
		let roomRevNoLength = roomRevNo.length;
		if (roomRevNoLength == 0) {
			alert("선택항목을 하나이상 선택하세요");
			return false;
		}
		deleteChecked(roomRevNo) 
		
		let currentPage = $(".pagination .active").attr("data-tag");
		console.log(currentPage);
		filterRev(currentPage);  
	})
	
	// 선택삭제 ajax
	function deleteChecked(revNo) {
		let queryString = '';
		$(":checkbox[name=checkedNo]:checked").each(function(e){
		       if (e == 0) {
		    	   queryString += "revNo=" + $(this).val(); 
		       }
				queryString += "&revNo=" + $(this).val();
		 	 })
		$.getJSON("/admin/roomrev/delete", queryString)	
	}
	
	// 예약상세 클릭
	$("#body").on("click",".btn-table", function() {
		let rtRevNo= $(this).attr("data-tag");
		modalDetail(rtRevNo);
	})
	
	// 예약상세정보 수정
	$("#room-rev-detail").on("click","#update-modal", function() {
		let roomRevNo= parseInt($("#revNo-modal").val());
		modalDetailUpdate(roomRevNo);
		alert("예약 상세정보 수정이 완료됐습니다.");
		modalDetail(roomRevNo);
	} )
	
	// 필터검색
	$("#btn-setting").click(function() {
		filterRev();
	})
	
	// 키워드 검색
	$("#search-keyword").click(function() {
		
		if($("#search-condition option:selected").val() == null || $("#search-condition option:selected").val() == '') {
			alert("검색조건을 선택해주세요.");	
			return false;
		}
		if($("#search-text").val() == null || $("#search-text").val() == '') {
			alert("검색어를 입력해주세요.");	
			return false;
		}
		
		filterRev();
	})
	
	// 페이지 이동처리 
	$("#pagination").on('click', '#pre-page', function() {
		let currentPage = $(".pagination .active").attr("data-tag");
		console.log(currentPage-1);
		filterRev(currentPage - 1); 
	})
	
	$("#pagination").on('click', '#next-page', function() {
		let currentPage = $(".pagination .active").attr("data-tag");
		console.log(currentPage-0+1);
		filterRev(currentPage - 0 + 1); 
	})
	
	$("#pagination").on('click', '.current-page', function() {
		let currentPage = $(this).attr("data-tag");
		console.log(currentPage);
		filterRev(currentPage); 
	})
	
	// 모달창 닫힐때 수정내역 반영한 리스트 재노출
	$('#room-rev-detail').on('hidden.bs.modal', function () {
		let currentPage = $(".pagination .active").attr("data-tag");
		filterRev(currentPage); 
	})
	
	// 예약상세정보 중 날짜 클릭시 기 예약된 날짜 선택 불가
	let	flat;
	let input = $("#checkin-modal");
	let periods = new Array();
	let periodsQuery = '';
	
	$('#room-rev-detail').on('click', '#checkin-modal', function() {
		let roomRevNo= parseInt($("#revNo-modal").val());
		checkPeriod(roomRevNo);	
	})
	
	// mealTime에 따른 방문시간 변경
	$("#mealTime-modal").on('change', function() {
		
		let $mealTime = $("#mealTime-modal").val();
		let $visitTime = $("#timeOption-modal").empty();
		
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
	
	// isAllergy에 따른 체크박스 노출,비노출
	$("#isAllergy-modal").on('change', function() {
		let isAllergy = $("#isAllergy-modal").val();
		
		if (isAllergy == 'Y') {
			$("#typeView").removeClass("d-none");
		} else {
			$("#typeView").addClass("d-none");
		}
	})
	
	// 모달창 숙박기간 클릭 시 ajax로 서버에서 해당 room_id의 예약정보 중 체크인,체크아웃 기간을 가져와 선택불가 상태로 만든다.
	function checkPeriod(revNo) {
		let queryString = "revNo=" + revNo; 
		
		// getJSON(1)과 ajax차이(2) : 1은 무조건 비동기방식으로 json을 가져옴 2는 사용자에따라 설정을 추가,변경 할수 있음 
		$.ajax({
			async: false,
			type: 'get',
			url: "/admin/roomrev/checkPeriod", 
			data: queryString, 
			success: function(results) {
		
				$.each(results, function(index, result) {
					periods.push(result.checkinTime);
					periods.push(result.checkoutTime);
				})
			}
		});
	 	console.log(periods.length);
		
		let disabled = [];
		for(let i=0; i<periods.length; i+=2) {
			disabled.push({from: periods[i], to: periods[i+1]});
			console.log(periodsQuery);
		}
		
		flat = 	flatpickr(input, {
			minDate: "today",
			mode: "range",
			locale: "ko",
			dateFormat:"Y-m-d",
			disable: disabled
		}); 
		flat.open();
		
		periods=[];
	}
	
	// 모달창 상세정보 수정
	function modalDetailUpdate(revNo) {
		let queryString = $("#detail-modal-form").serialize();
		$.post("/admin/roomrev/updateRoomRevDetail", queryString)
	}
	
	// 모달창에 예약상세정보 넣기
	let roomRevDetail= new bootstrap.Modal($("#room-rev-detail"), {keyboard: false})
	function modalDetail(revNo) {
		let queryString = "revNo=" + revNo;
		
		$.getJSON("/admin/diningrev/detail", queryString, function(results) {
			
			let result = results.rtRev
			let allergySelected = results.allergySelected
			
			$("#revNo-modal").attr('value', result.no);
			$("#dnNo-modal").attr('value', result.dn.dnCategory.name);
			$("#name-modal").attr('value', result.user.name);
			$("#adult-modal").attr('value', result.adult);
			$("#child-modal").attr('value', result.child);
			$("#baby-modal").attr('value', result.baby);
			$("#visit-modal").attr('value', result.visitDate);
			
			let mealTime = result.mealTime;
			// 셀렉트박스 옵션값 모두 가져오기
			let mealTimes = $('#mealTime-modal').find('option').map(function() {return $(this).val();}).get();
			$.each(mealTimes, function(index, time) {
				if (mealTime == time) {
					$("#mealTime-modal option:eq("+index+")").prop('selected', true);
				}
			})
	
			let $visitTime = $("#timeOption-modal").empty();
			
			if (mealTime == 'lunch' || mealTime == 'blunch') {
				let content ='';
				content += '<option value="12:00">12:00</option>';
				content += '<option value="12:30">12:30</option>';
				content += '<option value="13:00">13:00</option>';
				
				$visitTime.append(content);
			
			} else if (mealTime == 'dinner') {
				let content ='';
				content += '<option value="17:30">17:30</option>';
				content += '<option value="18:00">18:00</option>';
				content += '<option value="18:30">18:30</option>';
				content += '<option value="12:30">19:00</option>';
				
				$visitTime.append(content);
			}
			
			let visitTime = result.visitTime;
			let visitTimes = $('#timeOption-modal').find('option').map(function() {return $(this).val();}).get();
			$.each(visitTimes, function(index, time) {
				if (visitTime == time) {
					$("#timeOption-modal option:eq("+index+")").prop('selected', true);
				}
			})
			
			let isAllergy = result.isAllergy;
			let isAllergys = $('#isAllergy-modal option').map(function() {return $(this).val();}).get();
			$.each(isAllergys, function(index, option) {
				if (isAllergy == option) {
					$("#isAllergy-modal option:eq("+index+")").prop('selected', true);
				}
			})
			
			if (isAllergy == 'Y') {
				$("#typeView").removeClass("d-none");
			} else {
				$("#typeView").addClass("d-none");
			}
			
			
			let allergy = [];
			$.each(allergySelected, function(index, allergyNos) {
				allergy.push(allergyNos.allergyNo);
			})

			<!------------------ 강사님께 질문 -------------------->
			$('input:checkbox[name="allergyNos"]').prop('checked', false);
			$('input:checkbox[name="allergyNos"]').each(function(i) {
				for(let i=0; i<allergy.length; i++) {
					if ($(this).val() == allergy[i]) {
						$(this).prop('checked', true);
					}
				}
			});
			
			$("#etcAllergy-modal").val(result.etcAllergy);
				
			let status = result.status;
			let statusOptions = $('#status-modal').find('option').map(function() {return $(this).val();}).get();
			$.each(statusOptions, function(index, option) {
				if (status == option) {
					$("#status-modal option:eq("+index+")").prop('selected', true);
				}
			})
			
			$("#request-modal").val(result.request);
		}) 
		roomRevDetail.show();
		
	}
	
	// 예약정보 조건별 조회
	function filterRev(page) {
		let queryString = $("#filter-rev-form").serialize();
		
		let pageNo = page || 1;
		queryString += "&page=" + pageNo;
		
		let $body = $("#body").empty();
		let $pagination = $("#pagination").empty();
		
		$.getJSON("/admin/diningrev/filter", queryString, function(results) {
			if (results.length == 0) {
				let content =
				   `<div class="col-12">
						<p class="text-center">검색결과가 존재하지 않습니다.</p>
					</div>`;
					$body.append(content);
			} else {
				let rtRev = results.rtRev;
				let pagination = results.pagination;
				
				$.each(rtRev, function(index, rev) {
					let content = '';
						content +='<tr>';
						content +='	 <th scope="row">';
						content +='		 <label class="form-check-label" for="flexCheckDefault">'; 
						content +='		 	 <input type="checkbox" name="checkedNo" value="'+ rev.no +'" style="accent-color: RGBa(255, 56, 92, 0.1); zoom:1.3;">';
						content +='		 </label>';
						content +='	 </th>';
						content +='	 <td>'+ rev.no +'</td>';
						content +='	 <td><a href="">'+ rev.user.name +'</a><small class="d-block">'+ rev.user.tel +'</small></td>';
						content +='	 <td>'+ rev.dn.location.name +'</td>';				
						content +='	 <td>'+ rev.dn.dnCategory.name +'</td>';
						
						if (rev.status == 'O') {
							content +='	 <td style="color:RGBa(255, 56, 92, 0.7); font-weight:bold;">임박</td>';							
						} else if (rev.status == 'I'){						
							content +='	 <td style="color:RGBA(0, 0, 255, 0.6); font-weight:bold;">방문</td>';
						} else if (rev.status == 'D'){						
							content +='	 <td>예약취소</td>';
						} else {						
							content +='	 <td style="color:RGBa(0, 128, 128, 0.7); font-weight:bold;">예약중</td>';
						}
						
						if (rev.isAllergy == 'Y') {
							content +='	 <td style="color:RGB(128, 0, 0); font-weight:bold;">있음</td>';	
						} else if (rev.isAllergy == 'N') {
							content +='	 <td>없음</td>';
						}
						content +='	 <td>'+ rev.visitDate +'</td>';
						content +='	 <td><button type="button" class="btn btn-table" id="btn-table-'+rev.no+'" data-tag="'+rev.no+'"><i class="bi bi-box-arrow-in-right"></i></button></td>';
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
	// 임시 시간남으면 ajax로 돌리자
	$("#visit-modal").datepicker({
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
        /* ,beforeShowDay: disableAllTheseDays
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

	    } */
	    });                    

	/* function disableAllTheseDays(date) {
	    var m = date.getMonth(), d = date.getDate(), y = date.getFullYear();
	    for (i = 0; i < dates.length; i++) {
	        if($.inArray(y + '-' +(m+1) + '-' + d, dates) != -1) {
	            return [false];
	        }
	    }
	    return [true];
	} */ 
    $('#visit-modal').datepicker('setDate', '0'); 
	
	// 체크인 기간조회(필터)
	$("#datepicker").flatpickr({
		mode: "range",
		locale: "ko"
		});
})
</script>
</body>
</html>