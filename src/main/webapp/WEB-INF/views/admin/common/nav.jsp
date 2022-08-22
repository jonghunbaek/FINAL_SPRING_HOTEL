<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
<link href="${pageContext.request.contextPath}/resources/admincss/dashboard.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<style>
	
	.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

	#sidebarMenu li:hover {color: black;}
	#sidebarMenu a {text-decoration: none;}
	.position-sticky .sub a{font-size:12px; color:darkgray !important;}
	.position-sticky .sub-list {display:none;}
	
	#rev-list li {list-style-type: none;}
	#sell-list li {list-style-type: none;}
	#hotel-list li {list-style-type: none;}
	#emp-list li {list-style-type: none;}
	
	}

</style>
<title>Insert title here</title>
</head>

<body>
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="main">Spring Hotel Admin</a>
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3" href="#"><span data-feather="settings"></span>개인설정</a>
    </div>
  </div>
</header>
<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse" style="background-color: RGBa(226, 226, 226,0.8) !important;">
      <div class="position-sticky pt-3">
        <ul class="nav flex-column">
        <c:if test="${not empty LOGIN_ADMIN}">
          <li class="nav-item">
            <a class="nav-link"> ${LOGIN_ADMIN.name}님 환영합니다.</a>
          </li>
        </c:if>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="main" style="font-weight:bold; font-size:16px; color:black; text-decoration: none;">
              <span data-feather="home"></span>
              메인페이지
            </a>
          </li>
          <li class="nav-item" id="room">
            <a class="nav-link" href="#" role="button" id="rev" style="font-weight:bold; font-size:16px; color:black; text-decoration: none;">
              <span data-feather="monitor"></span>
              예약현황
            </a>
            <ul class="sub-list" id="rev-list">
	            <li class="sub"><a href="roomrev"><span data-feather="chevron-right"></span>객실</a></li>
	            <li class="sub"><a href=""><span data-feather="chevron-right"></span>레스토랑</a></li>
            </ul>
          </li>
          <li class="nav-item" id="hotel">
            <a class="nav-link" href="#" role="button" id="rev" style="font-weight:bold; font-size:16px; color:black; text-decoration: none;">
              <i class="bi bi-building"></i>
              &nbsp;호텔관리
            </a>
            <ul class="sub-list" id="hotel-list">
	            <li class="sub"><a href="room"><span data-feather="chevron-right"></span>객실</a></li>
	            <li class="sub"><a href=""><span data-feather="chevron-right"></span>레스토랑</a></li>
	            <!-- <li class="sub"><a href=""><span data-feather="chevron-right"></span>부대시설</a></li> -->
            </ul>
          </li>
          <li class="nav-item" id="inquiry">
            <a class="nav-link" href="inquiry" role="button" id="rev" style="font-weight:bold; font-size:16px; color:black; text-decoration: none;">
              <span data-feather="clipboard"></span>
              고객문의 관리
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" role="button" id="emp" style="font-weight:bold; font-size:16px; color:black; text-decoration: none;">
              <span data-feather="user"></span>
              직원관리 시스템
            </a>
            <ul class="sub-list" id="emp-list">
	            <li class="sub"><a href="register"><span data-feather="chevron-right"></span>신규 직원 등록</a></li>
	            <li class="sub"><a href=""><span data-feather="chevron-right"></span>주소록</a></li>
	            <!-- <li class="sub"><a href=""><span data-feather="chevron-right"></span>직원 근태 관리</a></li> -->
            </ul>
          </li>
          <!-- <li class="nav-item">
            <a class="nav-link" href="#" role="button" id="sell">
              <span data-feather="bar-chart-2"></span>
              매출현황
            </a>
           	<ul class="sub-list" id="sell-list">
              	<li class="sub"><a href=""><span data-feather="chevron-right"></span>지역별</a></li>
              	<li class="sub"><a href=""><span data-feather="chevron-right"></span>기간별</a></li>
            </ul>
          </li> -->
<!--           <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="calendar"></span>
              캘린더(근무스케쥴표)
            </a>
          </li> -->
  <!--         <li class="nav-item">
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
          </li> -->
        </ul>

        <!-- <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>관리자전용(</span>
          <a class="link-secondary" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link" href="#" role="button" id="emp">
              <span data-feather="user"></span>
              직원관리 시스템
            </a>
            <ul class="sub-list" id="emp-list">
	            <li class="sub"><a href="register"><span data-feather="chevron-right"></span>신규 직원 등록</a></li>
	            <li class="sub"><a href=""><span data-feather="chevron-right"></span>직원 스케쥴 관리</a></li>
	            <li class="sub"><a href=""><span data-feather="chevron-right"></span>직원 근태 관리</a></li>
            </ul>
          </li> -->
 <!--          <li class="nav-item">
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
          </li> -->
        </ul>
      </div>
    </nav>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/admincss/dashboard.js"></script>
<script type="text/javascript">
$(function() {
	
	$("#rev").click(function() {
		$("#rev-list").slideToggle();
	})
	
	$("#sell").click(function() {
		$("#sell-list").slideToggle();
	})
	
	$("#hotel").click(function() {
		$("#hotel-list").slideToggle();
	})
	
	$("#emp").click(function() {
		$("#emp-list").slideToggle();
	})
	
})
</script>
</body>
</html>