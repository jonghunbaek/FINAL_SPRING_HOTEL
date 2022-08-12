<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/room/roomDetail.css" rel="stylesheet">
<!-- Link Swiper'-->
<link href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<title>Spring Hotel</title>
</head>
<body>
<c:set var="menu" value="roomDetail"/>
<%@ include file="../common/nav.jsp" %>
<div class="contain">
<!-- 전체 객실 사이드메뉴 시작 -->
	<div class="container" id="container"> 
		<div class="side-nav">
			<div class="r-title">
				<h5>객실</h5>
					<ul class="menu">
						<li class="m1-first">
							<a>
								<span>스탠다드</span>
							</a>
							<ul class="st-menu">
								<li class="roomt"><a href=""><span>디럭스</span></a></li>
								<li class="room"><a href=""><span>비즈니스 디럭스</span></a></li>
								<li class="room"><a href=""><span>그랜드 코너 디럭스</span></a></li>
							</ul>
						</li>
						<li class="m2">
							<a>
								<span>이그제큐티브</span>
							</a>
							<ul class="st-menu">
								<li class="roomt"><a href=""><span>이그제큐티브 비즈니스 디럭스</span></a></li>
								<li class="room"><a href=""><span>이그제큐티브 그랜드 디럭스</span></a></li>
							</ul>
						</li>
						<li class="m3">
							<a>
								<span>스위트</span>
							</a>
							<ul class="st-menu">
								<li class="roomt"><a href=""><span>수페리어 스위트</span></a></li>
								<li class="room"><a href=""><span>코리안 스위트</span></a></li>
								<li class="room"><a href=""><span>코너 스위트</span></a></li>
								<li class="room"><a href=""><span>프리미어 스위트</span></a></li>
								<li class="room"><a href=""><span>로열 스위트</span></a></li>
								<li class="room"><a href=""><span>신라 스위트</span></a></li>
								<li class="room"><a href=""><span>프레지덴셜 스위트</span></a></li>
							</ul>
						</li>
						<li class="m4-last" id="lounge">
							<a>
								<span>더 이그제큐티브 라운지</span>
							</a>
						</li>
					</ul>
					<div class="all-view">
						<a href="#">	
							<span id="all-view">전체 객실 보기</span>
						</a>
					</div>
			</div>
		</div>
		<!-- 메인 컨텐츠 박스 -->
		<div class="main" id="main">
		<!-- 객실 detail 시작 -->
			<div class="main-contents">
				<!-- 페이지 위치 -->
					<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
					  <ol class="location-bc">
					    <li class="breadcrumb-item"><img alt="" src="../resources/images/room/detail/location.gif"></li>
					    <li class="breadcrumb-item">객실</li>
					    <li class="breadcrumb-item">스탠다드</li>
					    <li class="breadcrumb-item active" aria-current="page"><a href="#">디럭스</a></li>
					  </ol>
					</nav>
				<!-- 객실 이름 -->
					<div class="main-title">
						디럭스
					</div>
			<!-- 슬라이드 -->
			<div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper mySwiper2">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img src="../resources/images/room/detail/d1.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/room/detail/d2.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/room/detail/d3.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/room/detail/d4.jpg" />
        </div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img src="../resources/images/room/detail/d1.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/room/detail/d2.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/room/detail/d3.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="../resources/images/room/detail/d4.jpg" />
        </div>
      </div>
    </div>
				
				<!-- 이메일 / 인쇄하기 <<< 나중에 -->
				<div class="email-print"><img alt="" src="#">이메일 인쇄하기 </div>
				
				<!-- 아래 세로 박스 -->
				<div class="btm-detail">
					<!-- 세로 detail 1 (left) -->
					<div class="detail1">
						<img src="../resources/images/room/detail/Room_detail.jpg" />
						<div class="amenity">
							<a href="#"> <!-- 어메니티 모달 -->
								<span id="amenity-box">객실 어메니티 보기</span>
							</a>
						</div>
						
					
						<!-- info -->
						<div class="room-info-set">
							<div class="room-info-room">
								<div class="info-title">객실 이용</div>
								<div class="info-content">내용</div>
							</div>
							<div class="room-info-etc">
								<div class="info-title1">부대 시설</div>
								<div class="info-content">내용</div>
							</div>
							
							<div class="room-info-service">
								<div class="info-title">룸서비스</div>
								<div class="info-content">내용</div>
							</div>
						</div>
						<!-- SNS -->
						<div class="sns">
							<img  src="../resources/images/room/detail/bgSns.gif">
						</div>
					</div>
					<!-- 세로 detail 2 (right) -->
					<div class="detail2">
						<!-- 버튼 3 <<<< 모달창 -->
							<div class="btn-set">
								<div class="btn-p">
									<a href="">도면보기</a>
								</div>
								<div class="btn-q">
									<a href="">문의하기</a>
								</div>
								<div class="btn-r">
									<a href="">예약하기</a>
								</div>
							</div>
						<!-- package << 나중에 -->
						<img class="package" alt="package" src="../resources/images/room/detail/packageTest.jpg">
						
						<!-- hotel info yellow-box -->
						<div class="room-info-side">
							<div class="side-title">
							Hotel Info.
							</div>
							<div class="info-menu">breakfast</div>
							<div class="info-menu">check-in/out</div>
							<div class="info-menu">cancel</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
		</div>
	</div>
	</div>
<%@ include file="../common/footer.jsp" %>
    <script>
    <!-- Swiper -->
      var swiper = new Swiper(".mySwiper", {
        loop: true,
        spaceBetween: 10,
        slidesPerView: 4,
        freeMode: true,
        watchSlidesProgress: true,
      });
      var swiper2 = new Swiper(".mySwiper2", {
        loop: true,
        spaceBetween: 10,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        thumbs: {
          swiper: swiper,
        },
      });
    </script>
</body>
</html>