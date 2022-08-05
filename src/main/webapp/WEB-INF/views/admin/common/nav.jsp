<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
	#sidebarMenu li:hover {color: black;}
	#sidebarMenu a {text-decoration: none;}
	.position-sticky .sub a{font-size:12px; color:darkgray !important;}
	.position-sticky .sub-list {display:none;}
	
	#rev-list li {list-style-type: none;}
	#sell-list li {list-style-type: none;}
	#emp-list li {list-style-type: none;}

</style>
<title>Insert title here</title>
</head>
<body>
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">Spring Hotel(직원)</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3" href="#"><span data-feather="settings"></span>개인설정</a>
    </div>
  </div>
</header>
<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="main">
              <span data-feather="home"></span>
              메인페이지
            </a>
          </li>
          <li class="nav-item" id="room">
            <a class="nav-link" href="#" role="button" id="rev">
              <span data-feather="monitor"></span>
              예약현황
            </a>
            <ul class="sub-list" id="rev-list">
	            <li class="sub"><a href=""><span data-feather="chevron-right"></span>객실</a></li>
	            <li class="sub"><a href=""><span data-feather="chevron-right"></span>레스토랑</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" role="button" id="sell">
              <span data-feather="bar-chart-2"></span>
              매출현황
            </a>
           	<ul class="sub-list" id="sell-list">
              	<li class="sub"><a href=""><span data-feather="chevron-right"></span>총매출</a></li>
              	<li class="sub"><a href=""><span data-feather="chevron-right"></span>서울점</a></li>
              	<li class="sub"><a href=""><span data-feather="chevron-right"></span>제주점</a></li>
              	<li class="sub"><a href=""><span data-feather="chevron-right"></span>부산점</a></li>
              	<li class="sub"><a href=""><span data-feather="chevron-right"></span>광주점</a></li>
              	<li class="sub"><a href=""><span data-feather="chevron-right"></span>강릉점</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="calendar"></span>
              캘린더(근무스케쥴표)
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="edit"></span>
              todo
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="clock"></span>
              예약(사내 차량, 회의실 등)
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="clipboard"></span>
              사내게시판
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="mail"></span>
              전자메일
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="message-square"></span>
              메신저
            </a>
          </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>관리자전용</span>
          <a class="link-secondary" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link" href="#" role="button" id="emp">
              <span data-feather="file-text"></span>
              직원관리 시스템
            </a>
            <ul class="sub-list" id="emp-list">
	            <li class="sub"><a href=""><span data-feather="chevron-right"></span>새 직원 등록</a></li>
	            <li class="sub"><a href=""><span data-feather="chevron-right"></span>직원 스케쥴 관리</a></li>
	            <li class="sub"><a href=""><span data-feather="chevron-right"></span>직원 근태 관리</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              전자결재
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              보고서 결재
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Social engagement
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Year-end sale
            </a>
          </li>
        </ul>
      </div>
    </nav>
  </div>
</div>
<script type="text/javascript">
$(function() {
	
	$("#rev").click(function() {
		$("#rev-list").slideToggle('slow');
	})
	
	$("#sell").click(function() {
		$("#sell-list").slideToggle('slow');
	})
	
	$("#emp").click(function() {
		$("#emp-list").slideToggle('slow');
	})
	
})
</script>
</body>
</html>