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

<!-- daterangepicker 라이브러리 -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
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
	.btn {
		font-size:25px;
		color: rgba(30, 22, 54, 0.6);
		width: 60px;
		margin:-10px;
	}
	
	.btn:hover {
		color: rgba(255, 255, 255, 1);
		box-shadow: rgba(30, 22, 54, 0.4) 0 80px 0px 2px inset;
	}  
	
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
	
	/* #search-condition {
		font-weight:bold;
		font-size:15px;
		color: rgba(30, 22, 54, 0.6);
		box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
		height: 100%;
		background-color:rgba(220, 220, 220, 0.5);
	} */
	
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
	
	#btn-table {
		margin:-10px;
		font-size:25px;
		width: 60%;
		height: 40%;
	}

</style>
<title>객실 예약현황</title>
</head>
<body>
<c:set var="menu" value="roomrev"/>
<%@ include file="../common/nav.jsp" %>
<div class="container-fluid">
	<div class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mt-3 pb-3">
		<p id="keymap">
			<span data-feather="monitor"></span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span data-feather="home"></span>
			&nbsp;<strong style="font-size:13px;">객실 예약현황</strong>
		</p>
		<!-- 조건설정하는 헤드부분 -->
		<div class="row" id="title">
			<div class="col-1">
				<button class="btn" type="button" id="delete" name="delete">선택삭제</button>
			</div> 
			<div class="col-1">
				<button class="btn" id="add" name="delete">예약추가</button>
			</div>
			<div class="col-9">
			</div>
			<div class="col-1 dropdown" id="filter">
			  <button class="btn dropdown-toggle" type="button" id="dropdownMenuClickableInside" data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false">
			    <i class="bi bi-gear"></i>
			  </button>
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
			  	<input type="hidden" name="page" value="" />
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
						<label for="revStatus-field" class="form-label">예약 상태</label>
						<select class="form-select form-select-sm" name="revStatus">
							<option value="" selected disabled>=====</option>
							<option value="O" >임박</option>
							<option value="I">체크인</option>
							<option value="T">체크아웃</option>
							<option value="R">예약중</option>
							<option value="D">예약취소</option>
						</select>
					</div>
			  	</div><hr/>
			  	<div class="row justify-content-center gy-1 px-3" id="filter-second">
			  		<div class="col" id="filter-second-1">
			  			<label for="checkin-field" class="form-label">체크인 기간</label>
			  			<input type="text" class="form-control" id="datepicker" name="checkinPeriod" />
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
			  			<label for="checkout-field" class="form-label">체크인순</label>
			  			<div class="row">
			  				<input type="radio" class="btn-check" name="sortCheckin" id="sort-checkin-desc" autocomplete="off" value="desc">
							<label class="btn" for="sort-checkin-desc"><i class="bi bi-sort-down-alt"></i></label>
							<input type="radio" class="btn-check" name="sortCheckin" id="sort-checkin-asc" autocomplete="off" value="asc">
							<label class="btn" for="sort-checkin-asc"><i class="bi bi-sort-up"></i></label>
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
								<th scope="col">객실번호(타입)</th>
								<th scope="col">예약상태</th>
								<th scope="col">체크인</th>
								<th scope="col">체크아웃</th>
								<th scope="col">예약상세</th>
							</tr>
						</thead>
						<tbody id="body">
							<c:forEach var="roomRev" items="${roomRevs }">
								<tr id="${roomRev.no }">
									<th scope="row">
										<label class="form-check-label" for="flexCheckDefault">
											<input type="checkbox" style="accent-color: RGBa(255, 56, 92, 0.1); zoom:1.3;">
										</label>
									</th>
									<td>${roomRev.no }</td>
									<td><a href="">${roomRev.user.name }</a><small class="d-block">${roomRev.user.tel }</small></td>
									<td>${roomRev.room.location.name }</td>				
									<td>${roomRev.room.no }(${roomRev.room.roomCategory.name })</td>
									<td>${roomRev.status }</td>
									<td><fmt:formatDate value="${roomRev.checkinTime }" pattern="yyyy-MM-dd" /></td>
									<td><fmt:formatDate value="${roomRev.checkoutTime }" pattern="yyyy-MM-dd" /></td>
									<td><a href="main" class="btn" id="btn-table"><i class="bi bi-box-arrow-in-right"></i></a></td>
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
				    <li class="page-item" id>
				      <a class="page-link ${pagination.currentPage eq '1' ? 'disabled' : '' }" href="roomrev?page=${pagination.currentPage - 1}" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <c:forEach var="pageNo" begin="${pagination.beginPage}" end="${pagination.endPage}">		
					    <li class="page-item ${pagination.currentPage eq pageNo ? 'active' : '' }" id="page-${pageNo }" ><a class="page-link" href="roomrev?page=${pageNo }">${pageNo }</a></li>
				    </c:forEach>
				    <li class="page-item">
				      <a class="page-link ${pagination.currentPage eq pagination.totalPages ? 'disabled' : '' }" href="roomrev?page=${pagination.currentPage + 1}" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
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
	
	$("#btn-setting").click(function() {
		filterRev();
	})
	
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
	
	function filterRev() {
		let queryString = $("#filter-rev-form").serialize();
		let $body = $("#body").empty();
		let $pagination = $("#pagination").empty();
		
		$.getJSON("/admin/roomrev/filter", queryString, function(results) {
			if (results.length == 0) {
				let content =
				   `<div class="col-12">
						<p class="text-center">검색결과가 존재하지 않습니다.</p>
					</div>`;
					$body.append(content);
			} else {
				let roomRev = results.roomRev;
				let pagination = results.pagination;
				
				$.each(roomRev, function(index, rev) {
					let content = '';
						content +='<tr>';
						content +='	 <th scope="row">';
						content +='		 <label class="control control--checkbox">'; 
						content +='		 	 <input type="checkbox" />';
						content +='		 	 <div class="control__indicator"></div>';
						content +='		 </label>';
						content +='	 </th>';
						content +='	 <td>'+ rev.no +'</td>';
						content +='	 <td><a href="">'+ rev.user.name +'</a><small class="d-block">'+ rev.user.tel +'</small></td>';
						content +='	 <td>'+ rev.room.location.name +'</td>';				
						content +='	 <td>'+ rev.room.no +'('+ rev.room.roomCategory.name +')</td>';
						content +='	 <td>'+ rev.status +'</td>';
						content +='	 <td>'+ rev.checkinTime +'</td>';
						content +='	 <td>'+ rev.checkoutTime +'</td>';
						content +='	 <td><a href="main" class="btn" id="btn-table"><i class="bi bi-box-arrow-in-right"></i></a></td>';
						content +='</tr>';
						
					$body.append(content);
				})
				let content = '';
					content +='<div class="col-3">';
					content +='	<nav aria-label="Page navigation example">';
					content +='    	<ul class="pagination">';
					content +='        	<li class="page-item" id>';
					content +='      			<a class="page-link '+ (pagination.currentPage == '1' ? 'disabled' : '') +'" href="" aria-label="Previous">';
					content +='       				 <span aria-hidden="true">&laquo;</span>';
					content +='     			</a>';
					content +='    		</li>';
					content +='    		<c:forEach var="pageNo" begin="${pagination.beginPage}" end="${pagination.endPage}">';		
					content +='	 		   <li class="page-item ${pagination.currentPage eq pageNo ? 'active' : '' }" id="page-${pageNo }" ><a class="page-link" href="roomrev?page=${pageNo }">${pageNo }</a></li>';
					content +='   			</c:forEach>';
					content +='    		<li class="page-item">';
					content +='     			<a class="page-link ${pagination.currentPage eq pagination.totalPages ? 'disabled' : '' }" href="" aria-label="Next">';
					content +='        			 <span aria-hidden="true">&raquo;</span>';
					content +='      			</a>';
					content +='    		</li>';
					content +='  		</ul>';
					content +='	</nav>';
					content +='</div>';
					
				$pagination.append(content);
			}
		})
	}
	
	/* 체크인 기간 */
	$('#datepicker').daterangepicker({
	    "locale": {
	        "format": "YYYY-MM-DD",
	        "separator": " ~ ",
	        "applyLabel": "확인",
	        "cancelLabel": "취소",
	        "fromLabel": "From",
	        "toLabel": "To",
	        "customRangeLabel": "Custom",
	        "weekLabel": "W",
	        "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
	        "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
	    },
	    "startDate": new Date(),
	    "endDate": new Date(),
	    "drops": "auto" 
	}, function (start, end, label) {
	    console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
	});
	
})
</script>
</body>
</html>